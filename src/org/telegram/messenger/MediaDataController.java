package org.telegram.messenger;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import android.util.Pair;
import android.util.SparseArray;
import android.widget.FrameLayout;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import androidx.core.content.pm.ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0;
import androidx.core.content.pm.ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1;
import androidx.core.graphics.drawable.IconCompat;
import com.android.billingclient.api.ProductDetails;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.exteragram.messenger.utils.ui.UIUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;
import okio.Buffer$$ExternalSyntheticBUOutline4;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.CodeHighlighting;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationBadge;
import org.telegram.messenger.Timer;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.ringtone.RingtoneDataStore;
import org.telegram.messenger.ringtone.RingtoneUploader;
import org.telegram.messenger.utils.EphemeralMessagesHelper;
import org.telegram.messenger.utils.tlutils.AmountUtils$Amount;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_bots;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.tgnet.tl.TL_update;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.EmojiThemes;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.ChatThemeBottomSheet;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.FormattedDateSpan;
import org.telegram.ui.Components.QuoteSpan;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.StickerSetBulletinLayout;
import org.telegram.ui.Components.StickersArchiveAlert;
import org.telegram.ui.Components.TextStyleSpan;
import org.telegram.ui.Components.URLSpanReplacement;
import org.telegram.ui.Components.URLSpanUserMention;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.StoriesStorage;

/* JADX INFO: loaded from: classes.dex */
public class MediaDataController extends BaseController {
    public static final String ATTACH_MENU_BOT_ANIMATED_ICON_KEY = "android_animated";
    public static final String ATTACH_MENU_BOT_ANIMATED_ICON_KEY_2 = "android_active_animated";
    public static final String ATTACH_MENU_BOT_COLOR_DARK_ICON = "dark_icon";
    public static final String ATTACH_MENU_BOT_COLOR_DARK_TEXT = "dark_text";
    public static final String ATTACH_MENU_BOT_COLOR_LIGHT_ICON = "light_icon";
    public static final String ATTACH_MENU_BOT_COLOR_LIGHT_TEXT = "light_text";
    public static final String ATTACH_MENU_BOT_PLACEHOLDER_STATIC_KEY = "placeholder_static";
    public static final String ATTACH_MENU_BOT_SIDE_MENU = "android_side_menu_static";
    public static final String ATTACH_MENU_BOT_SIDE_MENU_ICON_KEY = "android_side_menu_static";
    public static final String ATTACH_MENU_BOT_STATIC_ICON_KEY = "default_static";
    public static final int MAX_LINKS_COUNT = 250;
    public static final int MAX_STYLE_RUNS_COUNT = 1000;
    public static final int MEDIA_AUDIO = 2;
    public static final int MEDIA_FILE = 1;
    public static final int MEDIA_GIF = 5;
    public static final int MEDIA_MUSIC = 4;
    public static final int MEDIA_PHOTOS_ONLY = 6;
    public static final int MEDIA_PHOTOVIDEO = 0;
    public static final int MEDIA_POLL = 8;
    public static final int MEDIA_TYPES_COUNT = 9;
    public static final int MEDIA_URL = 3;
    public static final int MEDIA_VIDEOS_ONLY = 7;
    public static int SHORTCUT_TYPE_ATTACHED_BOT = 0;
    public static int SHORTCUT_TYPE_USER_OR_CHAT = 0;
    private static final int TOP_PEER_TYPE_BOT_GUEST = 3;
    private static final int TOP_PEER_TYPE_BOT_INLINE = 1;
    public static final int TYPE_EMOJI = 4;
    public static final int TYPE_EMOJIPACKS = 5;
    public static final int TYPE_FAVE = 2;
    public static final int TYPE_FEATURED = 3;
    public static final int TYPE_FEATURED_EMOJIPACKS = 6;
    public static final int TYPE_GREETINGS = 3;
    public static final int TYPE_IMAGE = 0;
    public static final int TYPE_MASK = 1;
    public static final int TYPE_PREMIUM_STICKERS = 7;
    private static RectF bitmapRect;
    private static Comparator<TLRPC.MessageEntity> entityComparator;
    private static Paint erasePaint;
    private static Paint roundPaint;
    private static Path roundPath;
    private HashMap<String, ArrayList<TLRPC.Document>> allStickers;
    private HashMap<String, ArrayList<TLRPC.Document>> allStickersFeatured;
    private int[] archivedStickersCount;
    private TLRPC.TL_attachMenuBots attachMenuBots;
    private LongSparseArray<ArrayList<TLRPC.Message>> botDialogKeyboards;
    private HashMap<String, TL_bots.BotInfo> botInfos;
    private HashMap<MessagesStorage.TopicKey, TLRPC.Message> botKeyboards;
    private LongSparseArray<MessagesStorage.TopicKey> botKeyboardsByMids;
    private boolean cleanedupStickerSetCache;
    private HashMap<String, Boolean> currentFetchingEmoji;
    public final ArrayList<ChatThemeBottomSheet.ChatThemeItem> defaultEmojiThemes;
    private ArrayList<MessageObject> deletedFromResultMessages;
    private LongSparseArray<String> diceEmojiStickerSetsById;
    private HashMap<String, TLRPC.TL_messages_stickerSet> diceStickerSetsByEmoji;
    private String doubleTapReaction;
    private LongSparseArray<LongSparseArray<TLRPC.Message>> draftMessages;
    private SharedPreferences draftPreferences;
    public LongSparseArray<DraftVoice> draftVoices;
    private boolean draftVoicesLoaded;
    private LongSparseArray<LongSparseArray<TLRPC.DraftMessage>> drafts;
    private LongSparseArray<Integer> draftsFolderIds;
    private ArrayList<TLRPC.EmojiStatus>[] emojiStatuses;
    private Long[] emojiStatusesFetchDate;
    private boolean[] emojiStatusesFetching;
    private boolean[] emojiStatusesFromCacheFetched;
    private long[] emojiStatusesHash;
    private List<TLRPC.TL_availableReaction> enabledReactionsList;
    private ArrayList<TLRPC.StickerSetCovered>[] featuredStickerSets;
    private LongSparseArray<TLRPC.StickerSetCovered>[] featuredStickerSetsById;
    private boolean[] featuredStickersLoaded;
    private HashSet<String> fetchedEmoji;
    private int[] filteredMessagesSearchCount;
    private TLRPC.Document greetingsSticker;
    public TLRPC.TL_emojiList groupAvatarConstructorDefault;
    private LongSparseArray<TLRPC.TL_messages_stickerSet> groupStickerSets;
    public ArrayList<TLRPC.TL_topPeer> guestBots;
    public ArrayList<TLRPC.TL_topPeer> hints;
    private boolean inTransaction;
    public ArrayList<TLRPC.TL_topPeer> inlineBots;
    private ArrayList<Long> installedForceStickerSetsById;
    private LongSparseArray<TLRPC.TL_messages_stickerSet> installedStickerSetsById;
    private boolean isLoadingMenuBots;
    private boolean isLoadingPremiumPromo;
    private boolean isLoadingReactions;
    private long lastDialogId;
    private int lastGuid;
    private long lastMergeDialogId;
    private ReactionsLayoutInBubble.VisibleReaction lastReaction;
    private long lastReplyMessageId;
    private int lastReqId;
    private int lastReturnedNum;
    private TLRPC.Chat lastSearchChat;
    private String lastSearchQuery;
    private TLRPC.User lastSearchUser;
    private int[] loadDate;
    private int[] loadFeaturedDate;
    private long[] loadFeaturedHash;
    public boolean loadFeaturedPremium;
    private long[] loadHash;
    boolean loaded;
    private boolean loadedPredirectedSearchLocal;
    boolean loadedRecentReactions;
    boolean loadedSavedReactions;
    boolean loading;
    private boolean loadingDefaultTopicIcons;
    private HashSet<String> loadingDiceStickerSets;
    private boolean loadingDrafts;
    private boolean[] loadingFeaturedStickers;
    private boolean loadingGenericAnimations;
    private boolean loadingMoreSearchMessages;
    private LongSparseArray<Boolean> loadingPinnedMessages;
    private boolean loadingPremiumGiftStickers;
    private boolean loadingPremiumTonStickers;
    private boolean loadingRecentGifs;
    boolean loadingRecentReactions;
    private boolean[] loadingRecentStickers;
    boolean loadingSavedReactions;
    private boolean loadingSearchLocal;
    private final HashMap<SearchStickersKey, Integer> loadingSearchStickersKeys;
    private final HashMap<String, ArrayList<Utilities.Callback2<Boolean, TLRPC.TL_messages_stickerSet>>> loadingStickerSets;
    private final HashSet<String> loadingStickerSetsKeys;
    private boolean[] loadingStickers;
    private int menuBotsUpdateDate;
    private long menuBotsUpdateHash;
    private boolean menuBotsUpdatedLocal;
    private int mergeReqId;
    private int messagesLocalSearchCount;
    private int[] messagesSearchCount;
    private boolean[] messagesSearchEndReached;
    public final ArrayList<TLRPC.Document> premiumPreviewStickers;
    private TLRPC.TL_help_premiumPromo premiumPromo;
    private int premiumPromoUpdateDate;
    boolean previewStickersLoading;
    public TLRPC.TL_emojiList profileAvatarConstructorDefault;
    private boolean reactionsCacheGenerated;
    private List<TLRPC.TL_availableReaction> reactionsList;
    private HashMap<String, TLRPC.TL_availableReaction> reactionsMap;
    private int reactionsUpdateDate;
    private int reactionsUpdateHash;
    private ArrayList<Long>[] readingStickerSets;
    private ArrayList<TLRPC.Document> recentGifs;
    private boolean recentGifsLoaded;
    ArrayList<TLRPC.Reaction> recentReactions;
    private ArrayList<TLRPC.Document>[] recentStickers;
    private boolean[] recentStickersLoaded;
    private LongSparseArray<Runnable> removingStickerSetsUndos;
    public TLRPC.TL_emojiList replyIconsDefault;
    private int reqId;
    public TLRPC.TL_emojiList restrictedStatusEmojis;
    public final RingtoneDataStore ringtoneDataStore;
    public HashMap<String, RingtoneUploader> ringtoneUploaderHashMap;
    ArrayList<TLRPC.Reaction> savedReactions;
    private Runnable[] scheduledLoadStickers;
    public ArrayList<MessageObject> searchLocalResultMessages;
    public ArrayList<MessageObject> searchResultMessages;
    public ArrayList<MessageObject> searchServerResultMessages;
    private SparseArray<MessageObject>[] searchServerResultMessagesMap;
    private final android.util.LruCache<SearchStickersKey, SearchStickersResult> searchStickerResults;
    public final HashMap<String, Utilities.Callback<Boolean>> shortcutCallbacks;
    private TLRPC.TL_messages_stickerSet stickerSetDefaultChannelStatuses;
    private TLRPC.TL_messages_stickerSet stickerSetDefaultStatuses;
    private ArrayList<TLRPC.TL_messages_stickerSet>[] stickerSets;
    private LongSparseArray<TLRPC.TL_messages_stickerSet> stickerSetsById;
    private ConcurrentHashMap<String, TLRPC.TL_messages_stickerSet> stickerSetsByName;
    private LongSparseArray<String> stickersByEmoji;
    private LongSparseArray<TLRPC.Document>[] stickersByIds;
    private boolean[] stickersLoaded;
    ArrayList<TLRPC.Reaction> topReactions;
    private boolean triedLoadingEmojipacks;
    private ArrayList<Long> uninstalledForceStickerSetsById;
    private ArrayList<Long>[] unreadStickerSets;
    private HashMap<String, ArrayList<TLRPC.Message>> verifyingMessages;
    public ArrayList<TLRPC.TL_topPeer> webapps;
    private static Pattern BOLD_PATTERN = Pattern.compile("\\*\\*(.+?)\\*\\*");
    private static Pattern ITALIC_PATTERN = Pattern.compile("__(.+?)__");
    private static Pattern SPOILER_PATTERN = Pattern.compile("\\|\\|(.+?)\\|\\|");
    private static Pattern STRIKE_PATTERN = Pattern.compile("~~(.+?)~~");
    public static String SHORTCUT_CATEGORY = "org.telegram.messenger.SHORTCUT_SHARE";
    private static volatile MediaDataController[] Instance = new MediaDataController[16];
    private static final Object[] lockObjects = new Object[16];

    /* JADX INFO: loaded from: classes5.dex */
    public interface KeywordResultCallback {
        void run(ArrayList<KeywordResult> arrayList, String str);
    }

    public static /* synthetic */ void $r8$lambda$ArYxL1Gjv_aFzf92FojjOcDdbhU(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$BsEC7ly6YHO7J4JRmdpmodYcEOE(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    /* JADX INFO: renamed from: $r8$lambda$pO-s_IvA-dkVKJh2nwoNnwDjsx4, reason: not valid java name */
    public static /* synthetic */ void m5632$r8$lambda$pOs_IvAdkVKJh2nwoNnwDjsx4(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    /* JADX INFO: renamed from: $r8$lambda$rHrY4a_DFsmIUCaj-NDML8Ai9o4, reason: not valid java name */
    public static /* synthetic */ void m5636$r8$lambda$rHrY4a_DFsmIUCajNDML8Ai9o4(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$yvBZU9YodfY_5fjn8X8WYdexeuM(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$zhqEPOObymLJy4FpHHGUHMD3j5o(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static long calcHash(long j, long j2) {
        long j3 = j ^ (j >>> 21);
        long j4 = j3 ^ (j3 << 35);
        return (j4 ^ (j4 >>> 4)) + j2;
    }

    public boolean canCreateAttachedMenuBotShortcut(long j) {
        return true;
    }

    static {
        for (int i = 0; i < 16; i++) {
            lockObjects[i] = new Object();
        }
        SHORTCUT_TYPE_USER_OR_CHAT = 0;
        SHORTCUT_TYPE_ATTACHED_BOT = 1;
        entityComparator = new Comparator() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda186
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaDataController.$r8$lambda$aR_hVqK1QZJSOMKZNzXjeKUfj3Y((TLRPC.MessageEntity) obj, (TLRPC.MessageEntity) obj2);
            }
        };
    }

    public static MediaDataController getInstance(int i) {
        MediaDataController mediaDataController;
        MediaDataController mediaDataController2 = Instance[i];
        if (mediaDataController2 != null) {
            return mediaDataController2;
        }
        synchronized (lockObjects) {
            try {
                mediaDataController = Instance[i];
                if (mediaDataController == null) {
                    MediaDataController[] mediaDataControllerArr = Instance;
                    MediaDataController mediaDataController3 = new MediaDataController(i);
                    mediaDataControllerArr[i] = mediaDataController3;
                    mediaDataController = mediaDataController3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaDataController;
    }

    public MediaDataController(int i) {
        String key;
        long jLongValue;
        SerializedData serializedData;
        boolean zStartsWith;
        super(i);
        this.attachMenuBots = new TLRPC.TL_attachMenuBots();
        this.reactionsList = new ArrayList();
        this.enabledReactionsList = new ArrayList();
        this.reactionsMap = new HashMap<>();
        this.stickerSets = new ArrayList[]{new ArrayList(), new ArrayList(), new ArrayList(0), new ArrayList(), new ArrayList(), new ArrayList()};
        this.stickersByIds = new LongSparseArray[]{new LongSparseArray(), new LongSparseArray(), new LongSparseArray(), new LongSparseArray(), new LongSparseArray(), new LongSparseArray()};
        this.stickerSetsById = new LongSparseArray<>();
        this.installedStickerSetsById = new LongSparseArray<>();
        this.installedForceStickerSetsById = new ArrayList<>();
        this.uninstalledForceStickerSetsById = new ArrayList<>();
        this.groupStickerSets = new LongSparseArray<>();
        this.stickerSetsByName = new ConcurrentHashMap<>(100, 1.0f, 1);
        this.stickerSetDefaultStatuses = null;
        this.stickerSetDefaultChannelStatuses = null;
        this.diceStickerSetsByEmoji = new HashMap<>();
        this.diceEmojiStickerSetsById = new LongSparseArray<>();
        this.loadingDiceStickerSets = new HashSet<>();
        this.removingStickerSetsUndos = new LongSparseArray<>();
        this.scheduledLoadStickers = new Runnable[7];
        this.loadingStickers = new boolean[7];
        this.stickersLoaded = new boolean[7];
        this.loadHash = new long[7];
        this.loadDate = new int[7];
        this.ringtoneUploaderHashMap = new HashMap<>();
        this.verifyingMessages = new HashMap<>();
        this.archivedStickersCount = new int[7];
        this.stickersByEmoji = new LongSparseArray<>();
        this.allStickers = new HashMap<>();
        this.allStickersFeatured = new HashMap<>();
        this.recentStickers = new ArrayList[]{new ArrayList(), new ArrayList(), new ArrayList(), new ArrayList(), new ArrayList(), new ArrayList(), new ArrayList(), new ArrayList()};
        this.loadingRecentStickers = new boolean[9];
        this.recentStickersLoaded = new boolean[9];
        this.recentGifs = new ArrayList<>();
        this.loadFeaturedHash = new long[2];
        this.loadFeaturedDate = new int[2];
        this.featuredStickerSets = new ArrayList[]{new ArrayList(), new ArrayList()};
        this.featuredStickerSetsById = new LongSparseArray[]{new LongSparseArray(), new LongSparseArray()};
        this.unreadStickerSets = new ArrayList[]{new ArrayList(), new ArrayList()};
        this.readingStickerSets = new ArrayList[]{new ArrayList(), new ArrayList()};
        this.loadingFeaturedStickers = new boolean[2];
        this.featuredStickersLoaded = new boolean[2];
        this.defaultEmojiThemes = new ArrayList<>();
        this.premiumPreviewStickers = new ArrayList<>();
        this.emojiStatusesHash = new long[4];
        this.emojiStatuses = new ArrayList[4];
        this.emojiStatusesFetchDate = new Long[4];
        this.emojiStatusesFromCacheFetched = new boolean[4];
        this.emojiStatusesFetching = new boolean[4];
        this.loadingStickerSetsKeys = new HashSet<>();
        this.loadingStickerSets = new HashMap<>();
        this.messagesSearchCount = new int[]{0, 0};
        this.filteredMessagesSearchCount = new int[]{0, 0};
        this.messagesSearchEndReached = new boolean[]{false, false};
        this.searchResultMessages = new ArrayList<>();
        this.searchServerResultMessages = new ArrayList<>();
        this.searchLocalResultMessages = new ArrayList<>();
        this.searchServerResultMessagesMap = new SparseArray[]{new SparseArray(), new SparseArray()};
        this.deletedFromResultMessages = new ArrayList<>();
        this.hints = new ArrayList<>();
        this.inlineBots = new ArrayList<>();
        this.guestBots = new ArrayList<>();
        this.webapps = new ArrayList<>();
        this.shortcutCallbacks = new HashMap<>();
        this.loadingPinnedMessages = new LongSparseArray<>();
        this.draftsFolderIds = new LongSparseArray<>();
        this.drafts = new LongSparseArray<>();
        this.draftMessages = new LongSparseArray<>();
        this.botInfos = new HashMap<>();
        this.botDialogKeyboards = new LongSparseArray<>();
        this.botKeyboards = new HashMap<>();
        this.botKeyboardsByMids = new LongSparseArray<>();
        this.currentFetchingEmoji = new HashMap<>();
        this.fetchedEmoji = new HashSet<>();
        this.triedLoadingEmojipacks = false;
        this.recentReactions = new ArrayList<>();
        this.topReactions = new ArrayList<>();
        this.savedReactions = new ArrayList<>();
        this.draftVoicesLoaded = false;
        this.draftVoices = new LongSparseArray<>();
        this.loadingSearchStickersKeys = new HashMap<>();
        this.searchStickerResults = new android.util.LruCache<>(25);
        if (this.currentAccount == 0) {
            this.draftPreferences = ApplicationLoader.applicationContext.getSharedPreferences("drafts", 0);
        } else {
            this.draftPreferences = ApplicationLoader.applicationContext.getSharedPreferences("drafts" + this.currentAccount, 0);
        }
        ArrayList<TLRPC.Message> arrayList = new ArrayList<>();
        for (Map.Entry<String, ?> entry : this.draftPreferences.getAll().entrySet()) {
            try {
                key = entry.getKey();
                jLongValue = Utilities.parseLong(key).longValue();
                serializedData = new SerializedData(Utilities.hexToBytes((String) entry.getValue()));
            } catch (Exception unused) {
            }
            if (key.startsWith("r_")) {
                zStartsWith = false;
            } else {
                zStartsWith = key.startsWith("rt_");
                if (!zStartsWith) {
                    TLRPC.DraftMessage draftMessageTLdeserialize = TLRPC.DraftMessage.TLdeserialize(serializedData, serializedData.readInt32(true), true);
                    if (draftMessageTLdeserialize != null) {
                        LongSparseArray<TLRPC.DraftMessage> longSparseArray = this.drafts.get(jLongValue);
                        if (longSparseArray == null) {
                            longSparseArray = new LongSparseArray<>();
                            this.drafts.put(jLongValue, longSparseArray);
                        }
                        longSparseArray.put(key.startsWith("t_") ? Utilities.parseLong(key.substring(key.lastIndexOf(95) + 1)).longValue() : 0L, draftMessageTLdeserialize);
                    }
                    serializedData.cleanup();
                }
            }
            TLRPC.Message messageTLdeserialize = TLRPC.Message.TLdeserialize(serializedData, serializedData.readInt32(true), true);
            if (messageTLdeserialize != null) {
                messageTLdeserialize.readAttachPath(serializedData, getUserConfig().clientUserId);
                LongSparseArray<TLRPC.Message> longSparseArray2 = this.draftMessages.get(jLongValue);
                if (longSparseArray2 == null) {
                    longSparseArray2 = new LongSparseArray<>();
                    this.draftMessages.put(jLongValue, longSparseArray2);
                }
                longSparseArray2.put(zStartsWith ? Utilities.parseInt((CharSequence) key.substring(key.lastIndexOf(95) + 1)).intValue() : 0, messageTLdeserialize);
                if (messageTLdeserialize.reply_to != null) {
                    arrayList.add(messageTLdeserialize);
                }
            }
            serializedData.cleanup();
        }
        loadRepliesOfDraftReplies(arrayList);
        loadStickersByEmojiOrName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME, false, true);
        loadEmojiThemes();
        loadRecentAndTopReactions(false);
        loadAvatarConstructor(false);
        loadAvatarConstructor(true);
        this.ringtoneDataStore = new RingtoneDataStore(this.currentAccount);
        this.menuBotsUpdateDate = getMessagesController().getMainSettings().getInt("menuBotsUpdateDate", 0);
    }

    private void loadRepliesOfDraftReplies(final ArrayList<TLRPC.Message> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda135
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadRepliesOfDraftReplies$0(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRepliesOfDraftReplies$0(ArrayList arrayList) {
        try {
            ArrayList<Long> arrayList2 = new ArrayList<>();
            ArrayList<Long> arrayList3 = new ArrayList<>();
            LongSparseArray<SparseArray<ArrayList<TLRPC.Message>>> longSparseArray = new LongSparseArray<>();
            LongSparseArray<ArrayList<Integer>> longSparseArray2 = new LongSparseArray<>();
            for (int i = 0; i < arrayList.size(); i++) {
                try {
                    MessagesStorage.addReplyMessages((TLRPC.Message) arrayList.get(i), longSparseArray, longSparseArray2);
                } catch (Exception e) {
                    getMessagesStorage().checkSQLException(e);
                }
            }
            getMessagesStorage().loadReplyMessages(longSparseArray, longSparseArray2, arrayList2, arrayList3, 0);
        } catch (Exception e2) {
            FileLog.m898e(e2);
        }
    }

    public void cleanup() {
        int i = 0;
        while (true) {
            ArrayList<TLRPC.Document>[] arrayListArr = this.recentStickers;
            if (i >= arrayListArr.length) {
                break;
            }
            ArrayList<TLRPC.Document> arrayList = arrayListArr[i];
            if (arrayList != null) {
                arrayList.clear();
            }
            this.loadingRecentStickers[i] = false;
            this.recentStickersLoaded[i] = false;
            i++;
        }
        for (int i2 = 0; i2 < 4; i2++) {
            this.loadHash[i2] = 0;
            this.loadDate[i2] = 0;
            this.stickerSets[i2].clear();
            this.loadingStickers[i2] = false;
            this.stickersLoaded[i2] = false;
        }
        this.loadingPinnedMessages.clear();
        int[] iArr = this.loadFeaturedDate;
        iArr[0] = 0;
        long[] jArr = this.loadFeaturedHash;
        jArr[0] = 0;
        iArr[1] = 0;
        jArr[1] = 0;
        this.allStickers.clear();
        this.allStickersFeatured.clear();
        this.stickersByEmoji.clear();
        this.featuredStickerSetsById[0].clear();
        this.featuredStickerSets[0].clear();
        this.featuredStickerSetsById[1].clear();
        this.featuredStickerSets[1].clear();
        this.unreadStickerSets[0].clear();
        this.unreadStickerSets[1].clear();
        this.recentGifs.clear();
        this.stickerSetsById.clear();
        this.installedStickerSetsById.clear();
        this.stickerSetsByName.clear();
        this.diceStickerSetsByEmoji.clear();
        this.diceEmojiStickerSetsById.clear();
        this.loadingDiceStickerSets.clear();
        boolean[] zArr = this.loadingFeaturedStickers;
        zArr[0] = false;
        boolean[] zArr2 = this.featuredStickersLoaded;
        zArr2[0] = false;
        zArr[1] = false;
        zArr2[1] = false;
        this.loadingRecentGifs = false;
        this.recentGifsLoaded = false;
        this.currentFetchingEmoji.clear();
        if (Build.VERSION.SDK_INT >= 25) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda247
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.$r8$lambda$P07UD38xHwHnuBgLff3vTufHzN8();
                }
            });
        }
        this.verifyingMessages.clear();
        this.loading = false;
        this.loaded = false;
        this.hints.clear();
        this.inlineBots.clear();
        this.guestBots.clear();
        this.webapps.clear();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda248
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanup$2();
            }
        });
        this.drafts.clear();
        this.draftMessages.clear();
        this.draftPreferences.edit().clear().apply();
        this.botInfos.clear();
        this.botKeyboards.clear();
        this.botKeyboardsByMids.clear();
    }

    public static /* synthetic */ void $r8$lambda$P07UD38xHwHnuBgLff3vTufHzN8() {
        try {
            ShortcutManagerCompat.removeAllDynamicShortcuts(ApplicationLoader.applicationContext);
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanup$2() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadHints, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInlineHints, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadGuestBotHints, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadWebappsHints, new Object[0]);
    }

    public boolean areStickersLoaded(int i) {
        return this.stickersLoaded[i];
    }

    public void checkStickers(int i) {
        if (this.loadingStickers[i]) {
            return;
        }
        if (!this.stickersLoaded[i] || Math.abs((System.currentTimeMillis() / 1000) - ((long) this.loadDate[i])) >= 3600) {
            loadStickers(i, true, false);
        }
    }

    public void checkReactions() {
        if (this.isLoadingReactions || Math.abs((System.currentTimeMillis() / 1000) - ((long) this.reactionsUpdateDate)) < 3600) {
            return;
        }
        loadReactions(true, null);
    }

    public void checkMenuBots(boolean z) {
        if (this.isLoadingMenuBots) {
            return;
        }
        if ((!z || this.menuBotsUpdatedLocal) && Math.abs((System.currentTimeMillis() / 1000) - ((long) this.menuBotsUpdateDate)) < 3600) {
            return;
        }
        loadAttachMenuBots(true, false);
    }

    public void checkPremiumPromo() {
        if (this.isLoadingPremiumPromo) {
            return;
        }
        if (this.premiumPromo == null || Math.abs((System.currentTimeMillis() / 1000) - ((long) this.premiumPromoUpdateDate)) >= 3600) {
            loadPremiumPromo(true);
        }
    }

    public TLRPC.TL_help_premiumPromo getPremiumPromo() {
        return this.premiumPromo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0065 A[PHI: r16
  0x0065: PHI (r16v3 java.lang.Integer) = (r16v1 java.lang.Integer), (r16v5 java.lang.Integer) binds: [B:23:0x0063, B:19:0x0058] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Integer getPremiumHintAnnualDiscount(boolean z) {
        TLRPC.TL_help_premiumPromo tL_help_premiumPromo;
        double priceAmountMicros;
        int i;
        ProductDetails productDetails;
        ProductDetails.SubscriptionOfferDetails next;
        Integer num;
        double priceAmountMicros2;
        int i2;
        ProductDetails productDetails2;
        ProductDetails.SubscriptionOfferDetails next2;
        Integer num2 = null;
        if ((z && (!BillingController.getInstance().isReady() || BillingController.getInstance().getLastPremiumTransaction() == null)) || (tL_help_premiumPromo = this.premiumPromo) == null) {
            return null;
        }
        ArrayList<TLRPC.TL_premiumSubscriptionOption> arrayList = tL_help_premiumPromo.period_options;
        int size = arrayList.size();
        double d = 0.0d;
        boolean z2 = false;
        int i3 = 0;
        while (i3 < size) {
            TLRPC.TL_premiumSubscriptionOption tL_premiumSubscriptionOption = arrayList.get(i3);
            i3++;
            TLRPC.TL_premiumSubscriptionOption tL_premiumSubscriptionOption2 = tL_premiumSubscriptionOption;
            if (!z) {
                num = num2;
                if (tL_premiumSubscriptionOption2.months == 1) {
                }
            } else if (tL_premiumSubscriptionOption2.current) {
                num = num2;
                if (Objects.equals(tL_premiumSubscriptionOption2.transaction.replaceAll("^(.*?)(?:\\.\\.\\d*|)$", "$1"), BillingController.getInstance().getLastPremiumTransaction())) {
                    if (!BuildVars.useInvoiceBilling() && (productDetails2 = BillingController.PREMIUM_PRODUCT_DETAILS) != null) {
                        Iterator<ProductDetails.SubscriptionOfferDetails> it = productDetails2.getSubscriptionOfferDetails().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                next2 = num;
                                break;
                            }
                            next2 = it.next();
                            String billingPeriod = next2.getPricingPhases().getPricingPhaseList().get(0).getBillingPeriod();
                            int i4 = tL_premiumSubscriptionOption2.months;
                            if (i4 == 12) {
                                if (billingPeriod.equals("P1Y")) {
                                    break;
                                }
                            } else if (billingPeriod.equals(String.format(Locale.ROOT, "P%dM", Integer.valueOf(i4)))) {
                                break;
                            }
                        }
                        if (next2 == 0) {
                            priceAmountMicros2 = tL_premiumSubscriptionOption2.amount;
                            i2 = tL_premiumSubscriptionOption2.months;
                        } else {
                            priceAmountMicros2 = next2.getPricingPhases().getPricingPhaseList().get(0).getPriceAmountMicros();
                            i2 = tL_premiumSubscriptionOption2.months;
                        }
                    } else {
                        priceAmountMicros2 = tL_premiumSubscriptionOption2.amount;
                        i2 = tL_premiumSubscriptionOption2.months;
                    }
                    d = priceAmountMicros2 / ((double) i2);
                    z2 = true;
                }
            } else {
                num = num2;
            }
            num2 = num;
        }
        Integer num3 = num2;
        ArrayList<TLRPC.TL_premiumSubscriptionOption> arrayList2 = this.premiumPromo.period_options;
        int size2 = arrayList2.size();
        int i5 = 0;
        int i6 = 0;
        while (i6 < size2) {
            TLRPC.TL_premiumSubscriptionOption tL_premiumSubscriptionOption3 = arrayList2.get(i6);
            i6++;
            TLRPC.TL_premiumSubscriptionOption tL_premiumSubscriptionOption4 = tL_premiumSubscriptionOption3;
            if (z2 && tL_premiumSubscriptionOption4.months == 12) {
                if (!BuildVars.useInvoiceBilling() && (productDetails = BillingController.PREMIUM_PRODUCT_DETAILS) != null) {
                    Iterator<ProductDetails.SubscriptionOfferDetails> it2 = productDetails.getSubscriptionOfferDetails().iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            next = num3;
                            break;
                        }
                        next = it2.next();
                        String billingPeriod2 = next.getPricingPhases().getPricingPhaseList().get(0).getBillingPeriod();
                        int i7 = tL_premiumSubscriptionOption4.months;
                        if (i7 == 12) {
                            if (billingPeriod2.equals("P1Y")) {
                                break;
                            }
                        } else if (billingPeriod2.equals(String.format(Locale.ROOT, "P%dM", Integer.valueOf(i7)))) {
                            break;
                        }
                    }
                    if (next == 0) {
                        priceAmountMicros = tL_premiumSubscriptionOption4.amount;
                        i = tL_premiumSubscriptionOption4.months;
                    } else {
                        priceAmountMicros = next.getPricingPhases().getPricingPhaseList().get(0).getPriceAmountMicros();
                        i = tL_premiumSubscriptionOption4.months;
                    }
                } else {
                    priceAmountMicros = tL_premiumSubscriptionOption4.amount;
                    i = tL_premiumSubscriptionOption4.months;
                }
                i5 = (int) ((1.0d - ((priceAmountMicros / ((double) i)) / d)) * 100.0d);
            }
        }
        return (!z2 || i5 <= 0) ? num3 : Integer.valueOf(i5);
    }

    public TLRPC.TL_attachMenuBots getAttachMenuBots() {
        return this.attachMenuBots;
    }

    public void loadAttachMenuBots(boolean z, boolean z2) {
        loadAttachMenuBots(z, z2, null);
    }

    public void loadAttachMenuBots(boolean z, boolean z2, final Runnable runnable) {
        this.isLoadingMenuBots = true;
        if (z) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda50
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.lambda$loadAttachMenuBots$3();
                }
            });
            return;
        }
        TLRPC.TL_messages_getAttachMenuBots tL_messages_getAttachMenuBots = new TLRPC.TL_messages_getAttachMenuBots();
        tL_messages_getAttachMenuBots.hash = z2 ? 0L : this.menuBotsUpdateHash;
        getConnectionsManager().sendRequest(tL_messages_getAttachMenuBots, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda51
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadAttachMenuBots$4(runnable, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAttachMenuBots$3() throws Throwable {
        Throwable th;
        long j;
        TLRPC.TL_attachMenuBots tL_attachMenuBots;
        int i;
        int iIntValue;
        SQLiteCursor sQLiteCursor = null;
        tL_attachMenuBots = null;
        TLRPC.TL_attachMenuBots tL_attachMenuBots2 = null;
        sQLiteCursor = null;
        long jLongValue = 0;
        int i2 = 0;
        try {
            try {
                SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT data, hash, date FROM attach_menu_bots", new Object[0]);
                try {
                    try {
                        if (sQLiteCursorQueryFinalized.next()) {
                            NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                            if (nativeByteBufferByteBufferValue != null) {
                                TLRPC.AttachMenuBots attachMenuBotsTLdeserialize = TLRPC.AttachMenuBots.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), true);
                                tL_attachMenuBots2 = attachMenuBotsTLdeserialize instanceof TLRPC.TL_attachMenuBots ? (TLRPC.TL_attachMenuBots) attachMenuBotsTLdeserialize : null;
                                nativeByteBufferByteBufferValue.reuse();
                            }
                            jLongValue = sQLiteCursorQueryFinalized.longValue(1);
                            j = jLongValue;
                            tL_attachMenuBots = tL_attachMenuBots2;
                            iIntValue = sQLiteCursorQueryFinalized.intValue(2);
                        } else {
                            j = 0;
                            tL_attachMenuBots = null;
                            iIntValue = 0;
                        }
                        if (tL_attachMenuBots != null) {
                            try {
                                ArrayList<Long> arrayList = new ArrayList<>();
                                while (i2 < tL_attachMenuBots.bots.size()) {
                                    arrayList.add(Long.valueOf(tL_attachMenuBots.bots.get(i2).bot_id));
                                    i2++;
                                }
                                tL_attachMenuBots.users.addAll(getMessagesStorage().getUsers(arrayList));
                            } catch (Exception e) {
                                e = e;
                                i2 = iIntValue;
                                sQLiteCursor = sQLiteCursorQueryFinalized;
                                FileLog.m898e(e);
                                if (sQLiteCursor != null) {
                                    sQLiteCursor.dispose();
                                }
                                i = i2;
                            }
                        }
                        sQLiteCursorQueryFinalized.dispose();
                        i = iIntValue;
                    } catch (Throwable th2) {
                        th = th2;
                        sQLiteCursor = sQLiteCursorQueryFinalized;
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                            throw th;
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    j = jLongValue;
                    tL_attachMenuBots = tL_attachMenuBots2;
                }
            } catch (Exception e3) {
                e = e3;
                j = 0;
                tL_attachMenuBots = null;
            }
            processLoadedMenuBots(tL_attachMenuBots, j, i, true);
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAttachMenuBots$4(Runnable runnable, TLObject tLObject, TLRPC.TL_error tL_error) {
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (tLObject instanceof TLRPC.TL_attachMenuBotsNotModified) {
            processLoadedMenuBots(null, 0L, iCurrentTimeMillis, false);
        } else if (tLObject instanceof TLRPC.TL_attachMenuBots) {
            TLRPC.TL_attachMenuBots tL_attachMenuBots = (TLRPC.TL_attachMenuBots) tLObject;
            processLoadedMenuBots(tL_attachMenuBots, tL_attachMenuBots.hash, iCurrentTimeMillis, false);
        }
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
        }
    }

    public void processLoadedMenuBots(TLRPC.TL_attachMenuBots tL_attachMenuBots, long j, int i, boolean z) {
        boolean z2;
        if (tL_attachMenuBots != null && i != 0) {
            this.attachMenuBots = tL_attachMenuBots;
            this.menuBotsUpdateHash = j;
        }
        SharedPreferences.Editor editorEdit = getMessagesController().getMainSettings().edit();
        this.menuBotsUpdateDate = i;
        editorEdit.putInt("menuBotsUpdateDate", i).commit();
        this.menuBotsUpdatedLocal = true;
        if (tL_attachMenuBots != null) {
            if (!z) {
                getMessagesStorage().putUsersAndChats(tL_attachMenuBots.users, null, true, true);
            }
            getMessagesController().putUsers(tL_attachMenuBots.users, z);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda127
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processLoadedMenuBots$5();
                }
            });
            z2 = false;
            for (int i2 = 0; i2 < tL_attachMenuBots.bots.size(); i2++) {
                if (tL_attachMenuBots.bots.get(i2) instanceof TLRPC.TL_attachMenuBot_layer162) {
                    tL_attachMenuBots.bots.get(i2).show_in_attach_menu = true;
                    z2 = true;
                }
            }
        } else {
            z2 = false;
        }
        if (!z) {
            putMenuBotsToCache(tL_attachMenuBots, j, i);
        } else if (z2 || Math.abs((System.currentTimeMillis() / 1000) - ((long) i)) >= 3600) {
            loadAttachMenuBots(false, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedMenuBots$5() {
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.attachMenuBotsDidLoad, new Object[0]);
    }

    public boolean isMenuBotsUpdatedLocal() {
        return this.menuBotsUpdatedLocal;
    }

    public void updateAttachMenuBotsInCache() {
        if (getAttachMenuBots() != null) {
            putMenuBotsToCache(getAttachMenuBots(), this.menuBotsUpdateHash, this.menuBotsUpdateDate);
        }
    }

    private void putMenuBotsToCache(final TLRPC.TL_attachMenuBots tL_attachMenuBots, final long j, final int i) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda120
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$putMenuBotsToCache$6(tL_attachMenuBots, j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putMenuBotsToCache$6(TLRPC.TL_attachMenuBots tL_attachMenuBots, long j, int i) {
        try {
            if (tL_attachMenuBots != null) {
                getMessagesStorage().getDatabase().executeFast("DELETE FROM attach_menu_bots").stepThis().dispose();
                SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO attach_menu_bots VALUES(?, ?, ?)");
                sQLitePreparedStatementExecuteFast.requery();
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tL_attachMenuBots.getObjectSize());
                tL_attachMenuBots.serializeToStream(nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.bindByteBuffer(1, nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.bindLong(2, j);
                sQLitePreparedStatementExecuteFast.bindInteger(3, i);
                sQLitePreparedStatementExecuteFast.step();
                nativeByteBuffer.reuse();
                sQLitePreparedStatementExecuteFast.dispose();
                return;
            }
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast2 = getMessagesStorage().getDatabase().executeFast("UPDATE attach_menu_bots SET date = ?");
            sQLitePreparedStatementExecuteFast2.requery();
            sQLitePreparedStatementExecuteFast2.bindLong(1, i);
            sQLitePreparedStatementExecuteFast2.step();
            sQLitePreparedStatementExecuteFast2.dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public void loadPremiumPromo(boolean z) {
        this.isLoadingPremiumPromo = true;
        if (z) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda217
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.lambda$loadPremiumPromo$7();
                }
            });
        } else {
            getConnectionsManager().sendRequest(new TLRPC.TL_help_getPremiumPromo(), new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda218
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadPremiumPromo$8(tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPremiumPromo$7() throws Throwable {
        TLRPC.TL_help_premiumPromo tL_help_premiumPromo;
        SQLiteCursor sQLiteCursorQueryFinalized;
        SQLiteCursor sQLiteCursor = null;
        tL_help_premiumPromoTLdeserialize = null;
        tL_help_premiumPromoTLdeserialize = null;
        TLRPC.TL_help_premiumPromo tL_help_premiumPromoTLdeserialize = null;
        sQLiteCursor = null;
        int iIntValue = 0;
        try {
            try {
                sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT data, date FROM premium_promo", new Object[0]);
            } catch (Exception e) {
                e = e;
                tL_help_premiumPromo = null;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (sQLiteCursorQueryFinalized.next()) {
                NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                if (nativeByteBufferByteBufferValue != null) {
                    tL_help_premiumPromoTLdeserialize = TLRPC.TL_help_premiumPromo.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), true);
                    nativeByteBufferByteBufferValue.reuse();
                }
                iIntValue = sQLiteCursorQueryFinalized.intValue(1);
            }
            sQLiteCursorQueryFinalized.dispose();
        } catch (Exception e2) {
            e = e2;
            tL_help_premiumPromo = tL_help_premiumPromoTLdeserialize;
            sQLiteCursor = sQLiteCursorQueryFinalized;
            FileLog.m898e(e);
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            tL_help_premiumPromoTLdeserialize = tL_help_premiumPromo;
        } catch (Throwable th2) {
            th = th2;
            sQLiteCursor = sQLiteCursorQueryFinalized;
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            throw th;
        }
        processLoadedPremiumPromo(tL_help_premiumPromoTLdeserialize, iIntValue, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPremiumPromo$8(TLObject tLObject, TLRPC.TL_error tL_error) {
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (tLObject instanceof TLRPC.TL_help_premiumPromo) {
            processLoadedPremiumPromo((TLRPC.TL_help_premiumPromo) tLObject, iCurrentTimeMillis, false);
        }
    }

    public void processLoadedPremiumPromo(TLRPC.TL_help_premiumPromo tL_help_premiumPromo, int i, boolean z) {
        if (tL_help_premiumPromo != null) {
            this.premiumPromo = tL_help_premiumPromo;
            this.premiumPromoUpdateDate = i;
            getMessagesController().putUsers(tL_help_premiumPromo.users, z);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda239
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processLoadedPremiumPromo$9();
                }
            });
        }
        if (!z) {
            if (tL_help_premiumPromo != null) {
                putPremiumPromoToCache(tL_help_premiumPromo, i);
            }
            this.isLoadingPremiumPromo = false;
        } else if (tL_help_premiumPromo == null || Math.abs((System.currentTimeMillis() / 1000) - ((long) i)) >= 86400) {
            loadPremiumPromo(false);
        } else {
            this.isLoadingPremiumPromo = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedPremiumPromo$9() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.premiumPromoUpdated, new Object[0]);
    }

    private void putPremiumPromoToCache(final TLRPC.TL_help_premiumPromo tL_help_premiumPromo, final int i) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda110
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$putPremiumPromoToCache$10(tL_help_premiumPromo, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putPremiumPromoToCache$10(TLRPC.TL_help_premiumPromo tL_help_premiumPromo, int i) {
        try {
            if (tL_help_premiumPromo != null) {
                getMessagesStorage().getDatabase().executeFast("DELETE FROM premium_promo").stepThis().dispose();
                SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO premium_promo VALUES(?, ?)");
                sQLitePreparedStatementExecuteFast.requery();
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tL_help_premiumPromo.getObjectSize());
                tL_help_premiumPromo.serializeToStream(nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.bindByteBuffer(1, nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.bindInteger(2, i);
                sQLitePreparedStatementExecuteFast.step();
                nativeByteBuffer.reuse();
                sQLitePreparedStatementExecuteFast.dispose();
                return;
            }
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast2 = getMessagesStorage().getDatabase().executeFast("UPDATE premium_promo SET date = ?");
            sQLitePreparedStatementExecuteFast2.requery();
            sQLitePreparedStatementExecuteFast2.bindInteger(1, i);
            sQLitePreparedStatementExecuteFast2.step();
            sQLitePreparedStatementExecuteFast2.dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public List<TLRPC.TL_availableReaction> getReactionsList() {
        return this.reactionsList;
    }

    public void loadReactions(boolean z, Integer num) {
        this.isLoadingReactions = true;
        if (z) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.lambda$loadReactions$12();
                }
            });
            return;
        }
        TLRPC.TL_messages_getAvailableReactions tL_messages_getAvailableReactions = new TLRPC.TL_messages_getAvailableReactions();
        tL_messages_getAvailableReactions.hash = num != null ? num.intValue() : this.reactionsUpdateHash;
        getConnectionsManager().sendRequest(tL_messages_getAvailableReactions, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda25
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadReactions$14(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$loadReactions$12() throws Throwable {
        ArrayList arrayList;
        int iIntValue;
        Exception e;
        SQLiteCursor sQLiteCursorQueryFinalized;
        final int iIntValue2;
        SQLiteCursor sQLiteCursor = null;
        arrayList = null;
        arrayList = null;
        final ArrayList arrayList2 = null;
        final int i = 0;
        try {
            sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT data, hash, date FROM reactions", new Object[0]);
            try {
                try {
                    if (sQLiteCursorQueryFinalized.next()) {
                        NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                        if (nativeByteBufferByteBufferValue != null) {
                            int int32 = nativeByteBufferByteBufferValue.readInt32(false);
                            arrayList = new ArrayList(int32);
                            for (int i2 = 0; i2 < int32; i2++) {
                                try {
                                    arrayList.add(TLRPC.TL_availableReaction.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), true));
                                } catch (Exception e2) {
                                    e = e2;
                                    iIntValue = 0;
                                    FileLog.m898e(e);
                                    if (sQLiteCursorQueryFinalized != null) {
                                        sQLiteCursorQueryFinalized.dispose();
                                    }
                                    int i3 = iIntValue;
                                    iIntValue2 = 0;
                                    i = i3;
                                    arrayList2 = arrayList;
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda219
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$loadReactions$11(arrayList2, i, iIntValue2);
                                        }
                                    });
                                }
                            }
                            nativeByteBufferByteBufferValue.reuse();
                            arrayList2 = arrayList;
                        }
                        iIntValue = sQLiteCursorQueryFinalized.intValue(1);
                        try {
                            iIntValue2 = sQLiteCursorQueryFinalized.intValue(2);
                            i = iIntValue;
                        } catch (Exception e3) {
                            arrayList = arrayList2;
                            e = e3;
                            FileLog.m898e(e);
                            if (sQLiteCursorQueryFinalized != null) {
                            }
                            int i32 = iIntValue;
                            iIntValue2 = 0;
                            i = i32;
                            arrayList2 = arrayList;
                        }
                    } else {
                        iIntValue2 = 0;
                    }
                    sQLiteCursorQueryFinalized.dispose();
                } catch (Throwable th) {
                    th = th;
                    sQLiteCursor = sQLiteCursorQueryFinalized;
                    if (sQLiteCursor != null) {
                        sQLiteCursor.dispose();
                    }
                    throw th;
                }
            } catch (Exception e4) {
                arrayList = arrayList2;
                e = e4;
            }
        } catch (Exception e5) {
            arrayList = null;
            iIntValue = 0;
            e = e5;
            sQLiteCursorQueryFinalized = null;
        } catch (Throwable th2) {
            th = th2;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda219
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadReactions$11(arrayList2, i, iIntValue2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReactions$11(List list, int i, int i2) {
        processLoadedReactions(list, i, i2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReactions$14(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda128
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadReactions$13(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReactions$13(TLObject tLObject) {
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (tLObject instanceof TLRPC.TL_messages_availableReactionsNotModified) {
            processLoadedReactions(null, 0, iCurrentTimeMillis, false);
        } else if (tLObject instanceof TLRPC.TL_messages_availableReactions) {
            TLRPC.TL_messages_availableReactions tL_messages_availableReactions = (TLRPC.TL_messages_availableReactions) tLObject;
            processLoadedReactions(tL_messages_availableReactions.reactions, tL_messages_availableReactions.hash, iCurrentTimeMillis, false);
        }
    }

    public void processLoadedReactions(List<TLRPC.TL_availableReaction> list, int i, int i2, boolean z) {
        if (list != null && i2 != 0) {
            this.reactionsList.clear();
            this.reactionsMap.clear();
            this.enabledReactionsList.clear();
            this.reactionsList.addAll(list);
            for (int i3 = 0; i3 < this.reactionsList.size(); i3++) {
                this.reactionsList.get(i3).positionInList = i3;
                this.reactionsMap.put(this.reactionsList.get(i3).reaction, this.reactionsList.get(i3));
                if (!this.reactionsList.get(i3).inactive) {
                    this.enabledReactionsList.add(this.reactionsList.get(i3));
                }
            }
            this.reactionsUpdateHash = i;
        }
        this.reactionsUpdateDate = i2;
        if (list != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda148
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processLoadedReactions$15();
                }
            });
        }
        this.isLoadingReactions = false;
        if (!z) {
            putReactionsToCache(list, i, i2);
        } else {
            Math.abs((System.currentTimeMillis() / 1000) - ((long) i2));
            loadReactions(false, Integer.valueOf(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedReactions$15() {
        preloadDefaultReactions();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reactionsDidLoad, new Object[0]);
    }

    public void preloadDefaultReactions() {
        if (this.reactionsList == null || this.reactionsCacheGenerated || !LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS) || this.currentAccount != UserConfig.selectedAccount) {
            return;
        }
        this.reactionsCacheGenerated = true;
        ArrayList arrayList = new ArrayList(this.reactionsList);
        int iMin = Math.min(arrayList.size(), 10);
        for (int i = 0; i < iMin; i++) {
            TLRPC.TL_availableReaction tL_availableReaction = (TLRPC.TL_availableReaction) arrayList.get(i);
            preloadImage(ImageLocation.getForDocument(tL_availableReaction.activate_animation), 0);
            preloadImage(ImageLocation.getForDocument(tL_availableReaction.appear_animation), 0);
        }
        for (int i2 = 0; i2 < iMin; i2++) {
            preloadImage(ImageLocation.getForDocument(((TLRPC.TL_availableReaction) arrayList.get(i2)).effect_animation), 0);
        }
    }

    public void preloadImage(ImageLocation imageLocation, int i) {
        getFileLoader().loadFile(imageLocation, null, null, i, 11);
    }

    public void preloadImage(ImageReceiver imageReceiver, ImageLocation imageLocation, String str) {
        if (LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS)) {
            imageReceiver.setUniqKeyPrefix("preload");
            imageReceiver.setFileLoadingPriority(0);
            imageReceiver.setImage(imageLocation, str, null, null, 0, 11);
        }
    }

    private void putReactionsToCache(List<TLRPC.TL_availableReaction> list, final int i, final int i2) {
        final ArrayList arrayList = list != null ? new ArrayList(list) : null;
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda237
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$putReactionsToCache$16(arrayList, i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putReactionsToCache$16(ArrayList arrayList, int i, int i2) {
        try {
            if (arrayList != null) {
                getMessagesStorage().getDatabase().executeFast("DELETE FROM reactions").stepThis().dispose();
                SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO reactions VALUES(?, ?, ?)");
                sQLitePreparedStatementExecuteFast.requery();
                int objectSize = 4;
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    objectSize += ((TLRPC.TL_availableReaction) arrayList.get(i3)).getObjectSize();
                }
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(objectSize);
                nativeByteBuffer.writeInt32(arrayList.size());
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    ((TLRPC.TL_availableReaction) arrayList.get(i4)).serializeToStream(nativeByteBuffer);
                }
                sQLitePreparedStatementExecuteFast.bindByteBuffer(1, nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.bindInteger(2, i);
                sQLitePreparedStatementExecuteFast.bindInteger(3, i2);
                sQLitePreparedStatementExecuteFast.step();
                nativeByteBuffer.reuse();
                sQLitePreparedStatementExecuteFast.dispose();
                return;
            }
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast2 = getMessagesStorage().getDatabase().executeFast("UPDATE reactions SET date = ?");
            sQLitePreparedStatementExecuteFast2.requery();
            sQLitePreparedStatementExecuteFast2.bindLong(1, i2);
            sQLitePreparedStatementExecuteFast2.step();
            sQLitePreparedStatementExecuteFast2.dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public void checkFeaturedStickers() {
        if (this.loadingFeaturedStickers[0]) {
            return;
        }
        if (!this.featuredStickersLoaded[0] || Math.abs((System.currentTimeMillis() / 1000) - ((long) this.loadFeaturedDate[0])) >= 3600) {
            loadFeaturedStickers(false, true);
        }
    }

    public void checkFeaturedEmoji() {
        if (this.loadingFeaturedStickers[1]) {
            return;
        }
        if (!this.featuredStickersLoaded[1] || Math.abs((System.currentTimeMillis() / 1000) - ((long) this.loadFeaturedDate[1])) >= 3600) {
            loadFeaturedStickers(true, true);
        }
    }

    public ArrayList<TLRPC.Document> getRecentStickers(int i) {
        return getRecentStickers(i, false);
    }

    public ArrayList<TLRPC.Document> getRecentStickers(int i, boolean z) {
        ArrayList<TLRPC.Document> arrayList = this.recentStickers[i];
        if (i == 7) {
            return new ArrayList<>(this.recentStickers[i]);
        }
        ArrayList<TLRPC.Document> arrayList2 = new ArrayList<>(arrayList.subList(0, Math.min(arrayList.size(), ExteraConfig.getUnlimitedRecentStickers() ? Integer.MAX_VALUE : 20)));
        if (z && !arrayList2.isEmpty()) {
            arrayList2.add(0, new TLRPC.TL_documentEmpty());
        }
        return arrayList2;
    }

    public ArrayList<TLRPC.Document> getRecentStickersNoCopy(int i) {
        return this.recentStickers[i];
    }

    public boolean isStickerInFavorites(TLRPC.Document document) {
        if (document == null) {
            return false;
        }
        for (int i = 0; i < this.recentStickers[2].size(); i++) {
            TLRPC.Document document2 = this.recentStickers[2].get(i);
            if (document2.id == document.id && document2.dc_id == document.dc_id) {
                return true;
            }
        }
        return false;
    }

    public void clearRecentStickers() {
        getConnectionsManager().sendRequest(new TLRPC.TL_messages_clearRecentStickers(), new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda188
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$clearRecentStickers$19(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearRecentStickers$19(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda89
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clearRecentStickers$18(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearRecentStickers$18(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda185
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$clearRecentStickers$17();
                }
            });
            this.recentStickers[0].clear();
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentDocumentsDidLoad, Boolean.FALSE, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearRecentStickers$17() {
        try {
            getMessagesStorage().getDatabase().executeFast("DELETE FROM web_recent_v3 WHERE type = 3").stepThis().dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public void addRecentSticker(final int i, final Object obj, TLRPC.Document document, int i2, boolean z) {
        int i3;
        final TLRPC.Document documentRemove;
        MediaDataController mediaDataController;
        int i4;
        if (i != 3) {
            if (MessageObject.isStickerDocument(document) || MessageObject.isAnimatedStickerDocument(document, true)) {
                int i5 = 0;
                while (true) {
                    if (i5 < this.recentStickers[i].size()) {
                        TLRPC.Document document2 = this.recentStickers[i].get(i5);
                        if (document2.id == document.id) {
                            this.recentStickers[i].remove(i5);
                            if (!z) {
                                this.recentStickers[i].add(0, document2);
                            }
                        } else {
                            i5++;
                        }
                    } else if (!z) {
                        this.recentStickers[i].add(0, document);
                    }
                }
                if (i == 2) {
                    if (z) {
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 0, document, 4);
                    } else {
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 0, document, Integer.valueOf(this.recentStickers[i].size() > getMessagesController().maxFaveStickersCount ? 6 : 5));
                    }
                    final TLRPC.TL_messages_faveSticker tL_messages_faveSticker = new TLRPC.TL_messages_faveSticker();
                    TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
                    tL_messages_faveSticker.id = tL_inputDocument;
                    tL_inputDocument.id = document.id;
                    tL_inputDocument.access_hash = document.access_hash;
                    byte[] bArr = document.file_reference;
                    tL_inputDocument.file_reference = bArr;
                    if (bArr == null) {
                        tL_inputDocument.file_reference = new byte[0];
                    }
                    tL_messages_faveSticker.unfave = z;
                    getConnectionsManager().sendRequest(tL_messages_faveSticker, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda140
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$addRecentSticker$21(obj, tL_messages_faveSticker, tLObject, tL_error);
                        }
                    });
                    i3 = getMessagesController().maxFaveStickersCount;
                } else {
                    if (i == 0 && z) {
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 0, document, 3);
                        final TLRPC.TL_messages_saveRecentSticker tL_messages_saveRecentSticker = new TLRPC.TL_messages_saveRecentSticker();
                        TLRPC.TL_inputDocument tL_inputDocument2 = new TLRPC.TL_inputDocument();
                        tL_messages_saveRecentSticker.id = tL_inputDocument2;
                        tL_inputDocument2.id = document.id;
                        tL_inputDocument2.access_hash = document.access_hash;
                        byte[] bArr2 = document.file_reference;
                        tL_inputDocument2.file_reference = bArr2;
                        if (bArr2 == null) {
                            tL_inputDocument2.file_reference = new byte[0];
                        }
                        tL_messages_saveRecentSticker.unsave = true;
                        getConnectionsManager().sendRequest(tL_messages_saveRecentSticker, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda141
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                this.f$0.lambda$addRecentSticker$22(obj, tL_messages_saveRecentSticker, tLObject, tL_error);
                            }
                        });
                    }
                    i3 = getMessagesController().maxRecentStickersCount;
                }
                if (this.recentStickers[i].size() > i3 || z) {
                    if (z) {
                        documentRemove = document;
                    } else {
                        ArrayList<TLRPC.Document> arrayList = this.recentStickers[i];
                        documentRemove = arrayList.remove(arrayList.size() - 1);
                    }
                    getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda142
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$addRecentSticker$23(i, documentRemove);
                        }
                    });
                }
                if (z) {
                    mediaDataController = this;
                    i4 = i;
                } else {
                    ArrayList<TLRPC.Document> arrayList2 = new ArrayList<>();
                    arrayList2.add(document);
                    mediaDataController = this;
                    i4 = i;
                    mediaDataController.processLoadedRecentDocuments(i4, arrayList2, false, i2, false);
                }
                if (i4 == 2 || (i4 == 0 && z)) {
                    mediaDataController.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentDocumentsDidLoad, Boolean.FALSE, Integer.valueOf(i4));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRecentSticker$21(Object obj, TLRPC.TL_messages_faveSticker tL_messages_faveSticker, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null && FileRefController.isFileRefError(tL_error.text) && obj != null) {
            getFileRefController().requestReference(obj, tL_messages_faveSticker);
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda143
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$addRecentSticker$20();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRecentSticker$20() {
        getMediaDataController().loadRecents(2, false, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRecentSticker$22(Object obj, TLRPC.TL_messages_saveRecentSticker tL_messages_saveRecentSticker, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null || !FileRefController.isFileRefError(tL_error.text) || obj == null) {
            return;
        }
        getFileRefController().requestReference(obj, tL_messages_saveRecentSticker);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRecentSticker$23(int i, TLRPC.Document document) {
        int i2 = i == 0 ? 3 : i == 1 ? 4 : i == 5 ? 7 : 5;
        try {
            getMessagesStorage().getDatabase().executeFast("DELETE FROM web_recent_v3 WHERE id = '" + document.id + "' AND type = " + i2).stepThis().dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public ArrayList<TLRPC.Document> getRecentGifs() {
        return new ArrayList<>(this.recentGifs);
    }

    public void removeRecentGif(final TLRPC.Document document) {
        int size = this.recentGifs.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            if (this.recentGifs.get(i).id == document.id) {
                this.recentGifs.remove(i);
                break;
            }
            i++;
        }
        final TLRPC.TL_messages_saveGif tL_messages_saveGif = new TLRPC.TL_messages_saveGif();
        TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
        tL_messages_saveGif.id = tL_inputDocument;
        tL_inputDocument.id = document.id;
        tL_inputDocument.access_hash = document.access_hash;
        byte[] bArr = document.file_reference;
        tL_inputDocument.file_reference = bArr;
        if (bArr == null) {
            tL_inputDocument.file_reference = new byte[0];
        }
        tL_messages_saveGif.unsave = true;
        getConnectionsManager().sendRequest(tL_messages_saveGif, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda159
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$removeRecentGif$24(tL_messages_saveGif, tLObject, tL_error);
            }
        });
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda160
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeRecentGif$25(document);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeRecentGif$24(TLRPC.TL_messages_saveGif tL_messages_saveGif, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null || !FileRefController.isFileRefError(tL_error.text)) {
            return;
        }
        getFileRefController().requestReference("gif", tL_messages_saveGif);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeRecentGif$25(TLRPC.Document document) {
        try {
            getMessagesStorage().getDatabase().executeFast("DELETE FROM web_recent_v3 WHERE id = '" + document.id + "' AND type = 2").stepThis().dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public boolean hasRecentGif(TLRPC.Document document) {
        for (int i = 0; i < this.recentGifs.size(); i++) {
            TLRPC.Document document2 = this.recentGifs.get(i);
            if (document2.id == document.id) {
                this.recentGifs.remove(i);
                this.recentGifs.add(0, document2);
                return true;
            }
        }
        return false;
    }

    public void addRecentGif(final TLRPC.Document document, int i, boolean z) {
        if (document == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            int size = this.recentGifs.size();
            ArrayList<TLRPC.Document> arrayList = this.recentGifs;
            if (i2 < size) {
                TLRPC.Document document2 = arrayList.get(i2);
                if (document2.id == document.id) {
                    this.recentGifs.remove(i2);
                    this.recentGifs.add(0, document2);
                    break;
                }
                i2++;
            } else {
                arrayList.add(0, document);
                break;
            }
        }
        if ((this.recentGifs.size() > getMessagesController().savedGifsLimitDefault && !UserConfig.getInstance(this.currentAccount).isPremium()) || this.recentGifs.size() > getMessagesController().savedGifsLimitPremium) {
            final TLRPC.Document documentRemove = this.recentGifs.remove(r0.size() - 1);
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda37
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$addRecentGif$26(documentRemove);
                }
            });
            if (z) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda38
                    @Override // java.lang.Runnable
                    public final void run() {
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 0, document, 7);
                    }
                });
            }
        }
        ArrayList<TLRPC.Document> arrayList2 = new ArrayList<>();
        arrayList2.add(document);
        processLoadedRecentDocuments(0, arrayList2, true, i, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRecentGif$26(TLRPC.Document document) {
        try {
            getMessagesStorage().getDatabase().executeFast("DELETE FROM web_recent_v3 WHERE id = '" + document.id + "' AND type = 2").stepThis().dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public boolean isLoadingStickers(int i) {
        return this.loadingStickers[i];
    }

    public void replaceStickerSet(final TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        boolean z;
        int i;
        TLRPC.TL_messages_stickerSet tL_messages_stickerSet2 = this.stickerSetsById.get(tL_messages_stickerSet.set.id);
        String str = this.diceEmojiStickerSetsById.get(tL_messages_stickerSet.set.id);
        if (str != null) {
            this.diceStickerSetsByEmoji.put(str, tL_messages_stickerSet);
            putDiceStickersToCache(str, tL_messages_stickerSet, (int) (System.currentTimeMillis() / 1000));
        }
        if (tL_messages_stickerSet2 == null) {
            tL_messages_stickerSet2 = this.stickerSetsByName.get(tL_messages_stickerSet.set.short_name);
        }
        boolean z2 = tL_messages_stickerSet2 == null && (tL_messages_stickerSet2 = this.groupStickerSets.get(tL_messages_stickerSet.set.id)) != null;
        if (tL_messages_stickerSet2 == null) {
            return;
        }
        if ("AnimatedEmojies".equals(tL_messages_stickerSet.set.short_name)) {
            tL_messages_stickerSet2.documents = tL_messages_stickerSet.documents;
            tL_messages_stickerSet2.packs = tL_messages_stickerSet.packs;
            tL_messages_stickerSet2.set = tL_messages_stickerSet.set;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda245
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$replaceStickerSet$28(tL_messages_stickerSet);
                }
            });
            z = true;
        } else {
            LongSparseArray longSparseArray = new LongSparseArray();
            int size = tL_messages_stickerSet.documents.size();
            for (int i2 = 0; i2 < size; i2++) {
                TLRPC.Document document = tL_messages_stickerSet.documents.get(i2);
                longSparseArray.put(document.id, document);
            }
            int size2 = tL_messages_stickerSet2.documents.size();
            z = false;
            for (int i3 = 0; i3 < size2; i3++) {
                TLRPC.Document document2 = (TLRPC.Document) longSparseArray.get(tL_messages_stickerSet2.documents.get(i3).id);
                if (document2 != null) {
                    tL_messages_stickerSet2.documents.set(i3, document2);
                    z = true;
                }
            }
        }
        if (z) {
            if (z2) {
                putSetToCache(tL_messages_stickerSet2);
                return;
            }
            TLRPC.StickerSet stickerSet = tL_messages_stickerSet.set;
            if (stickerSet.masks) {
                i = 1;
            } else {
                i = stickerSet.emojis ? 5 : 0;
            }
            putStickersToCache(i, this.stickerSets[i], this.loadDate[i], this.loadHash[i]);
            if ("AnimatedEmojies".equals(tL_messages_stickerSet.set.short_name)) {
                putStickersToCache(4, this.stickerSets[4], this.loadDate[4], this.loadHash[4]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$replaceStickerSet$28(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        LongSparseArray<TLRPC.Document> stickerByIds = getStickerByIds(4);
        for (int i = 0; i < tL_messages_stickerSet.documents.size(); i++) {
            TLRPC.Document document = tL_messages_stickerSet.documents.get(i);
            stickerByIds.put(document.id, document);
        }
    }

    public TLRPC.TL_messages_stickerSet getStickerSetByName(String str) {
        if (str == null) {
            return null;
        }
        return this.stickerSetsByName.get(str.toLowerCase());
    }

    public void findStickerSetByNameInCache(final String str, final Utilities.Callback<TLRPC.TL_messages_stickerSet> callback) {
        if (callback == null) {
            return;
        }
        if (str == null) {
            callback.run(null);
        } else {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda251
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$findStickerSetByNameInCache$30(str, callback);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$findStickerSetByNameInCache$30(String str, final Utilities.Callback callback) {
        final TLRPC.TL_messages_stickerSet cachedStickerSetInternal = getCachedStickerSetInternal(str.toLowerCase(), (Integer) 0);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda74
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$findStickerSetByNameInCache$29(cachedStickerSetInternal, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$findStickerSetByNameInCache$29(TLRPC.TL_messages_stickerSet tL_messages_stickerSet, Utilities.Callback callback) {
        putStickerSet(tL_messages_stickerSet, false);
        callback.run(tL_messages_stickerSet);
    }

    public TLRPC.TL_messages_stickerSet getStickerSetByEmojiOrName(String str) {
        return this.diceStickerSetsByEmoji.get(str);
    }

    public TLRPC.TL_messages_stickerSet getStickerSetById(long j) {
        return this.stickerSetsById.get(j);
    }

    public TLRPC.TL_messages_stickerSet getGroupStickerSetById(TLRPC.StickerSet stickerSet) {
        TLRPC.StickerSet stickerSet2;
        TLRPC.TL_messages_stickerSet tL_messages_stickerSet = this.stickerSetsById.get(stickerSet.id);
        if (tL_messages_stickerSet == null) {
            tL_messages_stickerSet = this.groupStickerSets.get(stickerSet.id);
            if (tL_messages_stickerSet == null || (stickerSet2 = tL_messages_stickerSet.set) == null) {
                loadGroupStickerSet(stickerSet, true);
            } else {
                if (stickerSet2.hash != stickerSet.hash) {
                    loadGroupStickerSet(stickerSet, false);
                }
                return tL_messages_stickerSet;
            }
        }
        return tL_messages_stickerSet;
    }

    public void putGroupStickerSet(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        this.groupStickerSets.put(tL_messages_stickerSet.set.id, tL_messages_stickerSet);
    }

    public static TLRPC.InputStickerSet getInputStickerSet(TLRPC.StickerSet stickerSet) {
        if (stickerSet == null) {
            return null;
        }
        TLRPC.TL_inputStickerSetID tL_inputStickerSetID = new TLRPC.TL_inputStickerSetID();
        tL_inputStickerSetID.id = stickerSet.id;
        tL_inputStickerSetID.access_hash = stickerSet.access_hash;
        return tL_inputStickerSetID;
    }

    public static TLRPC.TL_inputStickerSetItem getInputStickerSetItem(TLRPC.Document document, String str) {
        TLRPC.TL_inputStickerSetItem tL_inputStickerSetItem = new TLRPC.TL_inputStickerSetItem();
        TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
        tL_inputStickerSetItem.document = tL_inputDocument;
        tL_inputDocument.id = document.id;
        tL_inputDocument.access_hash = document.access_hash;
        tL_inputDocument.file_reference = document.file_reference;
        tL_inputStickerSetItem.emoji = str;
        return tL_inputStickerSetItem;
    }

    public void setPlaceholderImage(final BackupImageView backupImageView, String str, final String str2, final String str3) {
        TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
        tL_inputStickerSetShortName.short_name = str;
        getInstance(this.currentAccount).getStickerSet(tL_inputStickerSetShortName, 0, false, new Utilities.Callback() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda96
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                MediaDataController.m5572$r8$lambda$Ex_Ge2zW3aQweJAgm6QFrftidY(str2, backupImageView, str3, (TLRPC.TL_messages_stickerSet) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$Ex_Ge2zW3aQweJAgm6QF-rftidY, reason: not valid java name */
    public static /* synthetic */ void m5572$r8$lambda$Ex_Ge2zW3aQweJAgm6QFrftidY(String str, BackupImageView backupImageView, String str2, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        TLRPC.Document document;
        int i;
        if (tL_messages_stickerSet == null) {
            return;
        }
        ArrayList<Emoji.EmojiSpanRange> emojis = Emoji.parseEmojis(str);
        for (int i2 = 0; i2 < emojis.size(); i2++) {
            emojis.get(i2).code = Emoji.fixEmoji(emojis.get(i2).code.toString());
        }
        int i3 = 0;
        loop1: while (true) {
            if (i3 >= tL_messages_stickerSet.documents.size()) {
                document = null;
                break;
            }
            TLRPC.Document document2 = tL_messages_stickerSet.documents.get(i3);
            int size = emojis.size();
            int i4 = 0;
            while (i4 < size) {
                Emoji.EmojiSpanRange emojiSpanRange = emojis.get(i4);
                i4++;
                Emoji.EmojiSpanRange emojiSpanRange2 = emojiSpanRange;
                for (0; i < tL_messages_stickerSet.packs.size(); i + 1) {
                    i = (tL_messages_stickerSet.packs.get(i).documents.contains(Long.valueOf(document2.id)) && TextUtils.equals(Emoji.fixEmoji(tL_messages_stickerSet.packs.get(i).emoticon), emojiSpanRange2.code)) ? 0 : i + 1;
                }
            }
            document = document2;
            break loop1;
            i3++;
        }
        if (document != null) {
            backupImageView.setImage(ImageLocation.getForDocument(document), str2, DocumentObject.getSvgThumb(document, Theme.key_windowBackgroundWhiteGrayIcon, 0.2f, 1.0f, null), 0, document);
            backupImageView.invalidate();
        }
    }

    public void setPlaceholderImageByIndex(final BackupImageView backupImageView, String str, final int i, final String str2) {
        TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
        tL_inputStickerSetShortName.short_name = str;
        final String str3 = "sticker_" + str + "_" + i;
        backupImageView.setTag(str3);
        backupImageView.setImageDrawable(null);
        getInstance(this.currentAccount).getStickerSet(tL_inputStickerSetShortName, 0, false, new Utilities.Callback() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                MediaDataController.m5630$r8$lambda$ldksjrINzCjWMcALlPvJSxJMhY(str3, backupImageView, i, str2, (TLRPC.TL_messages_stickerSet) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$ldksjrINzCjW-McALlPvJSxJMhY, reason: not valid java name */
    public static /* synthetic */ void m5630$r8$lambda$ldksjrINzCjWMcALlPvJSxJMhY(String str, BackupImageView backupImageView, int i, String str2, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        ArrayList<TLRPC.Document> arrayList;
        if (str.equals(backupImageView.getTag())) {
            if (tL_messages_stickerSet == null || (arrayList = tL_messages_stickerSet.documents) == null || arrayList.isEmpty()) {
                backupImageView.setImageDrawable(null);
                return;
            }
            if (i >= 0 && i < tL_messages_stickerSet.documents.size()) {
                TLRPC.Document document = tL_messages_stickerSet.documents.get(i);
                if (document != null) {
                    backupImageView.setImage(ImageLocation.getForDocument(document), str2, DocumentObject.getSvgThumb(document, Theme.key_windowBackgroundWhiteGrayIcon, 0.2f, 1.0f, null), 0, document);
                    backupImageView.invalidate();
                    return;
                } else {
                    backupImageView.setImageDrawable(null);
                    return;
                }
            }
            backupImageView.setImageDrawable(null);
        }
    }

    public static String inputSetKey(TLRPC.InputStickerSet inputStickerSet) {
        if (inputStickerSet instanceof TLRPC.TL_inputStickerSetID) {
            return "id" + inputStickerSet.id + "access_hash" + inputStickerSet.access_hash;
        }
        if (inputStickerSet instanceof TLRPC.TL_inputStickerSetShortName) {
            return "short" + inputStickerSet.short_name;
        }
        if (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty) {
            return "empty";
        }
        if (inputStickerSet instanceof TLRPC.TL_inputStickerSetAnimatedEmoji) {
            return "animatedEmoji";
        }
        if (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmojiGenericAnimations) {
            return "emojiGenericAnimations";
        }
        if (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmojiChannelDefaultStatuses) {
            return "emojiChannelDefaultStatuses";
        }
        if (inputStickerSet instanceof TLRPC.TL_inputStickerSetDice) {
            return "dice" + ((TLRPC.TL_inputStickerSetDice) inputStickerSet).emoticon;
        }
        if (inputStickerSet instanceof TLRPC.TL_inputStickerSetPremiumGifts) {
            return "premiumGifts";
        }
        if (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmojiDefaultTopicIcons) {
            return "defaultTopicIcons";
        }
        if (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmojiDefaultStatuses) {
            return "emojiDefaultStatuses";
        }
        if (inputStickerSet instanceof TLRPC.TL_inputStickerSetTonGifts) {
            return "tonGifts";
        }
        return "null";
    }

    public TLRPC.TL_messages_stickerSet getStickerSet(TLRPC.StickerSet stickerSet, boolean z) {
        TLRPC.TL_inputStickerSetID tL_inputStickerSetID = new TLRPC.TL_inputStickerSetID();
        tL_inputStickerSetID.id = stickerSet.id;
        tL_inputStickerSetID.access_hash = stickerSet.access_hash;
        return getStickerSet(tL_inputStickerSetID, z);
    }

    public TLRPC.TL_messages_stickerSet getStickerSet(TLRPC.InputStickerSet inputStickerSet, boolean z) {
        return getStickerSet(inputStickerSet, null, z, null);
    }

    public TLRPC.TL_messages_stickerSet getStickerSet(TLRPC.InputStickerSet inputStickerSet, Integer num, boolean z) {
        return getStickerSet(inputStickerSet, num, z, null);
    }

    public TLRPC.TL_messages_stickerSet getStickerSet(TLRPC.InputStickerSet inputStickerSet, Integer num, boolean z, Utilities.Callback<TLRPC.TL_messages_stickerSet> callback) {
        return getStickerSet(inputStickerSet, num, z, false, callback);
    }

    public TLRPC.TL_messages_stickerSet getStickerSet(final TLRPC.InputStickerSet inputStickerSet, final Integer num, final boolean z, boolean z2, final Utilities.Callback<TLRPC.TL_messages_stickerSet> callback) {
        TLRPC.TL_messages_stickerSet tL_messages_stickerSet;
        String str;
        if (inputStickerSet == null) {
            return null;
        }
        boolean z3 = inputStickerSet instanceof TLRPC.TL_inputStickerSetID;
        if (z3 && this.stickerSetsById.containsKey(inputStickerSet.id)) {
            tL_messages_stickerSet = this.stickerSetsById.get(inputStickerSet.id);
        } else if ((inputStickerSet instanceof TLRPC.TL_inputStickerSetShortName) && (str = inputStickerSet.short_name) != null && this.stickerSetsByName.containsKey(str.toLowerCase())) {
            tL_messages_stickerSet = this.stickerSetsByName.get(inputStickerSet.short_name.toLowerCase());
        } else if ((!(inputStickerSet instanceof TLRPC.TL_inputStickerSetEmojiDefaultStatuses) || (tL_messages_stickerSet = this.stickerSetDefaultStatuses) == null) && (!(inputStickerSet instanceof TLRPC.TL_inputStickerSetEmojiChannelDefaultStatuses) || (tL_messages_stickerSet = this.stickerSetDefaultChannelStatuses) == null)) {
            tL_messages_stickerSet = null;
        }
        if (tL_messages_stickerSet != null) {
            if (!z2 && callback != null) {
                callback.run(tL_messages_stickerSet);
            }
            return tL_messages_stickerSet;
        }
        final String strInputSetKey = inputSetKey(inputStickerSet);
        if (callback == null && this.loadingStickerSetsKeys.contains(strInputSetKey)) {
            return null;
        }
        this.loadingStickerSetsKeys.add(strInputSetKey);
        if (z3) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda242
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$getStickerSet$35(inputStickerSet, num, strInputSetKey, callback, z);
                }
            });
        } else if (inputStickerSet instanceof TLRPC.TL_inputStickerSetShortName) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda243
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$getStickerSet$38(inputStickerSet, num, strInputSetKey, callback, z);
                }
            });
        } else if (!z) {
            fetchStickerSetInternal(inputStickerSet, new Utilities.Callback2() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda244
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$getStickerSet$39(strInputSetKey, callback, inputStickerSet, (Boolean) obj, (TLRPC.TL_messages_stickerSet) obj2);
                }
            });
        } else {
            this.loadingStickerSetsKeys.remove(strInputSetKey);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStickerSet$35(final TLRPC.InputStickerSet inputStickerSet, Integer num, final String str, final Utilities.Callback callback, final boolean z) {
        final TLRPC.TL_messages_stickerSet cachedStickerSetInternal = getCachedStickerSetInternal(inputStickerSet.id, num);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda121
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getStickerSet$34(cachedStickerSetInternal, str, callback, z, inputStickerSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStickerSet$34(TLRPC.TL_messages_stickerSet tL_messages_stickerSet, final String str, final Utilities.Callback callback, boolean z, TLRPC.InputStickerSet inputStickerSet) {
        if (tL_messages_stickerSet == null) {
            if (!z) {
                fetchStickerSetInternal(inputStickerSet, new Utilities.Callback2() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda32
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$getStickerSet$33(str, callback, (Boolean) obj, (TLRPC.TL_messages_stickerSet) obj2);
                    }
                });
                return;
            } else {
                this.loadingStickerSetsKeys.remove(str);
                return;
            }
        }
        this.loadingStickerSetsKeys.remove(str);
        if (callback != null) {
            callback.run(tL_messages_stickerSet);
        }
        TLRPC.StickerSet stickerSet = tL_messages_stickerSet.set;
        if (stickerSet != null) {
            this.stickerSetsById.put(stickerSet.id, tL_messages_stickerSet);
            this.stickerSetsByName.put(tL_messages_stickerSet.set.short_name.toLowerCase(), tL_messages_stickerSet);
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupStickersDidLoad, Long.valueOf(tL_messages_stickerSet.set.id), tL_messages_stickerSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStickerSet$33(String str, Utilities.Callback callback, Boolean bool, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        TLRPC.StickerSet stickerSet;
        this.loadingStickerSetsKeys.remove(str);
        if (callback != null) {
            callback.run(tL_messages_stickerSet);
        }
        if (tL_messages_stickerSet == null || (stickerSet = tL_messages_stickerSet.set) == null) {
            return;
        }
        this.stickerSetsById.put(stickerSet.id, tL_messages_stickerSet);
        this.stickerSetsByName.put(tL_messages_stickerSet.set.short_name.toLowerCase(), tL_messages_stickerSet);
        saveStickerSetIntoCache(tL_messages_stickerSet);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupStickersDidLoad, Long.valueOf(tL_messages_stickerSet.set.id), tL_messages_stickerSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStickerSet$38(final TLRPC.InputStickerSet inputStickerSet, Integer num, final String str, final Utilities.Callback callback, final boolean z) {
        final TLRPC.TL_messages_stickerSet cachedStickerSetInternal = getCachedStickerSetInternal(inputStickerSet.short_name.toLowerCase(), num);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda102
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getStickerSet$37(cachedStickerSetInternal, str, callback, z, inputStickerSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStickerSet$37(TLRPC.TL_messages_stickerSet tL_messages_stickerSet, final String str, final Utilities.Callback callback, boolean z, TLRPC.InputStickerSet inputStickerSet) {
        if (tL_messages_stickerSet == null) {
            if (!z) {
                fetchStickerSetInternal(inputStickerSet, new Utilities.Callback2() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda61
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$getStickerSet$36(str, callback, (Boolean) obj, (TLRPC.TL_messages_stickerSet) obj2);
                    }
                });
                return;
            } else {
                this.loadingStickerSetsKeys.remove(str);
                return;
            }
        }
        this.loadingStickerSetsKeys.remove(str);
        if (callback != null) {
            callback.run(tL_messages_stickerSet);
        }
        TLRPC.StickerSet stickerSet = tL_messages_stickerSet.set;
        if (stickerSet != null) {
            this.stickerSetsById.put(stickerSet.id, tL_messages_stickerSet);
            this.stickerSetsByName.put(tL_messages_stickerSet.set.short_name.toLowerCase(), tL_messages_stickerSet);
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupStickersDidLoad, Long.valueOf(tL_messages_stickerSet.set.id), tL_messages_stickerSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStickerSet$36(String str, Utilities.Callback callback, Boolean bool, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        TLRPC.StickerSet stickerSet;
        this.loadingStickerSetsKeys.remove(str);
        if (callback != null) {
            callback.run(tL_messages_stickerSet);
        }
        if (tL_messages_stickerSet == null || (stickerSet = tL_messages_stickerSet.set) == null) {
            return;
        }
        this.stickerSetsById.put(stickerSet.id, tL_messages_stickerSet);
        this.stickerSetsByName.put(tL_messages_stickerSet.set.short_name.toLowerCase(), tL_messages_stickerSet);
        saveStickerSetIntoCache(tL_messages_stickerSet);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupStickersDidLoad, Long.valueOf(tL_messages_stickerSet.set.id), tL_messages_stickerSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStickerSet$39(String str, Utilities.Callback callback, TLRPC.InputStickerSet inputStickerSet, Boolean bool, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        this.loadingStickerSetsKeys.remove(str);
        if (callback != null) {
            callback.run(tL_messages_stickerSet);
        }
        if (tL_messages_stickerSet != null) {
            TLRPC.StickerSet stickerSet = tL_messages_stickerSet.set;
            if (stickerSet != null) {
                this.stickerSetsById.put(stickerSet.id, tL_messages_stickerSet);
                this.stickerSetsByName.put(tL_messages_stickerSet.set.short_name.toLowerCase(), tL_messages_stickerSet);
                boolean z = inputStickerSet instanceof TLRPC.TL_inputStickerSetEmojiDefaultStatuses;
                if (z) {
                    this.stickerSetDefaultStatuses = tL_messages_stickerSet;
                }
                if (z) {
                    this.stickerSetDefaultChannelStatuses = tL_messages_stickerSet;
                }
            }
            saveStickerSetIntoCache(tL_messages_stickerSet);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupStickersDidLoad, Long.valueOf(tL_messages_stickerSet.set.id), tL_messages_stickerSet);
        }
    }

    public void putStickerSet(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        putStickerSet(tL_messages_stickerSet, true);
    }

    public void putStickerSet(TLRPC.TL_messages_stickerSet tL_messages_stickerSet, boolean z) {
        TLRPC.StickerSet stickerSet;
        TLRPC.StickerSet stickerSet2;
        if (tL_messages_stickerSet == null || (stickerSet = tL_messages_stickerSet.set) == null) {
            return;
        }
        this.stickerSetsById.put(stickerSet.id, tL_messages_stickerSet);
        if (!TextUtils.isEmpty(tL_messages_stickerSet.set.short_name)) {
            this.stickerSetsByName.put(tL_messages_stickerSet.set.short_name.toLowerCase(), tL_messages_stickerSet);
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            ArrayList<TLRPC.TL_messages_stickerSet>[] arrayListArr = this.stickerSets;
            if (i2 >= arrayListArr.length) {
                break;
            }
            ArrayList<TLRPC.TL_messages_stickerSet> arrayList = arrayListArr[i2];
            if (arrayList != null) {
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    TLRPC.TL_messages_stickerSet tL_messages_stickerSet2 = arrayList.get(i3);
                    if (tL_messages_stickerSet2 != null && (stickerSet2 = tL_messages_stickerSet2.set) != null && stickerSet2.id == tL_messages_stickerSet.set.id) {
                        arrayList.set(i3, tL_messages_stickerSet);
                    }
                }
            }
            i2++;
        }
        if (this.groupStickerSets.containsKey(tL_messages_stickerSet.set.id)) {
            this.groupStickerSets.put(tL_messages_stickerSet.set.id, tL_messages_stickerSet);
        }
        saveStickerSetIntoCache(tL_messages_stickerSet);
        TLRPC.StickerSet stickerSet3 = tL_messages_stickerSet.set;
        if (stickerSet3.masks) {
            i = 1;
        } else if (stickerSet3.emojis) {
            i = 5;
        }
        if (z) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.TRUE);
        }
    }

    private void cleanupStickerSetCache() {
        if (this.cleanedupStickerSetCache) {
            return;
        }
        this.cleanedupStickerSetCache = true;
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda246
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanupStickerSetCache$40();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupStickerSetCache$40() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() - 604800000;
            getMessagesStorage().getDatabase().executeFast("DELETE FROM stickersets2 WHERE date < " + jCurrentTimeMillis).stepThis().dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    private void saveStickerSetIntoCache(final TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        if (tL_messages_stickerSet == null || tL_messages_stickerSet.set == null) {
            return;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda106
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$saveStickerSetIntoCache$41(tL_messages_stickerSet);
            }
        });
        cleanupStickerSetCache();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveStickerSetIntoCache$41(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        try {
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO stickersets2 VALUES(?, ?, ?, ?, ?)");
            sQLitePreparedStatementExecuteFast.requery();
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tL_messages_stickerSet.getObjectSize());
            tL_messages_stickerSet.serializeToStream(nativeByteBuffer);
            sQLitePreparedStatementExecuteFast.bindLong(1, tL_messages_stickerSet.set.id);
            sQLitePreparedStatementExecuteFast.bindByteBuffer(2, nativeByteBuffer);
            sQLitePreparedStatementExecuteFast.bindInteger(3, tL_messages_stickerSet.set.hash);
            sQLitePreparedStatementExecuteFast.bindLong(4, System.currentTimeMillis());
            String str = tL_messages_stickerSet.set.short_name;
            sQLitePreparedStatementExecuteFast.bindString(5, str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str.toLowerCase());
            sQLitePreparedStatementExecuteFast.step();
            nativeByteBuffer.reuse();
            sQLitePreparedStatementExecuteFast.dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006f, code lost:
    
        if ((java.lang.System.currentTimeMillis() - r2) > j$.time.Duration.ofMinutes(15).toMillis()) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TLRPC.TL_messages_stickerSet getCachedStickerSetInternal(long j, Integer num) {
        SQLiteCursor sQLiteCursorQueryFinalized;
        TLRPC.TL_messages_stickerSet tL_messages_stickerSetTLdeserialize;
        NativeByteBuffer nativeByteBuffer = null;
        try {
            sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT data, hash, date FROM stickersets2 WHERE id = ? LIMIT 1", Long.valueOf(j));
            try {
                if (!sQLiteCursorQueryFinalized.next() || sQLiteCursorQueryFinalized.isNull(0)) {
                    tL_messages_stickerSetTLdeserialize = null;
                } else {
                    NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                    if (nativeByteBufferByteBufferValue != null) {
                        try {
                            tL_messages_stickerSetTLdeserialize = TLRPC.messages_StickerSet.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                            try {
                                int iIntValue = sQLiteCursorQueryFinalized.intValue(1);
                                long jLongValue = sQLiteCursorQueryFinalized.longValue(2);
                                if (num == null || num.intValue() == 0 || num.intValue() == iIntValue) {
                                    if ((num == null || num.intValue() == 0) && tL_messages_stickerSetTLdeserialize != null) {
                                    }
                                }
                                nativeByteBufferByteBufferValue.reuse();
                                sQLiteCursorQueryFinalized.dispose();
                                return null;
                            } catch (Throwable th) {
                                th = th;
                                nativeByteBuffer = nativeByteBufferByteBufferValue;
                                try {
                                    FileLog.m898e(th);
                                    return tL_messages_stickerSetTLdeserialize;
                                } finally {
                                    if (nativeByteBuffer != null) {
                                        nativeByteBuffer.reuse();
                                    }
                                    if (sQLiteCursorQueryFinalized != null) {
                                        sQLiteCursorQueryFinalized.dispose();
                                    }
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            tL_messages_stickerSetTLdeserialize = null;
                        }
                    } else {
                        tL_messages_stickerSetTLdeserialize = null;
                    }
                    nativeByteBuffer = nativeByteBufferByteBufferValue;
                }
                if (nativeByteBuffer != null) {
                    nativeByteBuffer.reuse();
                }
                sQLiteCursorQueryFinalized.dispose();
                return tL_messages_stickerSetTLdeserialize;
            } catch (Throwable th3) {
                th = th3;
                tL_messages_stickerSetTLdeserialize = null;
            }
        } catch (Throwable th4) {
            th = th4;
            sQLiteCursorQueryFinalized = null;
            tL_messages_stickerSetTLdeserialize = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
    
        if ((java.lang.System.currentTimeMillis() - r3) > j$.time.Duration.ofMinutes(15).toMillis()) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TLRPC.TL_messages_stickerSet getCachedStickerSetInternal(String str, Integer num) {
        SQLiteCursor sQLiteCursorQueryFinalized;
        TLRPC.TL_messages_stickerSet tL_messages_stickerSetTLdeserialize;
        NativeByteBuffer nativeByteBuffer = null;
        try {
            sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT data, hash, date FROM stickersets2 WHERE short_name = ? LIMIT 1", str);
            try {
                if (!sQLiteCursorQueryFinalized.next() || sQLiteCursorQueryFinalized.isNull(0)) {
                    tL_messages_stickerSetTLdeserialize = null;
                } else {
                    NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                    if (nativeByteBufferByteBufferValue != null) {
                        try {
                            tL_messages_stickerSetTLdeserialize = TLRPC.messages_StickerSet.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                        } catch (Throwable th) {
                            th = th;
                            tL_messages_stickerSetTLdeserialize = null;
                        }
                        try {
                            int iIntValue = sQLiteCursorQueryFinalized.intValue(1);
                            long jLongValue = sQLiteCursorQueryFinalized.longValue(2);
                            if (num == null || num.intValue() == 0 || num.intValue() == iIntValue) {
                                if ((num == null || num.intValue() == 0) && tL_messages_stickerSetTLdeserialize != null) {
                                }
                            }
                            nativeByteBufferByteBufferValue.reuse();
                            sQLiteCursorQueryFinalized.dispose();
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                            nativeByteBuffer = nativeByteBufferByteBufferValue;
                            try {
                                FileLog.m898e(th);
                                return tL_messages_stickerSetTLdeserialize;
                            } finally {
                                if (nativeByteBuffer != null) {
                                    nativeByteBuffer.reuse();
                                }
                                if (sQLiteCursorQueryFinalized != null) {
                                    sQLiteCursorQueryFinalized.dispose();
                                }
                            }
                        }
                    }
                    tL_messages_stickerSetTLdeserialize = null;
                    nativeByteBuffer = nativeByteBufferByteBufferValue;
                }
                if (nativeByteBuffer != null) {
                    nativeByteBuffer.reuse();
                }
                sQLiteCursorQueryFinalized.dispose();
                return tL_messages_stickerSetTLdeserialize;
            } catch (Throwable th3) {
                th = th3;
                tL_messages_stickerSetTLdeserialize = null;
            }
        } catch (Throwable th4) {
            th = th4;
            sQLiteCursorQueryFinalized = null;
            tL_messages_stickerSetTLdeserialize = null;
        }
    }

    private void fetchStickerSetInternal(TLRPC.InputStickerSet inputStickerSet, Utilities.Callback2<Boolean, TLRPC.TL_messages_stickerSet> callback2) {
        if (callback2 == null) {
            return;
        }
        final String strInputSetKey = inputSetKey(inputStickerSet);
        ArrayList<Utilities.Callback2<Boolean, TLRPC.TL_messages_stickerSet>> arrayList = this.loadingStickerSets.get(strInputSetKey);
        if (arrayList != null && arrayList.size() > 0) {
            arrayList.add(callback2);
            return;
        }
        if (arrayList == null) {
            HashMap<String, ArrayList<Utilities.Callback2<Boolean, TLRPC.TL_messages_stickerSet>>> map = this.loadingStickerSets;
            ArrayList<Utilities.Callback2<Boolean, TLRPC.TL_messages_stickerSet>> arrayList2 = new ArrayList<>();
            map.put(strInputSetKey, arrayList2);
            arrayList = arrayList2;
        }
        arrayList.add(callback2);
        TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
        tL_messages_getStickerSet.stickerset = inputStickerSet;
        getConnectionsManager().sendRequest(tL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda88
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$fetchStickerSetInternal$43(strInputSetKey, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchStickerSetInternal$43(final String str, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda149
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fetchStickerSetInternal$42(str, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchStickerSetInternal$42(String str, TLObject tLObject) {
        ArrayList<Utilities.Callback2<Boolean, TLRPC.TL_messages_stickerSet>> arrayList = this.loadingStickerSets.get(str);
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                if (tLObject != null) {
                    arrayList.get(i).run(Boolean.TRUE, (TLRPC.TL_messages_stickerSet) tLObject);
                } else {
                    arrayList.get(i).run(Boolean.FALSE, null);
                }
            }
        }
        this.loadingStickerSets.remove(str);
    }

    private void loadGroupStickerSet(final TLRPC.StickerSet stickerSet, boolean z) {
        if (z) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda76
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadGroupStickerSet$45(stickerSet);
                }
            });
            return;
        }
        TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
        TLRPC.TL_inputStickerSetID tL_inputStickerSetID = new TLRPC.TL_inputStickerSetID();
        tL_messages_getStickerSet.stickerset = tL_inputStickerSetID;
        tL_inputStickerSetID.id = stickerSet.id;
        tL_inputStickerSetID.access_hash = stickerSet.access_hash;
        getConnectionsManager().sendRequest(tL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda77
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadGroupStickerSet$47(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadGroupStickerSet$45(TLRPC.StickerSet stickerSet) {
        TLRPC.StickerSet stickerSet2;
        NativeByteBuffer nativeByteBufferByteBufferValue;
        try {
            SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT document FROM web_recent_v3 WHERE id = 's_" + stickerSet.id + "'", new Object[0]);
            final TLRPC.TL_messages_stickerSet tL_messages_stickerSetTLdeserialize = null;
            if (sQLiteCursorQueryFinalized.next() && !sQLiteCursorQueryFinalized.isNull(0) && (nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0)) != null) {
                tL_messages_stickerSetTLdeserialize = TLRPC.messages_StickerSet.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                nativeByteBufferByteBufferValue.reuse();
            }
            sQLiteCursorQueryFinalized.dispose();
            if (tL_messages_stickerSetTLdeserialize == null || (stickerSet2 = tL_messages_stickerSetTLdeserialize.set) == null || stickerSet2.hash != stickerSet.hash) {
                loadGroupStickerSet(stickerSet, false);
            }
            if (tL_messages_stickerSetTLdeserialize == null || tL_messages_stickerSetTLdeserialize.set == null) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda228
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadGroupStickerSet$44(tL_messages_stickerSetTLdeserialize);
                }
            });
        } catch (Throwable th) {
            FileLog.m898e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadGroupStickerSet$44(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        this.groupStickerSets.put(tL_messages_stickerSet.set.id, tL_messages_stickerSet);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupStickersDidLoad, Long.valueOf(tL_messages_stickerSet.set.id), tL_messages_stickerSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadGroupStickerSet$47(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            final TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda115
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadGroupStickerSet$46(tL_messages_stickerSet);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadGroupStickerSet$46(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        this.groupStickerSets.put(tL_messages_stickerSet.set.id, tL_messages_stickerSet);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupStickersDidLoad, Long.valueOf(tL_messages_stickerSet.set.id), tL_messages_stickerSet);
    }

    private void putSetToCache(final TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda229
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$putSetToCache$48(tL_messages_stickerSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putSetToCache$48(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        try {
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO web_recent_v3 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            sQLitePreparedStatementExecuteFast.requery();
            sQLitePreparedStatementExecuteFast.bindString(1, "s_" + tL_messages_stickerSet.set.id);
            sQLitePreparedStatementExecuteFast.bindInteger(2, 6);
            sQLitePreparedStatementExecuteFast.bindString(3, _UrlKt.FRAGMENT_ENCODE_SET);
            sQLitePreparedStatementExecuteFast.bindString(4, _UrlKt.FRAGMENT_ENCODE_SET);
            sQLitePreparedStatementExecuteFast.bindString(5, _UrlKt.FRAGMENT_ENCODE_SET);
            sQLitePreparedStatementExecuteFast.bindInteger(6, 0);
            sQLitePreparedStatementExecuteFast.bindInteger(7, 0);
            sQLitePreparedStatementExecuteFast.bindInteger(8, 0);
            sQLitePreparedStatementExecuteFast.bindInteger(9, 0);
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tL_messages_stickerSet.getObjectSize());
            tL_messages_stickerSet.serializeToStream(nativeByteBuffer);
            sQLitePreparedStatementExecuteFast.bindByteBuffer(10, nativeByteBuffer);
            sQLitePreparedStatementExecuteFast.step();
            nativeByteBuffer.reuse();
            sQLitePreparedStatementExecuteFast.dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public HashMap<String, ArrayList<TLRPC.Document>> getAllStickers() {
        return this.allStickers;
    }

    public HashMap<String, ArrayList<TLRPC.Document>> getAllStickersFeatured() {
        return this.allStickersFeatured;
    }

    public TLRPC.Document getEmojiAnimatedSticker(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        String strReplace = charSequence.toString().replace("️", _UrlKt.FRAGMENT_ENCODE_SET);
        ArrayList<TLRPC.TL_messages_stickerSet> stickerSets = getStickerSets(4);
        int size = stickerSets.size();
        for (int i = 0; i < size; i++) {
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = stickerSets.get(i);
            int size2 = tL_messages_stickerSet.packs.size();
            for (int i2 = 0; i2 < size2; i2++) {
                TLRPC.TL_stickerPack tL_stickerPack = tL_messages_stickerSet.packs.get(i2);
                if (!tL_stickerPack.documents.isEmpty() && TextUtils.equals(tL_stickerPack.emoticon, strReplace)) {
                    return getStickerByIds(4).get(tL_stickerPack.documents.get(0).longValue());
                }
            }
        }
        return null;
    }

    public boolean canAddStickerToFavorites() {
        return (this.stickersLoaded[0] && this.stickerSets[0].size() < 5 && this.recentStickers[2].isEmpty()) ? false : true;
    }

    public ArrayList<TLRPC.TL_messages_stickerSet> getStickerSets(int i) {
        ArrayList<TLRPC.TL_messages_stickerSet>[] arrayListArr = this.stickerSets;
        if (i == 3) {
            return arrayListArr[2];
        }
        return arrayListArr[i];
    }

    public LongSparseArray<TLRPC.Document> getStickerByIds(int i) {
        return this.stickersByIds[i];
    }

    public ArrayList<TLRPC.StickerSetCovered> getFeaturedStickerSets() {
        return this.featuredStickerSets[0];
    }

    public ArrayList<TLRPC.StickerSetCovered> getFeaturedEmojiSets() {
        return this.featuredStickerSets[1];
    }

    public ArrayList<Long> getUnreadStickerSets() {
        return this.unreadStickerSets[0];
    }

    public ArrayList<Long> getUnreadEmojiSets() {
        return this.unreadStickerSets[1];
    }

    public boolean areAllTrendingStickerSetsUnread(boolean z) {
        int size = this.featuredStickerSets[z ? 1 : 0].size();
        for (int i = 0; i < size; i++) {
            TLRPC.StickerSetCovered stickerSetCovered = this.featuredStickerSets[z ? 1 : 0].get(i);
            if (!isStickerPackInstalled(stickerSetCovered.set.id) && ((!stickerSetCovered.covers.isEmpty() || stickerSetCovered.cover != null) && !this.unreadStickerSets[z ? 1 : 0].contains(Long.valueOf(stickerSetCovered.set.id)))) {
                return false;
            }
        }
        return true;
    }

    public boolean isStickerPackInstalled(long j) {
        return isStickerPackInstalled(j, true);
    }

    public boolean isStickerPackInstalled(long j, boolean z) {
        if (this.installedStickerSetsById.indexOfKey(j) >= 0 || (z && this.installedForceStickerSetsById.contains(Long.valueOf(j)))) {
            return (z && this.uninstalledForceStickerSetsById.contains(Long.valueOf(j))) ? false : true;
        }
        return false;
    }

    public boolean isStickerPackUnread(boolean z, long j) {
        return this.unreadStickerSets[z ? 1 : 0].contains(Long.valueOf(j));
    }

    public boolean isStickerPackInstalled(String str) {
        return this.stickerSetsByName.containsKey(str);
    }

    public String getEmojiForSticker(long j) {
        String str = this.stickersByEmoji.get(j);
        return str != null ? str : _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static boolean canShowAttachMenuBotForTarget(TLRPC.TL_attachMenuBot tL_attachMenuBot, String str) {
        ArrayList<TLRPC.AttachMenuPeerType> arrayList = tL_attachMenuBot.peer_types;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.AttachMenuPeerType attachMenuPeerType = arrayList.get(i);
            i++;
            TLRPC.AttachMenuPeerType attachMenuPeerType2 = attachMenuPeerType;
            if (((attachMenuPeerType2 instanceof TLRPC.TL_attachMenuPeerTypeSameBotPM) || (attachMenuPeerType2 instanceof TLRPC.TL_attachMenuPeerTypeBotPM)) && str.equals("bots")) {
                return true;
            }
            if ((attachMenuPeerType2 instanceof TLRPC.TL_attachMenuPeerTypeBroadcast) && str.equals("channels")) {
                return true;
            }
            if ((attachMenuPeerType2 instanceof TLRPC.TL_attachMenuPeerTypeChat) && str.equals("groups")) {
                return true;
            }
            if ((attachMenuPeerType2 instanceof TLRPC.TL_attachMenuPeerTypePM) && str.equals("users")) {
                return true;
            }
        }
        return false;
    }

    public static boolean canShowAttachMenuBot(TLRPC.TL_attachMenuBot tL_attachMenuBot, TLObject tLObject) {
        TLRPC.User user = tLObject instanceof TLRPC.User ? (TLRPC.User) tLObject : null;
        TLRPC.Chat chat = tLObject instanceof TLRPC.Chat ? (TLRPC.Chat) tLObject : null;
        ArrayList<TLRPC.AttachMenuPeerType> arrayList = tL_attachMenuBot.peer_types;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.AttachMenuPeerType attachMenuPeerType = arrayList.get(i);
            i++;
            TLRPC.AttachMenuPeerType attachMenuPeerType2 = attachMenuPeerType;
            if ((attachMenuPeerType2 instanceof TLRPC.TL_attachMenuPeerTypeSameBotPM) && user != null && user.bot && user.id == tL_attachMenuBot.bot_id) {
                return true;
            }
            if ((attachMenuPeerType2 instanceof TLRPC.TL_attachMenuPeerTypeBotPM) && user != null && user.bot && user.id != tL_attachMenuBot.bot_id) {
                return true;
            }
            if ((attachMenuPeerType2 instanceof TLRPC.TL_attachMenuPeerTypePM) && user != null && !user.bot) {
                return true;
            }
            if ((attachMenuPeerType2 instanceof TLRPC.TL_attachMenuPeerTypeChat) && chat != null && !ChatObject.isChannelAndNotMegaGroup(chat)) {
                return true;
            }
            if ((attachMenuPeerType2 instanceof TLRPC.TL_attachMenuPeerTypeBroadcast) && chat != null && ChatObject.isChannelAndNotMegaGroup(chat)) {
                return true;
            }
        }
        return false;
    }

    public static TLRPC.TL_attachMenuBotIcon getAnimatedAttachMenuBotIcon(TLRPC.TL_attachMenuBot tL_attachMenuBot, boolean z) {
        ArrayList<TLRPC.TL_attachMenuBotIcon> arrayList = tL_attachMenuBot.icons;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.TL_attachMenuBotIcon tL_attachMenuBotIcon = arrayList.get(i);
            i++;
            TLRPC.TL_attachMenuBotIcon tL_attachMenuBotIcon2 = tL_attachMenuBotIcon;
            if (tL_attachMenuBotIcon2.name.equals(z ? ATTACH_MENU_BOT_ANIMATED_ICON_KEY_2 : ATTACH_MENU_BOT_ANIMATED_ICON_KEY)) {
                return tL_attachMenuBotIcon2;
            }
        }
        return null;
    }

    public static TLRPC.TL_attachMenuBotIcon getSideMenuBotIcon(TLRPC.TL_attachMenuBot tL_attachMenuBot) {
        ArrayList<TLRPC.TL_attachMenuBotIcon> arrayList = tL_attachMenuBot.icons;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.TL_attachMenuBotIcon tL_attachMenuBotIcon = arrayList.get(i);
            i++;
            TLRPC.TL_attachMenuBotIcon tL_attachMenuBotIcon2 = tL_attachMenuBotIcon;
            if (tL_attachMenuBotIcon2.name.equals("android_side_menu_static")) {
                return tL_attachMenuBotIcon2;
            }
        }
        return null;
    }

    public static TLRPC.TL_attachMenuBotIcon getStaticAttachMenuBotIcon(TLRPC.TL_attachMenuBot tL_attachMenuBot) {
        ArrayList<TLRPC.TL_attachMenuBotIcon> arrayList = tL_attachMenuBot.icons;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.TL_attachMenuBotIcon tL_attachMenuBotIcon = arrayList.get(i);
            i++;
            TLRPC.TL_attachMenuBotIcon tL_attachMenuBotIcon2 = tL_attachMenuBotIcon;
            if (tL_attachMenuBotIcon2.name.equals(ATTACH_MENU_BOT_STATIC_ICON_KEY)) {
                return tL_attachMenuBotIcon2;
            }
        }
        return null;
    }

    public static TLRPC.TL_attachMenuBotIcon getSideAttachMenuBotIcon(TLRPC.TL_attachMenuBot tL_attachMenuBot) {
        ArrayList<TLRPC.TL_attachMenuBotIcon> arrayList = tL_attachMenuBot.icons;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.TL_attachMenuBotIcon tL_attachMenuBotIcon = arrayList.get(i);
            i++;
            TLRPC.TL_attachMenuBotIcon tL_attachMenuBotIcon2 = tL_attachMenuBotIcon;
            if (tL_attachMenuBotIcon2.name.equals("android_side_menu_static")) {
                return tL_attachMenuBotIcon2;
            }
        }
        return null;
    }

    public static TLRPC.TL_attachMenuBotIcon getPlaceholderStaticAttachMenuBotIcon(TLRPC.TL_attachMenuBot tL_attachMenuBot) {
        ArrayList<TLRPC.TL_attachMenuBotIcon> arrayList = tL_attachMenuBot.icons;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.TL_attachMenuBotIcon tL_attachMenuBotIcon = arrayList.get(i);
            i++;
            TLRPC.TL_attachMenuBotIcon tL_attachMenuBotIcon2 = tL_attachMenuBotIcon;
            if (tL_attachMenuBotIcon2.name.equals(ATTACH_MENU_BOT_PLACEHOLDER_STATIC_KEY)) {
                return tL_attachMenuBotIcon2;
            }
        }
        return null;
    }

    public static long calcDocumentsHash(ArrayList<TLRPC.Document> arrayList) {
        return calcDocumentsHash(arrayList, 200);
    }

    public static long calcDocumentsHash(ArrayList<TLRPC.Document> arrayList, int i) {
        long jCalcHash = 0;
        if (arrayList == null) {
            return 0L;
        }
        int iMin = Math.min(i, arrayList.size());
        for (int i2 = 0; i2 < iMin; i2++) {
            TLRPC.Document document = arrayList.get(i2);
            if (document != null) {
                jCalcHash = calcHash(jCalcHash, document.id);
            }
        }
        return jCalcHash;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadRecents(final int i, final boolean z, boolean z2, boolean z3) {
        TLRPC.TL_messages_getStickers tL_messages_getStickers;
        TLObject tLObject;
        long j;
        if (z) {
            if (this.loadingRecentGifs) {
                return;
            }
            this.loadingRecentGifs = true;
            if (this.recentGifsLoaded) {
                z2 = false;
            }
        } else {
            boolean[] zArr = this.loadingRecentStickers;
            if (zArr[i]) {
                return;
            }
            zArr[i] = true;
            if (this.recentStickersLoaded[i]) {
            }
        }
        if (z2) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda214
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadRecents$50(z, i);
                }
            });
            return;
        }
        SharedPreferences emojiSettings = MessagesController.getEmojiSettings(this.currentAccount);
        if (!z3) {
            if (z) {
                j = emojiSettings.getLong("lastGifLoadTime", 0L);
            } else if (i == 0) {
                j = emojiSettings.getLong("lastStickersLoadTime", 0L);
            } else if (i == 1) {
                j = emojiSettings.getLong("lastStickersLoadTimeMask", 0L);
            } else if (i == 3) {
                j = emojiSettings.getLong("lastStickersLoadTimeGreet", 0L);
            } else if (i == 5) {
                j = emojiSettings.getLong("lastStickersLoadTimeEmojiPacks", 0L);
            } else if (i == 7) {
                j = emojiSettings.getLong("lastStickersLoadTimePremiumStickers", 0L);
            } else {
                j = emojiSettings.getLong("lastStickersLoadTimeFavs", 0L);
            }
            if (Math.abs(System.currentTimeMillis() - j) < DurationKt.MILLIS_IN_HOUR) {
                if (z) {
                    this.loadingRecentGifs = false;
                    return;
                } else {
                    this.loadingRecentStickers[i] = false;
                    return;
                }
            }
        }
        if (z) {
            TLRPC.TL_messages_getSavedGifs tL_messages_getSavedGifs = new TLRPC.TL_messages_getSavedGifs();
            tL_messages_getSavedGifs.hash = calcDocumentsHash(this.recentGifs);
            getConnectionsManager().sendRequest(tL_messages_getSavedGifs, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda215
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadRecents$51(i, tLObject2, tL_error);
                }
            });
            return;
        }
        if (i == 2) {
            TLRPC.TL_messages_getFavedStickers tL_messages_getFavedStickers = new TLRPC.TL_messages_getFavedStickers();
            tL_messages_getFavedStickers.hash = calcDocumentsHash(this.recentStickers[i]);
            tLObject = tL_messages_getFavedStickers;
        } else {
            if (i == 3) {
                tL_messages_getStickers = new TLRPC.TL_messages_getStickers();
                tL_messages_getStickers.emoticon = "👋" + Emoji.fixEmoji("⭐");
                tL_messages_getStickers.hash = calcDocumentsHash(this.recentStickers[i]);
            } else if (i == 7) {
                tL_messages_getStickers = new TLRPC.TL_messages_getStickers();
                tL_messages_getStickers.emoticon = "📂" + Emoji.fixEmoji("⭐");
                tL_messages_getStickers.hash = calcDocumentsHash(this.recentStickers[i]);
            } else {
                TLRPC.TL_messages_getRecentStickers tL_messages_getRecentStickers = new TLRPC.TL_messages_getRecentStickers();
                tL_messages_getRecentStickers.hash = calcDocumentsHash(this.recentStickers[i]);
                tL_messages_getRecentStickers.attached = i == 1;
                tLObject = tL_messages_getRecentStickers;
            }
            tLObject = tL_messages_getStickers;
        }
        getConnectionsManager().sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda216
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadRecents$52(i, tLObject2, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRecents$50(final boolean z, final int i) {
        int i2;
        NativeByteBuffer nativeByteBufferByteBufferValue;
        if (z) {
            i2 = 2;
        } else {
            i2 = 3;
            if (i != 0) {
                if (i == 1) {
                    i2 = 4;
                } else if (i == 3) {
                    i2 = 6;
                } else {
                    i2 = 7;
                    if (i != 5) {
                        i2 = i == 7 ? 8 : 5;
                    }
                }
            }
        }
        try {
            SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT document FROM web_recent_v3 WHERE type = " + i2 + " ORDER BY date DESC", new Object[0]);
            final ArrayList arrayList = new ArrayList();
            while (sQLiteCursorQueryFinalized.next()) {
                if (!sQLiteCursorQueryFinalized.isNull(0) && (nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0)) != null) {
                    TLRPC.Document documentTLdeserialize = TLRPC.Document.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                    if (documentTLdeserialize != null) {
                        arrayList.add(documentTLdeserialize);
                    }
                    nativeByteBufferByteBufferValue.reuse();
                }
            }
            sQLiteCursorQueryFinalized.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda65
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadRecents$49(z, arrayList, i);
                }
            });
        } catch (Throwable th) {
            getMessagesStorage().checkSQLException(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$loadRecents$49(boolean z, ArrayList arrayList, int i) {
        if (z) {
            this.recentGifs = arrayList;
            this.loadingRecentGifs = false;
            this.recentGifsLoaded = true;
        } else {
            this.recentStickers[i] = arrayList;
            this.loadingRecentStickers[i] = false;
            this.recentStickersLoaded[i] = true;
        }
        if (i == 3) {
            preloadNextGreetingsSticker();
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentDocumentsDidLoad, Boolean.valueOf(z), Integer.valueOf(i));
        loadRecents(i, z, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRecents$51(int i, TLObject tLObject, TLRPC.TL_error tL_error) {
        processLoadedRecentDocuments(i, tLObject instanceof TLRPC.TL_messages_savedGifs ? ((TLRPC.TL_messages_savedGifs) tLObject).gifs : null, true, 0, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$loadRecents$52(int i, TLObject tLObject, TLRPC.TL_error tL_error) {
        ArrayList<TLRPC.Document> arrayList;
        if (i == 3 || i == 7) {
            arrayList = tLObject instanceof TLRPC.TL_messages_stickers ? ((TLRPC.TL_messages_stickers) tLObject).stickers : null;
        } else if (i == 2) {
            if (tLObject instanceof TLRPC.TL_messages_favedStickers) {
                arrayList = ((TLRPC.TL_messages_favedStickers) tLObject).stickers;
            }
        } else if (tLObject instanceof TLRPC.TL_messages_recentStickers) {
            arrayList = ((TLRPC.TL_messages_recentStickers) tLObject).stickers;
        }
        processLoadedRecentDocuments(i, arrayList, false, 0, true);
    }

    private void preloadNextGreetingsSticker() {
        if (this.recentStickers[3].isEmpty()) {
            return;
        }
        ArrayList<TLRPC.Document> arrayList = this.recentStickers[3];
        this.greetingsSticker = arrayList.get(Utilities.random.nextInt(arrayList.size()));
        getFileLoader().loadFile(ImageLocation.getForDocument(this.greetingsSticker), this.greetingsSticker, null, 0, 1);
    }

    public TLRPC.Document getGreetingsSticker() {
        TLRPC.Document document = this.greetingsSticker;
        preloadNextGreetingsSticker();
        return document;
    }

    public void processLoadedRecentDocuments(int i, ArrayList<TLRPC.Document> arrayList, boolean z, int i2, final boolean z2) {
        final MediaDataController mediaDataController;
        final int i3;
        final ArrayList<TLRPC.Document> arrayList2;
        final boolean z3;
        final int i4;
        if (arrayList != null) {
            mediaDataController = this;
            i3 = i;
            arrayList2 = arrayList;
            z3 = z;
            i4 = i2;
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda67
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processLoadedRecentDocuments$53(z3, i3, arrayList2, z2, i4);
                }
            });
        } else {
            mediaDataController = this;
            i3 = i;
            arrayList2 = arrayList;
            z3 = z;
            i4 = i2;
        }
        if (i4 == 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processLoadedRecentDocuments$54(z3, i3, arrayList2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedRecentDocuments$53(boolean z, int i, ArrayList arrayList, boolean z2, int i2) {
        int i3;
        try {
            SQLiteDatabase database = getMessagesStorage().getDatabase();
            int i4 = 2;
            if (z) {
                i3 = getMessagesController().maxRecentGifsCount;
            } else if (i == 3 || i == 7) {
                i3 = 200;
            } else if (i == 2) {
                i3 = getMessagesController().maxFaveStickersCount;
            } else {
                i3 = getMessagesController().maxRecentStickersCount;
            }
            database.beginTransaction();
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = database.executeFast("REPLACE INTO web_recent_v3 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            int size = arrayList.size();
            int i5 = z ? 2 : i == 0 ? 3 : i == 1 ? 4 : i == 3 ? 6 : i == 5 ? 7 : i == 7 ? 8 : 5;
            if (z2) {
                database.executeFast("DELETE FROM web_recent_v3 WHERE type = " + i5).stepThis().dispose();
            }
            int i6 = 0;
            while (i6 < size && i6 != i3) {
                TLRPC.Document document = (TLRPC.Document) arrayList.get(i6);
                sQLitePreparedStatementExecuteFast.requery();
                sQLitePreparedStatementExecuteFast.bindString(1, _UrlKt.FRAGMENT_ENCODE_SET + document.id);
                sQLitePreparedStatementExecuteFast.bindInteger(i4, i5);
                sQLitePreparedStatementExecuteFast.bindString(3, _UrlKt.FRAGMENT_ENCODE_SET);
                sQLitePreparedStatementExecuteFast.bindString(4, _UrlKt.FRAGMENT_ENCODE_SET);
                sQLitePreparedStatementExecuteFast.bindString(5, _UrlKt.FRAGMENT_ENCODE_SET);
                sQLitePreparedStatementExecuteFast.bindInteger(6, 0);
                sQLitePreparedStatementExecuteFast.bindInteger(7, 0);
                sQLitePreparedStatementExecuteFast.bindInteger(8, 0);
                sQLitePreparedStatementExecuteFast.bindInteger(9, i2 != 0 ? i2 : size - i6);
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(document.getObjectSize());
                document.serializeToStream(nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.bindByteBuffer(10, nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.step();
                nativeByteBuffer.reuse();
                i6++;
                i4 = 2;
            }
            sQLitePreparedStatementExecuteFast.dispose();
            database.commitTransaction();
            if (z2 || arrayList.size() < i3) {
                return;
            }
            database.beginTransaction();
            while (i3 < arrayList.size()) {
                database.executeFast("DELETE FROM web_recent_v3 WHERE id = '" + ((TLRPC.Document) arrayList.get(i3)).id + "' AND type = " + i5).stepThis().dispose();
                i3++;
            }
            database.commitTransaction();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$processLoadedRecentDocuments$54(boolean z, int i, ArrayList arrayList) {
        SharedPreferences.Editor editorEdit = MessagesController.getEmojiSettings(this.currentAccount).edit();
        if (z) {
            this.loadingRecentGifs = false;
            this.recentGifsLoaded = true;
            editorEdit.putLong("lastGifLoadTime", System.currentTimeMillis()).apply();
        } else {
            this.loadingRecentStickers[i] = false;
            this.recentStickersLoaded[i] = true;
            if (i == 0) {
                editorEdit.putLong("lastStickersLoadTime", System.currentTimeMillis()).apply();
            } else if (i == 1) {
                editorEdit.putLong("lastStickersLoadTimeMask", System.currentTimeMillis()).apply();
            } else if (i == 3) {
                editorEdit.putLong("lastStickersLoadTimeGreet", System.currentTimeMillis()).apply();
            } else if (i == 5) {
                editorEdit.putLong("lastStickersLoadTimeEmojiPacks", System.currentTimeMillis()).apply();
            } else if (i == 7) {
                editorEdit.putLong("lastStickersLoadTimePremiumStickers", System.currentTimeMillis()).apply();
            } else {
                editorEdit.putLong("lastStickersLoadTimeFavs", System.currentTimeMillis()).apply();
            }
        }
        if (arrayList != null) {
            if (z) {
                this.recentGifs = arrayList;
            } else {
                this.recentStickers[i] = arrayList;
            }
            if (i == 3) {
                preloadNextGreetingsSticker();
            }
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentDocumentsDidLoad, Boolean.valueOf(z), Integer.valueOf(i));
        }
    }

    public void reorderStickers(int i, final ArrayList<Long> arrayList, boolean z) {
        Collections.sort(this.stickerSets[i], new Comparator() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda234
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaDataController.m5561$r8$lambda$Bzjcfvtjj7mVZfuRSlZJcFXIwk(arrayList, (TLRPC.TL_messages_stickerSet) obj, (TLRPC.TL_messages_stickerSet) obj2);
            }
        });
        this.loadHash[i] = calcStickersHash(this.stickerSets[i]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.valueOf(z));
    }

    /* JADX INFO: renamed from: $r8$lambda$Bzjcfvtjj7mVZfuRSlZJcFX-Iwk, reason: not valid java name */
    public static /* synthetic */ int m5561$r8$lambda$Bzjcfvtjj7mVZfuRSlZJcFXIwk(ArrayList arrayList, TLRPC.TL_messages_stickerSet tL_messages_stickerSet, TLRPC.TL_messages_stickerSet tL_messages_stickerSet2) {
        int iIndexOf = arrayList.indexOf(Long.valueOf(tL_messages_stickerSet.set.id));
        int iIndexOf2 = arrayList.indexOf(Long.valueOf(tL_messages_stickerSet2.set.id));
        if (iIndexOf > iIndexOf2) {
            return 1;
        }
        return iIndexOf < iIndexOf2 ? -1 : 0;
    }

    public void calcNewHash(int i) {
        this.loadHash[i] = calcStickersHash(this.stickerSets[i]);
    }

    public void storeTempStickerSet(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        TLRPC.StickerSet stickerSet;
        if (tL_messages_stickerSet == null || (stickerSet = tL_messages_stickerSet.set) == null) {
            return;
        }
        this.stickerSetsById.put(stickerSet.id, tL_messages_stickerSet);
        String str = tL_messages_stickerSet.set.short_name;
        if (str != null) {
            this.stickerSetsByName.put(str.toLowerCase(), tL_messages_stickerSet);
        }
    }

    public void addNewStickerSet(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        int i;
        if (this.stickerSetsById.indexOfKey(tL_messages_stickerSet.set.id) >= 0 || this.stickerSetsByName.containsKey(tL_messages_stickerSet.set.short_name)) {
            return;
        }
        TLRPC.StickerSet stickerSet = tL_messages_stickerSet.set;
        if (stickerSet.masks) {
            i = 1;
        } else {
            i = stickerSet.emojis ? 5 : 0;
        }
        this.stickerSets[i].add(0, tL_messages_stickerSet);
        this.stickerSetsById.put(tL_messages_stickerSet.set.id, tL_messages_stickerSet);
        this.installedStickerSetsById.put(tL_messages_stickerSet.set.id, tL_messages_stickerSet);
        this.stickerSetsByName.put(tL_messages_stickerSet.set.short_name, tL_messages_stickerSet);
        LongSparseArray longSparseArray = new LongSparseArray();
        for (int i2 = 0; i2 < tL_messages_stickerSet.documents.size(); i2++) {
            TLRPC.Document document = tL_messages_stickerSet.documents.get(i2);
            longSparseArray.put(document.id, document);
        }
        for (int i3 = 0; i3 < tL_messages_stickerSet.packs.size(); i3++) {
            TLRPC.TL_stickerPack tL_stickerPack = tL_messages_stickerSet.packs.get(i3);
            String strReplace = tL_stickerPack.emoticon.replace("️", _UrlKt.FRAGMENT_ENCODE_SET);
            tL_stickerPack.emoticon = strReplace;
            ArrayList<TLRPC.Document> arrayList = this.allStickers.get(strReplace);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.allStickers.put(tL_stickerPack.emoticon, arrayList);
            }
            for (int i4 = 0; i4 < tL_stickerPack.documents.size(); i4++) {
                Long l = tL_stickerPack.documents.get(i4);
                if (this.stickersByEmoji.indexOfKey(l.longValue()) < 0) {
                    this.stickersByEmoji.put(l.longValue(), tL_stickerPack.emoticon);
                }
                TLRPC.Document document2 = (TLRPC.Document) longSparseArray.get(l.longValue());
                if (document2 != null) {
                    arrayList.add(document2);
                }
            }
        }
        this.loadHash[i] = calcStickersHash(this.stickerSets[i]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.TRUE);
        loadStickers(i, false, true);
    }

    public void loadFeaturedStickers(final boolean z, boolean z2) {
        final long j;
        TLObject tLObject;
        boolean[] zArr = this.loadingFeaturedStickers;
        if (zArr[z ? 1 : 0]) {
            return;
        }
        zArr[z ? 1 : 0] = true;
        if (z2) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda168
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadFeaturedStickers$56(z);
                }
            });
            return;
        }
        if (z) {
            TLRPC.TL_messages_getFeaturedEmojiStickers tL_messages_getFeaturedEmojiStickers = new TLRPC.TL_messages_getFeaturedEmojiStickers();
            j = this.loadFeaturedHash[1];
            tL_messages_getFeaturedEmojiStickers.hash = j;
            tLObject = tL_messages_getFeaturedEmojiStickers;
        } else {
            TLRPC.TL_messages_getFeaturedStickers tL_messages_getFeaturedStickers = new TLRPC.TL_messages_getFeaturedStickers();
            j = this.loadFeaturedHash[0];
            tL_messages_getFeaturedStickers.hash = j;
            tLObject = tL_messages_getFeaturedStickers;
        }
        getConnectionsManager().sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda169
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadFeaturedStickers$59(z, j, tLObject2, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$loadFeaturedStickers$56(boolean z) {
        ArrayList<TLRPC.StickerSetCovered> arrayList;
        int iIntValue;
        long j;
        boolean z2;
        ArrayList<TLRPC.StickerSetCovered> arrayList2;
        int i;
        ArrayList<Long> arrayList3 = new ArrayList<>();
        SQLiteCursor sQLiteCursor = null;
        arrayList = null;
        arrayList = null;
        ArrayList<TLRPC.StickerSetCovered> arrayList4 = null;
        long jLongValue = 0;
        try {
            SQLiteDatabase database = getMessagesStorage().getDatabase();
            StringBuilder sb = new StringBuilder("SELECT data, unread, date, hash, premium FROM stickers_featured WHERE emoji = ");
            sb.append(z ? 1 : 0);
            sb.append(" AND id = ");
            sb.append(z ? 2 : 1);
            SQLiteCursor sQLiteCursorQueryFinalized = database.queryFinalized(sb.toString(), new Object[0]);
            try {
                if (sQLiteCursorQueryFinalized.next()) {
                    NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                    if (nativeByteBufferByteBufferValue != null) {
                        arrayList = new ArrayList<>();
                        try {
                            int int32 = nativeByteBufferByteBufferValue.readInt32(false);
                            for (int i2 = 0; i2 < int32; i2++) {
                                arrayList.add(TLRPC.StickerSetCovered.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false));
                            }
                            nativeByteBufferByteBufferValue.reuse();
                            arrayList4 = arrayList;
                        } catch (Throwable th) {
                            th = th;
                            iIntValue = 0;
                            sQLiteCursor = sQLiteCursorQueryFinalized;
                            try {
                                FileLog.m898e(th);
                                if (sQLiteCursor != null) {
                                }
                                arrayList2 = arrayList;
                                j = jLongValue;
                                z2 = false;
                                processLoadedFeaturedStickers(z, arrayList2, arrayList3, z2, true, iIntValue, j);
                            } finally {
                            }
                        }
                    }
                    NativeByteBuffer nativeByteBufferByteBufferValue2 = sQLiteCursorQueryFinalized.byteBufferValue(1);
                    if (nativeByteBufferByteBufferValue2 != null) {
                        int int322 = nativeByteBufferByteBufferValue2.readInt32(false);
                        for (int i3 = 0; i3 < int322; i3++) {
                            arrayList3.add(Long.valueOf(nativeByteBufferByteBufferValue2.readInt64(false)));
                        }
                        nativeByteBufferByteBufferValue2.reuse();
                    }
                    iIntValue = sQLiteCursorQueryFinalized.intValue(2);
                    try {
                        jLongValue = sQLiteCursorQueryFinalized.longValue(3);
                        i = sQLiteCursorQueryFinalized.intValue(4) == 1 ? 1 : 0;
                        i = iIntValue;
                    } catch (Throwable th2) {
                        th = th2;
                        arrayList = arrayList4;
                        sQLiteCursor = sQLiteCursorQueryFinalized;
                        FileLog.m898e(th);
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                        }
                        arrayList2 = arrayList;
                        j = jLongValue;
                        z2 = false;
                    }
                } else {
                    i = 0;
                }
                sQLiteCursorQueryFinalized.dispose();
                arrayList2 = arrayList4;
                iIntValue = i;
                j = jLongValue;
                z2 = i;
            } catch (Throwable th3) {
                th = th3;
                arrayList = arrayList4;
            }
        } catch (Throwable th4) {
            th = th4;
            arrayList = null;
            iIntValue = 0;
        }
        processLoadedFeaturedStickers(z, arrayList2, arrayList3, z2, true, iIntValue, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFeaturedStickers$59(final boolean z, final long j, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadFeaturedStickers$58(tLObject, z, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFeaturedStickers$58(TLObject tLObject, final boolean z, long j) {
        if (tLObject instanceof TLRPC.TL_messages_featuredStickers) {
            TLRPC.TL_messages_featuredStickers tL_messages_featuredStickers = (TLRPC.TL_messages_featuredStickers) tLObject;
            processLoadedFeaturedStickers(z, tL_messages_featuredStickers.sets, tL_messages_featuredStickers.unread, tL_messages_featuredStickers.premium, false, (int) (System.currentTimeMillis() / 1000), tL_messages_featuredStickers.hash);
        } else {
            if (tLObject instanceof TLRPC.TL_messages_featuredStickersNotModified) {
                final int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda224
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$loadFeaturedStickers$57(z, iCurrentTimeMillis);
                    }
                });
                putFeaturedStickersToCache(z, null, null, iCurrentTimeMillis, j, false);
                return;
            }
            processLoadedFeaturedStickers(z, null, null, false, false, (int) (System.currentTimeMillis() / 1000), j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFeaturedStickers$57(boolean z, int i) {
        this.loadingFeaturedStickers[z ? 1 : 0] = false;
        this.featuredStickersLoaded[z ? 1 : 0] = true;
        this.loadFeaturedDate[z ? 1 : 0] = i;
    }

    private void processLoadedFeaturedStickers(final boolean z, final ArrayList<TLRPC.StickerSetCovered> arrayList, final ArrayList<Long> arrayList2, final boolean z2, final boolean z3, final int i, final long j) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedFeaturedStickers$60(z);
            }
        });
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedFeaturedStickers$64(z3, arrayList, i, j, z, arrayList2, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedFeaturedStickers$60(boolean z) {
        this.loadingFeaturedStickers[z ? 1 : 0] = false;
        this.featuredStickersLoaded[z ? 1 : 0] = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedFeaturedStickers$64(boolean z, final ArrayList arrayList, final int i, final long j, final boolean z2, final ArrayList arrayList2, final boolean z3) {
        ArrayList<TLRPC.StickerSetCovered> arrayList3;
        long j2 = 0;
        if ((z && (arrayList == null || Math.abs((System.currentTimeMillis() / 1000) - ((long) i)) >= 3600)) || (!z && arrayList == null && j == 0)) {
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda122
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processLoadedFeaturedStickers$61(arrayList, j, z2);
                }
            };
            if (arrayList == null && !z) {
                j2 = 1000;
            }
            AndroidUtilities.runOnUIThread(runnable, j2);
            if (arrayList == null) {
                return;
            }
        }
        if (arrayList != null) {
            try {
                ArrayList<TLRPC.StickerSetCovered> arrayList4 = new ArrayList<>();
                final LongSparseArray longSparseArray = new LongSparseArray();
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) arrayList.get(i2);
                    arrayList4.add(stickerSetCovered);
                    longSparseArray.put(stickerSetCovered.set.id, stickerSetCovered);
                }
                if (z) {
                    arrayList3 = arrayList4;
                } else {
                    arrayList3 = arrayList4;
                    putFeaturedStickersToCache(z2, arrayList3, arrayList2, i, j, z3);
                }
                final ArrayList<TLRPC.StickerSetCovered> arrayList5 = arrayList3;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda123
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$processLoadedFeaturedStickers$62(z2, arrayList2, longSparseArray, arrayList5, j, i, z3);
                    }
                });
                return;
            } catch (Throwable th) {
                FileLog.m898e(th);
                return;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda124
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedFeaturedStickers$63(z2, i);
            }
        });
        putFeaturedStickersToCache(z2, null, null, i, 0L, z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedFeaturedStickers$61(ArrayList arrayList, long j, boolean z) {
        if (arrayList != null && j != 0) {
            this.loadFeaturedHash[z ? 1 : 0] = j;
        }
        this.loadingFeaturedStickers[z ? 1 : 0] = false;
        loadFeaturedStickers(z, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$processLoadedFeaturedStickers$62(boolean z, ArrayList arrayList, LongSparseArray longSparseArray, ArrayList arrayList2, long j, int i, boolean z2) {
        this.unreadStickerSets[z ? 1 : 0] = arrayList;
        this.featuredStickerSetsById[z ? 1 : 0] = longSparseArray;
        this.featuredStickerSets[z ? 1 : 0] = arrayList2;
        this.loadFeaturedHash[z ? 1 : 0] = j;
        this.loadFeaturedDate[z ? 1 : 0] = i;
        this.loadFeaturedPremium = z2;
        loadStickers(z ? 6 : 3, true, false);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(z ? NotificationCenter.featuredEmojiDidLoad : NotificationCenter.featuredStickersDidLoad, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedFeaturedStickers$63(boolean z, int i) {
        this.loadFeaturedDate[z ? 1 : 0] = i;
    }

    private void putFeaturedStickersToCache(final boolean z, ArrayList<TLRPC.StickerSetCovered> arrayList, final ArrayList<Long> arrayList2, final int i, final long j, final boolean z2) {
        final ArrayList arrayList3 = arrayList != null ? new ArrayList(arrayList) : null;
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda73
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$putFeaturedStickersToCache$65(arrayList3, arrayList2, z, i, j, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [org.telegram.SQLite.SQLitePreparedStatement] */
    /* JADX WARN: Type inference failed for: r5v5, types: [org.telegram.SQLite.SQLitePreparedStatement] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$putFeaturedStickersToCache$65(ArrayList arrayList, ArrayList arrayList2, boolean z, int i, long j, boolean z2) throws Throwable {
        Throwable th;
        NativeByteBuffer nativeByteBuffer;
        NativeByteBuffer nativeByteBuffer2;
        Exception exc;
        NativeByteBuffer nativeByteBuffer3;
        NativeByteBuffer nativeByteBuffer4;
        NativeByteBuffer nativeByteBuffer5;
        NativeByteBuffer nativeByteBuffer6;
        ?? r12;
        ?? r5;
        NativeByteBuffer nativeByteBuffer7;
        NativeByteBuffer nativeByteBuffer8;
        ?? r52;
        ?? r122;
        NativeByteBuffer nativeByteBuffer9;
        SQLitePreparedStatement sQLitePreparedStatement;
        NativeByteBuffer nativeByteBuffer10;
        NativeByteBuffer nativeByteBuffer11 = null;
        nativeByteBuffer11 = null;
        nativeByteBuffer11 = null;
        try {
            try {
                if (arrayList != null) {
                    SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO stickers_featured VALUES(?, ?, ?, ?, ?, ?, ?)");
                    int objectSize = 4;
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        objectSize += ((TLRPC.StickerSetCovered) arrayList.get(i2)).getObjectSize();
                    }
                    NativeByteBuffer nativeByteBuffer12 = new NativeByteBuffer(objectSize);
                    try {
                        nativeByteBuffer10 = new NativeByteBuffer((arrayList2.size() * 8) + 4);
                    } catch (Exception e) {
                        exc = e;
                        nativeByteBuffer4 = null;
                        nativeByteBuffer3 = nativeByteBuffer12;
                        r122 = sQLitePreparedStatementExecuteFast;
                    } catch (Throwable th2) {
                        th = th2;
                        nativeByteBuffer2 = null;
                        nativeByteBuffer = nativeByteBuffer12;
                        r12 = sQLitePreparedStatementExecuteFast;
                    }
                    try {
                        nativeByteBuffer12.writeInt32(arrayList.size());
                        for (int i3 = 0; i3 < arrayList.size(); i3++) {
                            ((TLRPC.StickerSetCovered) arrayList.get(i3)).serializeToStream(nativeByteBuffer12);
                        }
                        nativeByteBuffer10.writeInt32(arrayList2.size());
                        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                            nativeByteBuffer10.writeInt64(((Long) arrayList2.get(i4)).longValue());
                        }
                        sQLitePreparedStatementExecuteFast.bindInteger(1, z ? 2 : 1);
                        sQLitePreparedStatementExecuteFast.bindByteBuffer(2, nativeByteBuffer12);
                        sQLitePreparedStatementExecuteFast.bindByteBuffer(3, nativeByteBuffer10);
                        sQLitePreparedStatementExecuteFast.bindInteger(4, i);
                        sQLitePreparedStatementExecuteFast.bindLong(5, j);
                        sQLitePreparedStatementExecuteFast.bindInteger(6, z2 ? 1 : 0);
                        sQLitePreparedStatementExecuteFast.bindInteger(7, z ? 1 : 0);
                        sQLitePreparedStatementExecuteFast.step();
                        nativeByteBuffer11 = nativeByteBuffer12;
                        nativeByteBuffer9 = nativeByteBuffer10;
                        sQLitePreparedStatement = sQLitePreparedStatementExecuteFast;
                    } catch (Exception e2) {
                        exc = e2;
                        nativeByteBuffer3 = nativeByteBuffer12;
                        nativeByteBuffer4 = nativeByteBuffer10;
                        r122 = sQLitePreparedStatementExecuteFast;
                        r52 = r122;
                        nativeByteBuffer8 = nativeByteBuffer3;
                        nativeByteBuffer6 = nativeByteBuffer4;
                        try {
                            FileLog.m898e(exc);
                            if (r52 != 0) {
                            }
                            if (nativeByteBuffer8 != null) {
                            }
                            if (nativeByteBuffer6 == null) {
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            r5 = r52;
                            nativeByteBuffer7 = nativeByteBuffer8;
                            nativeByteBuffer5 = nativeByteBuffer6;
                            if (r5 != 0) {
                                r5.dispose();
                            }
                            if (nativeByteBuffer7 != null) {
                                nativeByteBuffer7.reuse();
                            }
                            if (nativeByteBuffer5 != null) {
                                nativeByteBuffer5.reuse();
                                throw th;
                            }
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        nativeByteBuffer = nativeByteBuffer12;
                        nativeByteBuffer2 = nativeByteBuffer10;
                        r12 = sQLitePreparedStatementExecuteFast;
                        r5 = r12;
                        nativeByteBuffer7 = nativeByteBuffer;
                        nativeByteBuffer5 = nativeByteBuffer2;
                        if (r5 != 0) {
                        }
                        if (nativeByteBuffer7 != null) {
                        }
                        if (nativeByteBuffer5 != null) {
                        }
                    }
                } else {
                    SQLitePreparedStatement sQLitePreparedStatementExecuteFast2 = getMessagesStorage().getDatabase().executeFast("UPDATE stickers_featured SET date = ? WHERE id = ? AND emoji = ?");
                    sQLitePreparedStatementExecuteFast2.bindInteger(1, i);
                    sQLitePreparedStatementExecuteFast2.bindInteger(2, z ? 2 : 1);
                    sQLitePreparedStatementExecuteFast2.bindInteger(3, z ? 1 : 0);
                    sQLitePreparedStatementExecuteFast2.step();
                    nativeByteBuffer9 = null;
                    sQLitePreparedStatement = sQLitePreparedStatementExecuteFast2;
                }
                sQLitePreparedStatement.dispose();
                if (nativeByteBuffer11 != null) {
                    nativeByteBuffer11.reuse();
                }
                if (nativeByteBuffer9 != null) {
                    nativeByteBuffer9.reuse();
                }
            } catch (Exception e3) {
                exc = e3;
                NativeByteBuffer nativeByteBuffer13 = nativeByteBuffer11;
                nativeByteBuffer6 = nativeByteBuffer13;
                r52 = nativeByteBuffer11;
                nativeByteBuffer8 = nativeByteBuffer13;
                FileLog.m898e(exc);
                if (r52 != 0) {
                    r52.dispose();
                }
                if (nativeByteBuffer8 != null) {
                    nativeByteBuffer8.reuse();
                }
                if (nativeByteBuffer6 == null) {
                    nativeByteBuffer6.reuse();
                }
            } catch (Throwable th5) {
                th = th5;
                NativeByteBuffer nativeByteBuffer14 = nativeByteBuffer11;
                nativeByteBuffer5 = nativeByteBuffer14;
                r5 = nativeByteBuffer11;
                nativeByteBuffer7 = nativeByteBuffer14;
                if (r5 != 0) {
                }
                if (nativeByteBuffer7 != null) {
                }
                if (nativeByteBuffer5 != null) {
                }
            }
        } catch (Exception e4) {
            exc = e4;
            nativeByteBuffer3 = null;
            nativeByteBuffer4 = null;
            this = this;
        } catch (Throwable th6) {
            th = th6;
            nativeByteBuffer = null;
            nativeByteBuffer2 = null;
            this = this;
        }
    }

    private long calcFeaturedStickersHash(boolean z, ArrayList<TLRPC.StickerSetCovered> arrayList) {
        long jCalcHash = 0;
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC.StickerSet stickerSet = arrayList.get(i).set;
                if (!stickerSet.archived) {
                    jCalcHash = calcHash(jCalcHash, stickerSet.id);
                    if (this.unreadStickerSets[z ? 1 : 0].contains(Long.valueOf(stickerSet.id))) {
                        jCalcHash = calcHash(jCalcHash, 1L);
                    }
                }
            }
        }
        return jCalcHash;
    }

    public void markFeaturedStickersAsRead(boolean z, boolean z2) {
        if (this.unreadStickerSets[z ? 1 : 0].isEmpty()) {
            return;
        }
        this.unreadStickerSets[z ? 1 : 0].clear();
        this.loadFeaturedHash[z ? 1 : 0] = calcFeaturedStickersHash(z, this.featuredStickerSets[z ? 1 : 0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(z ? NotificationCenter.featuredEmojiDidLoad : NotificationCenter.featuredStickersDidLoad, new Object[0]);
        putFeaturedStickersToCache(z, this.featuredStickerSets[z ? 1 : 0], this.unreadStickerSets[z ? 1 : 0], this.loadFeaturedDate[z ? 1 : 0], this.loadFeaturedHash[z ? 1 : 0], this.loadFeaturedPremium);
        if (z2) {
            getConnectionsManager().sendRequest(new TLRPC.TL_messages_readFeaturedStickers(), new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda52
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    MediaDataController.m5636$r8$lambda$rHrY4a_DFsmIUCajNDML8Ai9o4(tLObject, tL_error);
                }
            });
        }
    }

    public long getFeaturedStickersHashWithoutUnread(boolean z) {
        long jCalcHash = 0;
        for (int i = 0; i < this.featuredStickerSets[z ? 1 : 0].size(); i++) {
            TLRPC.StickerSet stickerSet = this.featuredStickerSets[z ? 1 : 0].get(i).set;
            if (!stickerSet.archived) {
                jCalcHash = calcHash(jCalcHash, stickerSet.id);
            }
        }
        return jCalcHash;
    }

    public void markFeaturedStickersByIdAsRead(final boolean z, final long j) {
        if (!this.unreadStickerSets[z ? 1 : 0].contains(Long.valueOf(j)) || this.readingStickerSets[z ? 1 : 0].contains(Long.valueOf(j))) {
            return;
        }
        this.readingStickerSets[z ? 1 : 0].add(Long.valueOf(j));
        TLRPC.TL_messages_readFeaturedStickers tL_messages_readFeaturedStickers = new TLRPC.TL_messages_readFeaturedStickers();
        tL_messages_readFeaturedStickers.id.add(Long.valueOf(j));
        getConnectionsManager().sendRequest(tL_messages_readFeaturedStickers, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda222
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                MediaDataController.$r8$lambda$zhqEPOObymLJy4FpHHGUHMD3j5o(tLObject, tL_error);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda223
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$markFeaturedStickersByIdAsRead$68(z, j);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$markFeaturedStickersByIdAsRead$68(boolean z, long j) {
        this.unreadStickerSets[z ? 1 : 0].remove(Long.valueOf(j));
        this.readingStickerSets[z ? 1 : 0].remove(Long.valueOf(j));
        this.loadFeaturedHash[z ? 1 : 0] = calcFeaturedStickersHash(z, this.featuredStickerSets[z ? 1 : 0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(z ? NotificationCenter.featuredEmojiDidLoad : NotificationCenter.featuredStickersDidLoad, new Object[0]);
        putFeaturedStickersToCache(z, this.featuredStickerSets[z ? 1 : 0], this.unreadStickerSets[z ? 1 : 0], this.loadFeaturedDate[z ? 1 : 0], this.loadFeaturedHash[z ? 1 : 0], this.loadFeaturedPremium);
    }

    public int getArchivedStickersCount(int i) {
        return this.archivedStickersCount[i];
    }

    public void verifyAnimatedStickerMessage(TLRPC.Message message) {
        verifyAnimatedStickerMessage(message, false);
    }

    public void verifyAnimatedStickerMessage(final TLRPC.Message message, boolean z) {
        if (message == null) {
            return;
        }
        TLRPC.Document document = MessageObject.getDocument(message);
        final String stickerSetName = MessageObject.getStickerSetName(document);
        if (TextUtils.isEmpty(stickerSetName)) {
            return;
        }
        TLRPC.TL_messages_stickerSet tL_messages_stickerSet = this.stickerSetsByName.get(stickerSetName);
        if (tL_messages_stickerSet == null) {
            if (z) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda197
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$verifyAnimatedStickerMessage$69(message, stickerSetName);
                    }
                });
                return;
            } else {
                lambda$verifyAnimatedStickerMessage$69(message, stickerSetName);
                return;
            }
        }
        int size = tL_messages_stickerSet.documents.size();
        for (int i = 0; i < size; i++) {
            TLRPC.Document document2 = tL_messages_stickerSet.documents.get(i);
            if (document2.id == document.id && document2.dc_id == document.dc_id) {
                message.stickerVerified = 1;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: verifyAnimatedStickerMessageInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$verifyAnimatedStickerMessage$69(TLRPC.Message message, final String str) {
        ArrayList<TLRPC.Message> arrayList = this.verifyingMessages.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.verifyingMessages.put(str, arrayList);
        }
        arrayList.add(message);
        TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
        tL_messages_getStickerSet.stickerset = MessageObject.getInputStickerSet(message);
        getConnectionsManager().sendRequest(tL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$verifyAnimatedStickerMessageInternal$71(str, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$verifyAnimatedStickerMessageInternal$71(final String str, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$verifyAnimatedStickerMessageInternal$70(str, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$verifyAnimatedStickerMessageInternal$70(String str, TLObject tLObject) {
        ArrayList<TLRPC.Message> arrayList = this.verifyingMessages.get(str);
        if (tLObject != null) {
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject;
            storeTempStickerSet(tL_messages_stickerSet);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                TLRPC.Message message = arrayList.get(i);
                TLRPC.Document document = MessageObject.getDocument(message);
                int size2 = tL_messages_stickerSet.documents.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size2) {
                        break;
                    }
                    TLRPC.Document document2 = tL_messages_stickerSet.documents.get(i2);
                    if (document2.id == document.id && document2.dc_id == document.dc_id) {
                        message.stickerVerified = 1;
                        break;
                    }
                    i2++;
                }
                if (message.stickerVerified == 0) {
                    message.stickerVerified = 2;
                }
            }
        } else {
            int size3 = arrayList.size();
            for (int i3 = 0; i3 < size3; i3++) {
                arrayList.get(i3).stickerVerified = 2;
            }
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didVerifyMessagesStickers, arrayList);
        getMessagesStorage().updateMessageVerifyFlags(arrayList);
    }

    public void loadArchivedStickersCount(final int i, boolean z) {
        if (z) {
            int i2 = MessagesController.getNotificationsSettings(this.currentAccount).getInt("archivedStickersCount" + i, -1);
            if (i2 == -1) {
                loadArchivedStickersCount(i, false);
                return;
            } else {
                this.archivedStickersCount[i] = i2;
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.archivedStickersCountDidLoad, Integer.valueOf(i));
                return;
            }
        }
        TLRPC.TL_messages_getArchivedStickers tL_messages_getArchivedStickers = new TLRPC.TL_messages_getArchivedStickers();
        tL_messages_getArchivedStickers.limit = 0;
        tL_messages_getArchivedStickers.masks = i == 1;
        tL_messages_getArchivedStickers.emojis = i == 5;
        getConnectionsManager().sendRequest(tL_messages_getArchivedStickers, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda130
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadArchivedStickersCount$73(i, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadArchivedStickersCount$73(final int i, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadArchivedStickersCount$72(tL_error, tLObject, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadArchivedStickersCount$72(TLRPC.TL_error tL_error, TLObject tLObject, int i) {
        if (tL_error == null) {
            TLRPC.TL_messages_archivedStickers tL_messages_archivedStickers = (TLRPC.TL_messages_archivedStickers) tLObject;
            this.archivedStickersCount[i] = tL_messages_archivedStickers.count;
            MessagesController.getNotificationsSettings(this.currentAccount).edit().putInt("archivedStickersCount" + i, tL_messages_archivedStickers.count).apply();
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.archivedStickersCountDidLoad, Integer.valueOf(i));
        }
    }

    private void processLoadStickersResponse(int i, TLRPC.TL_messages_allStickers tL_messages_allStickers) {
        processLoadStickersResponse(i, tL_messages_allStickers, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void processLoadStickersResponse(int i, TLRPC.TL_messages_allStickers tL_messages_allStickers, Runnable runnable) {
        final LongSparseArray longSparseArray;
        final TLRPC.TL_messages_allStickers tL_messages_allStickers2;
        final int i2;
        final ArrayList<TLRPC.TL_messages_stickerSet> arrayList = new ArrayList<>();
        if (tL_messages_allStickers.sets.isEmpty()) {
            processLoadedStickers(i, arrayList, false, (int) (System.currentTimeMillis() / 1000), tL_messages_allStickers.hash2, runnable);
            return;
        }
        MediaDataController mediaDataController = this;
        int i3 = i;
        LongSparseArray longSparseArray2 = new LongSparseArray();
        int i4 = 0;
        while (i4 < tL_messages_allStickers.sets.size()) {
            final TLRPC.StickerSet stickerSet = tL_messages_allStickers.sets.get(i4);
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = mediaDataController.stickerSetsById.get(stickerSet.id);
            if (tL_messages_stickerSet != null) {
                TLRPC.StickerSet stickerSet2 = tL_messages_stickerSet.set;
                if (stickerSet2.hash == stickerSet.hash) {
                    stickerSet2.archived = stickerSet.archived;
                    stickerSet2.installed = stickerSet.installed;
                    stickerSet2.official = stickerSet.official;
                    longSparseArray2.put(stickerSet2.id, tL_messages_stickerSet);
                    arrayList.add(tL_messages_stickerSet);
                    if (longSparseArray2.size() == tL_messages_allStickers.sets.size()) {
                        mediaDataController.processLoadedStickers(i3, arrayList, false, (int) (System.currentTimeMillis() / 1000), tL_messages_allStickers.hash2);
                    }
                    longSparseArray = longSparseArray2;
                    tL_messages_allStickers2 = tL_messages_allStickers;
                    i2 = i4;
                } else {
                    arrayList.add(null);
                    TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
                    TLRPC.TL_inputStickerSetID tL_inputStickerSetID = new TLRPC.TL_inputStickerSetID();
                    tL_messages_getStickerSet.stickerset = tL_inputStickerSetID;
                    tL_inputStickerSetID.id = stickerSet.id;
                    tL_inputStickerSetID.access_hash = stickerSet.access_hash;
                    ConnectionsManager connectionsManager = mediaDataController.getConnectionsManager();
                    final int i5 = i3;
                    final MediaDataController mediaDataController2 = mediaDataController;
                    longSparseArray = longSparseArray2;
                    tL_messages_allStickers2 = tL_messages_allStickers;
                    i2 = i4;
                    RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda221
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$processLoadStickersResponse$75(arrayList, i2, longSparseArray, stickerSet, tL_messages_allStickers2, i5, tLObject, tL_error);
                        }
                    };
                    mediaDataController = mediaDataController2;
                    i3 = i5;
                    connectionsManager.sendRequest(tL_messages_getStickerSet, requestDelegate);
                }
            }
            i4 = i2 + 1;
            longSparseArray2 = longSparseArray;
            tL_messages_allStickers = tL_messages_allStickers2;
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadStickersResponse$75(final ArrayList arrayList, final int i, final LongSparseArray longSparseArray, final TLRPC.StickerSet stickerSet, final TLRPC.TL_messages_allStickers tL_messages_allStickers, final int i2, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda87
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadStickersResponse$74(tLObject, arrayList, i, longSparseArray, stickerSet, tL_messages_allStickers, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadStickersResponse$74(TLObject tLObject, ArrayList arrayList, int i, LongSparseArray longSparseArray, TLRPC.StickerSet stickerSet, TLRPC.TL_messages_allStickers tL_messages_allStickers, int i2) {
        TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject;
        arrayList.set(i, tL_messages_stickerSet);
        longSparseArray.put(stickerSet.id, tL_messages_stickerSet);
        if (longSparseArray.size() == tL_messages_allStickers.sets.size()) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                if (arrayList.get(i3) == null) {
                    arrayList.remove(i3);
                    i3--;
                }
                i3++;
            }
            processLoadedStickers(i2, arrayList, false, (int) (System.currentTimeMillis() / 1000), tL_messages_allStickers.hash2);
        }
    }

    public void checkPremiumGiftStickers() {
        if (getUserConfig().premiumGiftsStickerPack != null) {
            String str = getUserConfig().premiumGiftsStickerPack;
            TLRPC.TL_messages_stickerSet stickerSetByName = getStickerSetByName(str);
            if (stickerSetByName == null) {
                stickerSetByName = getStickerSetByEmojiOrName(str);
            }
            if (stickerSetByName == null) {
                getInstance(this.currentAccount).loadStickersByEmojiOrName(str, false, true);
            }
        }
        if (this.loadingPremiumGiftStickers || System.currentTimeMillis() - getUserConfig().lastUpdatedPremiumGiftsStickerPack < DurationKt.MILLIS_IN_DAY) {
            return;
        }
        this.loadingPremiumGiftStickers = true;
        TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
        tL_messages_getStickerSet.stickerset = new TLRPC.TL_inputStickerSetPremiumGifts();
        getConnectionsManager().sendRequest(tL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda35
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$checkPremiumGiftStickers$77(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPremiumGiftStickers$77(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkPremiumGiftStickers$76(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPremiumGiftStickers$76(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_messages_stickerSet) {
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject;
            getUserConfig().premiumGiftsStickerPack = tL_messages_stickerSet.set.short_name;
            getUserConfig().lastUpdatedPremiumGiftsStickerPack = System.currentTimeMillis();
            getUserConfig().saveConfig(false);
            processLoadedDiceStickers(getUserConfig().premiumGiftsStickerPack, false, tL_messages_stickerSet, false, (int) (System.currentTimeMillis() / 1000));
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didUpdatePremiumGiftStickers, new Object[0]);
        }
    }

    public void checkTonGiftStickers() {
        if (getUserConfig().premiumTonStickerPack != null) {
            String str = getUserConfig().premiumTonStickerPack;
            TLRPC.TL_messages_stickerSet stickerSetByName = getStickerSetByName(str);
            if (stickerSetByName == null) {
                stickerSetByName = getStickerSetByEmojiOrName(str);
            }
            if (stickerSetByName == null) {
                getInstance(this.currentAccount).loadStickersByEmojiOrName(str, false, true);
            }
        }
        if (this.loadingPremiumTonStickers || System.currentTimeMillis() - getUserConfig().lastUpdatedTonGiftsStickerPack < DurationKt.MILLIS_IN_DAY) {
            return;
        }
        this.loadingPremiumTonStickers = true;
        TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
        tL_messages_getStickerSet.stickerset = new TLRPC.TL_inputStickerSetTonGifts();
        getConnectionsManager().sendRequest(tL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda78
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$checkTonGiftStickers$79(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkTonGiftStickers$79(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda90
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkTonGiftStickers$78(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkTonGiftStickers$78(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_messages_stickerSet) {
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject;
            getUserConfig().premiumTonStickerPack = tL_messages_stickerSet.set.short_name;
            getUserConfig().lastUpdatedTonGiftsStickerPack = System.currentTimeMillis();
            getUserConfig().saveConfig(false);
            processLoadedDiceStickers(getUserConfig().premiumTonStickerPack, false, tL_messages_stickerSet, false, (int) (System.currentTimeMillis() / 1000));
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didUpdateTonGiftStickers, new Object[0]);
        }
    }

    public void checkGenericAnimations() {
        if (getUserConfig().genericAnimationsStickerPack != null) {
            String str = getUserConfig().genericAnimationsStickerPack;
            TLRPC.TL_messages_stickerSet stickerSetByName = getStickerSetByName(str);
            if (stickerSetByName == null) {
                stickerSetByName = getStickerSetByEmojiOrName(str);
            }
            if (stickerSetByName == null) {
                getInstance(this.currentAccount).loadStickersByEmojiOrName(str, false, true);
            }
        }
        if (this.loadingGenericAnimations || System.currentTimeMillis() - getUserConfig().lastUpdatedGenericAnimations < DurationKt.MILLIS_IN_DAY) {
            return;
        }
        this.loadingGenericAnimations = true;
        TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
        tL_messages_getStickerSet.stickerset = new TLRPC.TL_inputStickerSetEmojiGenericAnimations();
        getConnectionsManager().sendRequest(tL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda125
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$checkGenericAnimations$81(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkGenericAnimations$81(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkGenericAnimations$80(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkGenericAnimations$80(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_messages_stickerSet) {
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject;
            getUserConfig().genericAnimationsStickerPack = tL_messages_stickerSet.set.short_name;
            getUserConfig().lastUpdatedGenericAnimations = System.currentTimeMillis();
            getUserConfig().saveConfig(false);
            processLoadedDiceStickers(getUserConfig().genericAnimationsStickerPack, false, tL_messages_stickerSet, false, (int) (System.currentTimeMillis() / 1000));
            for (int i = 0; i < tL_messages_stickerSet.documents.size(); i++) {
                if (this.currentAccount == UserConfig.selectedAccount) {
                    preloadImage(ImageLocation.getForDocument(tL_messages_stickerSet.documents.get(i)), 0);
                }
            }
        }
    }

    public void checkDefaultTopicIcons() {
        if (getUserConfig().defaultTopicIcons != null) {
            String str = getUserConfig().defaultTopicIcons;
            TLRPC.TL_messages_stickerSet stickerSetByName = getStickerSetByName(str);
            if (stickerSetByName == null) {
                stickerSetByName = getStickerSetByEmojiOrName(str);
            }
            if (stickerSetByName == null) {
                getInstance(this.currentAccount).loadStickersByEmojiOrName(str, false, true);
            }
        }
        if (this.loadingDefaultTopicIcons || System.currentTimeMillis() - getUserConfig().lastUpdatedDefaultTopicIcons < DurationKt.MILLIS_IN_DAY) {
            return;
        }
        this.loadingDefaultTopicIcons = true;
        TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
        tL_messages_getStickerSet.stickerset = new TLRPC.TL_inputStickerSetEmojiDefaultTopicIcons();
        getConnectionsManager().sendRequest(tL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda60
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$checkDefaultTopicIcons$83(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDefaultTopicIcons$83(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkDefaultTopicIcons$82(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDefaultTopicIcons$82(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_messages_stickerSet) {
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject;
            getUserConfig().defaultTopicIcons = tL_messages_stickerSet.set.short_name;
            getUserConfig().lastUpdatedDefaultTopicIcons = System.currentTimeMillis();
            getUserConfig().saveConfig(false);
            processLoadedDiceStickers(getUserConfig().defaultTopicIcons, false, tL_messages_stickerSet, false, (int) (System.currentTimeMillis() / 1000));
        }
    }

    public void loadStickersByEmojiOrName(final String str, final boolean z, boolean z2) {
        if (this.loadingDiceStickerSets.contains(str)) {
            return;
        }
        if (!z || this.diceStickerSetsByEmoji.get(str) == null) {
            this.loadingDiceStickerSets.add(str);
            if (z2) {
                getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda211
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$loadStickersByEmojiOrName$84(str, z);
                    }
                });
                return;
            }
            TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
            if (Objects.equals(getUserConfig().premiumGiftsStickerPack, str)) {
                tL_messages_getStickerSet.stickerset = new TLRPC.TL_inputStickerSetPremiumGifts();
            } else if (z) {
                TLRPC.TL_inputStickerSetDice tL_inputStickerSetDice = new TLRPC.TL_inputStickerSetDice();
                tL_inputStickerSetDice.emoticon = str;
                tL_messages_getStickerSet.stickerset = tL_inputStickerSetDice;
            } else {
                TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
                tL_inputStickerSetShortName.short_name = str;
                tL_messages_getStickerSet.stickerset = tL_inputStickerSetShortName;
            }
            getConnectionsManager().sendRequest(tL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda212
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadStickersByEmojiOrName$86(str, z, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickersByEmojiOrName$84(String str, boolean z) {
        TLRPC.TL_messages_stickerSet tL_messages_stickerSet;
        TLRPC.TL_messages_stickerSet tL_messages_stickerSet2;
        SQLiteCursor sQLiteCursor = null;
        tL_messages_stickerSetTLdeserialize = null;
        tL_messages_stickerSetTLdeserialize = null;
        TLRPC.TL_messages_stickerSet tL_messages_stickerSetTLdeserialize = null;
        int iIntValue = 0;
        try {
            SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT data, date FROM stickers_dice WHERE emoji = ?", str);
            try {
                if (sQLiteCursorQueryFinalized.next()) {
                    NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                    if (nativeByteBufferByteBufferValue != null) {
                        tL_messages_stickerSetTLdeserialize = TLRPC.messages_StickerSet.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                        nativeByteBufferByteBufferValue.reuse();
                    }
                    iIntValue = sQLiteCursorQueryFinalized.intValue(1);
                }
                sQLiteCursorQueryFinalized.dispose();
                tL_messages_stickerSet2 = tL_messages_stickerSetTLdeserialize;
            } catch (Throwable th) {
                th = th;
                tL_messages_stickerSet = tL_messages_stickerSetTLdeserialize;
                sQLiteCursor = sQLiteCursorQueryFinalized;
                try {
                    FileLog.m898e(th);
                    if (sQLiteCursor != null) {
                        sQLiteCursor.dispose();
                    }
                    tL_messages_stickerSet2 = tL_messages_stickerSet;
                } finally {
                }
            }
        } catch (Throwable th2) {
            th = th2;
            tL_messages_stickerSet = null;
        }
        processLoadedDiceStickers(str, z, tL_messages_stickerSet2, true, iIntValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickersByEmojiOrName$86(final String str, final boolean z, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda107
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadStickersByEmojiOrName$85(tL_error, tLObject, str, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickersByEmojiOrName$85(TLRPC.TL_error tL_error, TLObject tLObject, String str, boolean z) {
        if (tLObject instanceof TLRPC.TL_messages_stickerSet) {
            processLoadedDiceStickers(str, z, (TLRPC.TL_messages_stickerSet) tLObject, false, (int) (System.currentTimeMillis() / 1000));
        } else {
            processLoadedDiceStickers(str, z, null, false, (int) (System.currentTimeMillis() / 1000));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedDiceStickers$87(String str) {
        this.loadingDiceStickerSets.remove(str);
    }

    private void processLoadedDiceStickers(final String str, final boolean z, final TLRPC.TL_messages_stickerSet tL_messages_stickerSet, final boolean z2, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedDiceStickers$87(str);
            }
        });
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedDiceStickers$90(z2, tL_messages_stickerSet, i, str, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedDiceStickers$90(boolean z, final TLRPC.TL_messages_stickerSet tL_messages_stickerSet, int i, final String str, final boolean z2) {
        if (z) {
            if (tL_messages_stickerSet == null || Math.abs((System.currentTimeMillis() / 1000) - ((long) i)) >= 86400) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda157
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$processLoadedDiceStickers$88(str, z2);
                    }
                }, (tL_messages_stickerSet != null || z) ? 0L : 1000L);
                if (tL_messages_stickerSet == null) {
                    return;
                }
            }
        }
        if (tL_messages_stickerSet != null) {
            if (!z) {
                putDiceStickersToCache(str, tL_messages_stickerSet, i);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda158
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processLoadedDiceStickers$89(str, tL_messages_stickerSet);
                }
            });
        } else {
            if (z) {
                return;
            }
            putDiceStickersToCache(str, null, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedDiceStickers$88(String str, boolean z) {
        loadStickersByEmojiOrName(str, z, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedDiceStickers$89(String str, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        this.diceStickerSetsByEmoji.put(str, tL_messages_stickerSet);
        this.diceEmojiStickerSetsById.put(tL_messages_stickerSet.set.id, str);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.diceStickersDidLoad, str);
    }

    private void putDiceStickersToCache(final String str, final TLRPC.TL_messages_stickerSet tL_messages_stickerSet, final int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda85
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$putDiceStickersToCache$91(tL_messages_stickerSet, str, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putDiceStickersToCache$91(TLRPC.TL_messages_stickerSet tL_messages_stickerSet, String str, int i) {
        try {
            if (tL_messages_stickerSet != null) {
                SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO stickers_dice VALUES(?, ?, ?)");
                sQLitePreparedStatementExecuteFast.requery();
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tL_messages_stickerSet.getObjectSize());
                tL_messages_stickerSet.serializeToStream(nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.bindString(1, str);
                sQLitePreparedStatementExecuteFast.bindByteBuffer(2, nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.bindInteger(3, i);
                sQLitePreparedStatementExecuteFast.step();
                nativeByteBuffer.reuse();
                sQLitePreparedStatementExecuteFast.dispose();
                return;
            }
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast2 = getMessagesStorage().getDatabase().executeFast("UPDATE stickers_dice SET date = ?");
            sQLitePreparedStatementExecuteFast2.requery();
            sQLitePreparedStatementExecuteFast2.bindInteger(1, i);
            sQLitePreparedStatementExecuteFast2.step();
            sQLitePreparedStatementExecuteFast2.dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public void markSetInstalling(long j, boolean z) {
        this.uninstalledForceStickerSetsById.remove(Long.valueOf(j));
        if (z && !this.installedForceStickerSetsById.contains(Long.valueOf(j))) {
            this.installedForceStickerSetsById.add(Long.valueOf(j));
        }
        if (z) {
            return;
        }
        this.installedForceStickerSetsById.remove(Long.valueOf(j));
    }

    public void markSetUninstalling(long j, boolean z) {
        this.installedForceStickerSetsById.remove(Long.valueOf(j));
        if (z && !this.uninstalledForceStickerSetsById.contains(Long.valueOf(j))) {
            this.uninstalledForceStickerSetsById.add(Long.valueOf(j));
        }
        if (z) {
            return;
        }
        this.uninstalledForceStickerSetsById.remove(Long.valueOf(j));
    }

    public void loadStickers(int i, boolean z, boolean z2) {
        loadStickers(i, z, z2, false, null);
    }

    public void loadStickers(int i, boolean z, boolean z2, boolean z3) {
        loadStickers(i, z, z2, z3, null);
    }

    public void loadStickers(final int i, boolean z, final boolean z2, boolean z3, final Utilities.Callback<ArrayList<TLRPC.TL_messages_stickerSet>> callback) {
        long j;
        TLObject tLObject;
        if (this.loadingStickers[i]) {
            if (z3) {
                this.scheduledLoadStickers[i] = new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda192
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$loadStickers$92(i, z2, callback);
                    }
                };
                return;
            } else {
                if (callback != null) {
                    callback.run(null);
                    return;
                }
                return;
            }
        }
        if (i == 3) {
            if (this.featuredStickerSets[0].isEmpty() || !getMessagesController().preloadFeaturedStickers) {
                if (callback != null) {
                    callback.run(null);
                    return;
                }
                return;
            }
        } else if (i == 6) {
            if (this.featuredStickerSets[1].isEmpty() || !getMessagesController().preloadFeaturedStickers) {
                if (callback != null) {
                    callback.run(null);
                    return;
                }
                return;
            }
        } else if (i != 4) {
            loadArchivedStickersCount(i, z);
        }
        this.loadingStickers[i] = true;
        if (z) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda193
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadStickers$94(i, callback);
                }
            });
            return;
        }
        if (i == 3 || i == 6) {
            char c2 = i != 6 ? (char) 0 : (char) 1;
            TLRPC.TL_messages_allStickers tL_messages_allStickers = new TLRPC.TL_messages_allStickers();
            tL_messages_allStickers.hash2 = this.loadFeaturedHash[c2];
            int size = this.featuredStickerSets[c2].size();
            for (int i2 = 0; i2 < size; i2++) {
                tL_messages_allStickers.sets.add(this.featuredStickerSets[c2].get(i2).set);
            }
            processLoadStickersResponse(i, tL_messages_allStickers, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda194
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.$r8$lambda$vntmLI7gZQwx7oyMWGW9A3lJaUE(callback);
                }
            });
            return;
        }
        if (i == 4) {
            TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
            tL_messages_getStickerSet.stickerset = new TLRPC.TL_inputStickerSetAnimatedEmoji();
            getConnectionsManager().sendRequest(tL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda195
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadStickers$98(i, callback, tLObject2, tL_error);
                }
            });
            return;
        }
        if (i == 0) {
            TLRPC.TL_messages_getAllStickers tL_messages_getAllStickers = new TLRPC.TL_messages_getAllStickers();
            j = z2 ? 0L : this.loadHash[i];
            tL_messages_getAllStickers.hash = j;
            tLObject = tL_messages_getAllStickers;
        } else if (i == 5) {
            TLRPC.TL_messages_getEmojiStickers tL_messages_getEmojiStickers = new TLRPC.TL_messages_getEmojiStickers();
            j = z2 ? 0L : this.loadHash[i];
            tL_messages_getEmojiStickers.hash = j;
            tLObject = tL_messages_getEmojiStickers;
        } else {
            TLRPC.TL_messages_getMaskStickers tL_messages_getMaskStickers = new TLRPC.TL_messages_getMaskStickers();
            j = z2 ? 0L : this.loadHash[i];
            tL_messages_getMaskStickers.hash = j;
            tLObject = tL_messages_getMaskStickers;
        }
        final long j2 = j;
        getConnectionsManager().sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda196
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadStickers$102(i, callback, j2, tLObject2, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickers$92(int i, boolean z, Utilities.Callback callback) {
        loadStickers(i, false, z, false, callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickers$94(int i, final Utilities.Callback callback) {
        final ArrayList<TLRPC.TL_messages_stickerSet> arrayList = new ArrayList<>();
        int iIntValue = 0;
        long jCalcStickersHash = 0;
        SQLiteCursor sQLiteCursorQueryFinalized = null;
        try {
            sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT data, date, hash FROM stickers_v2 WHERE id = " + (i + 1), new Object[0]);
            if (sQLiteCursorQueryFinalized.next()) {
                NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                if (nativeByteBufferByteBufferValue != null) {
                    int int32 = nativeByteBufferByteBufferValue.readInt32(false);
                    for (int i2 = 0; i2 < int32; i2++) {
                        arrayList.add(TLRPC.messages_StickerSet.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false));
                    }
                    nativeByteBufferByteBufferValue.reuse();
                }
                iIntValue = sQLiteCursorQueryFinalized.intValue(1);
                jCalcStickersHash = calcStickersHash(arrayList);
            }
        } catch (Throwable th) {
            try {
                FileLog.m898e(th);
                if (sQLiteCursorQueryFinalized != null) {
                }
                processLoadedStickers(i, arrayList, true, iIntValue, jCalcStickersHash, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda18
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaDataController.$r8$lambda$xvNAmCWvBa0GUXVEv9YwmUus0D4(callback, arrayList);
                    }
                });
            } finally {
            }
        }
        sQLiteCursorQueryFinalized.dispose();
        processLoadedStickers(i, arrayList, true, iIntValue, jCalcStickersHash, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.$r8$lambda$xvNAmCWvBa0GUXVEv9YwmUus0D4(callback, arrayList);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$xvNAmCWvBa0GUXVEv9YwmUus0D4(Utilities.Callback callback, ArrayList arrayList) {
        if (callback != null) {
            callback.run(arrayList);
        }
    }

    public static /* synthetic */ void $r8$lambda$vntmLI7gZQwx7oyMWGW9A3lJaUE(Utilities.Callback callback) {
        if (callback != null) {
            callback.run(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickers$98(int i, final Utilities.Callback callback, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_messages_stickerSet) {
            ArrayList<TLRPC.TL_messages_stickerSet> arrayList = new ArrayList<>();
            arrayList.add((TLRPC.TL_messages_stickerSet) tLObject);
            processLoadedStickers(i, arrayList, false, (int) (System.currentTimeMillis() / 1000), calcStickersHash(arrayList), new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.m5628$r8$lambda$krdduKsZn86HdkyYfwfqP7b6As(callback);
                }
            });
            return;
        }
        processLoadedStickers(i, null, false, (int) (System.currentTimeMillis() / 1000), 0L, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.m5617$r8$lambda$eMls99RzoLXggJ7fmhhDAOKe4(callback);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$krdduKsZn86HdkyYfwfqP7b6-As, reason: not valid java name */
    public static /* synthetic */ void m5628$r8$lambda$krdduKsZn86HdkyYfwfqP7b6As(Utilities.Callback callback) {
        if (callback != null) {
            callback.run(null);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$eMls99-RzoLXggJ7fmhhDAO-Ke4, reason: not valid java name */
    public static /* synthetic */ void m5617$r8$lambda$eMls99RzoLXggJ7fmhhDAOKe4(Utilities.Callback callback) {
        if (callback != null) {
            callback.run(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickers$102(final int i, final Utilities.Callback callback, final long j, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda238
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadStickers$101(tLObject, i, callback, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickers$101(TLObject tLObject, int i, final Utilities.Callback callback, long j) {
        if (tLObject instanceof TLRPC.TL_messages_allStickers) {
            processLoadStickersResponse(i, (TLRPC.TL_messages_allStickers) tLObject, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda164
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.m5611$r8$lambda$_BCRf_vaZd9KdWZ6p58RKK0KzM(callback);
                }
            });
        } else {
            processLoadedStickers(i, null, false, (int) (System.currentTimeMillis() / 1000), j, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda165
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.m5584$r8$lambda$KdwH2uIxp53vjHwfOAVaasqx4(callback);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$_BCRf_va-Zd9KdWZ6p58RKK0KzM, reason: not valid java name */
    public static /* synthetic */ void m5611$r8$lambda$_BCRf_vaZd9KdWZ6p58RKK0KzM(Utilities.Callback callback) {
        if (callback != null) {
            callback.run(null);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$K-dwH2uIxp53vjHwfOAVa-asqx4, reason: not valid java name */
    public static /* synthetic */ void m5584$r8$lambda$KdwH2uIxp53vjHwfOAVaasqx4(Utilities.Callback callback) {
        if (callback != null) {
            callback.run(null);
        }
    }

    private void putStickersToCache(final int i, ArrayList<TLRPC.TL_messages_stickerSet> arrayList, final int i2, final long j) {
        final ArrayList arrayList2 = arrayList != null ? new ArrayList(arrayList) : null;
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda108
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$putStickersToCache$103(arrayList2, i, i2, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putStickersToCache$103(ArrayList arrayList, int i, int i2, long j) {
        try {
            if (arrayList != null) {
                SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO stickers_v2 VALUES(?, ?, ?, ?)");
                sQLitePreparedStatementExecuteFast.requery();
                int objectSize = 4;
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    objectSize += ((TLRPC.TL_messages_stickerSet) arrayList.get(i3)).getObjectSize();
                }
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(objectSize);
                nativeByteBuffer.writeInt32(arrayList.size());
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    ((TLRPC.TL_messages_stickerSet) arrayList.get(i4)).serializeToStream(nativeByteBuffer);
                }
                sQLitePreparedStatementExecuteFast.bindInteger(1, i + 1);
                sQLitePreparedStatementExecuteFast.bindByteBuffer(2, nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.bindInteger(3, i2);
                sQLitePreparedStatementExecuteFast.bindLong(4, j);
                sQLitePreparedStatementExecuteFast.step();
                nativeByteBuffer.reuse();
                sQLitePreparedStatementExecuteFast.dispose();
                return;
            }
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast2 = getMessagesStorage().getDatabase().executeFast("UPDATE stickers_v2 SET date = ?");
            sQLitePreparedStatementExecuteFast2.requery();
            sQLitePreparedStatementExecuteFast2.bindLong(1, i2);
            sQLitePreparedStatementExecuteFast2.step();
            sQLitePreparedStatementExecuteFast2.dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public String getStickerSetName(long j) {
        TLRPC.TL_messages_stickerSet tL_messages_stickerSet = this.stickerSetsById.get(j);
        if (tL_messages_stickerSet != null) {
            return tL_messages_stickerSet.set.short_name;
        }
        TLRPC.StickerSetCovered stickerSetCovered = this.featuredStickerSetsById[0].get(j);
        if (stickerSetCovered != null) {
            return stickerSetCovered.set.short_name;
        }
        TLRPC.StickerSetCovered stickerSetCovered2 = this.featuredStickerSetsById[1].get(j);
        if (stickerSetCovered2 != null) {
            return stickerSetCovered2.set.short_name;
        }
        return null;
    }

    public static long getStickerSetId(TLRPC.Document document) {
        if (document == null) {
            return -1L;
        }
        for (int i = 0; i < document.attributes.size(); i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) || (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji)) {
                TLRPC.InputStickerSet inputStickerSet = documentAttribute.stickerset;
                if (inputStickerSet instanceof TLRPC.TL_inputStickerSetID) {
                    return inputStickerSet.id;
                }
                return -1L;
            }
        }
        return -1L;
    }

    public static TLRPC.InputStickerSet getInputStickerSet(TLRPC.Document document) {
        for (int i = 0; i < document.attributes.size(); i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                TLRPC.InputStickerSet inputStickerSet = documentAttribute.stickerset;
                if (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty) {
                    return null;
                }
                return inputStickerSet;
            }
        }
        return null;
    }

    private static long calcStickersHash(ArrayList<TLRPC.TL_messages_stickerSet> arrayList) {
        long jCalcHash = 0;
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i) != null) {
                if (!arrayList.get(i).set.archived) {
                    jCalcHash = calcHash(jCalcHash, r3.hash);
                }
            }
        }
        return jCalcHash;
    }

    private void processLoadedStickers(int i, ArrayList<TLRPC.TL_messages_stickerSet> arrayList, boolean z, int i2, long j) {
        processLoadedStickers(i, arrayList, z, i2, j, null);
    }

    private void processLoadedStickers(final int i, final ArrayList<TLRPC.TL_messages_stickerSet> arrayList, final boolean z, final int i2, final long j, final Runnable runnable) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda201
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedStickers$104(i);
            }
        });
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda202
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedStickers$108(z, arrayList, i2, j, i, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedStickers$104(int i) {
        this.loadingStickers[i] = false;
        this.stickersLoaded[i] = true;
        Runnable runnable = this.scheduledLoadStickers[i];
        if (runnable != null) {
            runnable.run();
            this.scheduledLoadStickers[i] = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedStickers$108(boolean z, ArrayList arrayList, final int i, final long j, final int i2, final Runnable runnable) {
        final MediaDataController mediaDataController;
        final ArrayList arrayList2;
        ArrayList<TLRPC.TL_messages_stickerSet> arrayList3;
        String str;
        long j2 = 0;
        if ((z && (arrayList == null || BuildVars.DEBUG_PRIVATE_VERSION || Math.abs((System.currentTimeMillis() / 1000) - ((long) i)) >= 3600)) || (!z && arrayList == null && j == 0)) {
            arrayList2 = arrayList;
            Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda181
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processLoadedStickers$105(arrayList2, j, i2);
                }
            };
            mediaDataController = this;
            if (arrayList2 == null && !z) {
                j2 = 1000;
            }
            AndroidUtilities.runOnUIThread(runnable2, j2);
            if (arrayList2 == null) {
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
        } else {
            mediaDataController = this;
            arrayList2 = arrayList;
        }
        if (arrayList2 == null) {
            if (z) {
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda183
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$processLoadedStickers$107(i2, i);
                    }
                });
                mediaDataController.putStickersToCache(i2, null, i, 0L);
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
        }
        try {
            ArrayList<TLRPC.TL_messages_stickerSet> arrayList4 = new ArrayList<>();
            final LongSparseArray longSparseArray = new LongSparseArray();
            final HashMap map = new HashMap();
            final LongSparseArray longSparseArray2 = new LongSparseArray();
            final LongSparseArray longSparseArray3 = new LongSparseArray();
            final HashMap map2 = new HashMap();
            int i3 = 0;
            while (i3 < arrayList2.size()) {
                TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) arrayList2.get(i3);
                if (tL_messages_stickerSet != null && mediaDataController.removingStickerSetsUndos.indexOfKey(tL_messages_stickerSet.set.id) < 0) {
                    arrayList4.add(tL_messages_stickerSet);
                    longSparseArray.put(tL_messages_stickerSet.set.id, tL_messages_stickerSet);
                    map.put(tL_messages_stickerSet.set.short_name, tL_messages_stickerSet);
                    for (int i4 = 0; i4 < tL_messages_stickerSet.documents.size(); i4++) {
                        TLRPC.Document document = tL_messages_stickerSet.documents.get(i4);
                        if (document != null && !(document instanceof TLRPC.TL_documentEmpty)) {
                            longSparseArray3.put(document.id, document);
                        }
                    }
                    if (!tL_messages_stickerSet.set.archived) {
                        int i5 = 0;
                        while (i5 < tL_messages_stickerSet.packs.size()) {
                            TLRPC.TL_stickerPack tL_stickerPack = tL_messages_stickerSet.packs.get(i5);
                            if (tL_stickerPack != null && (str = tL_stickerPack.emoticon) != null) {
                                String strReplace = str.replace("️", _UrlKt.FRAGMENT_ENCODE_SET);
                                tL_stickerPack.emoticon = strReplace;
                                ArrayList arrayList5 = (ArrayList) map2.get(strReplace);
                                if (arrayList5 == null) {
                                    arrayList5 = new ArrayList();
                                    map2.put(tL_stickerPack.emoticon, arrayList5);
                                }
                                int i6 = 0;
                                while (i6 < tL_stickerPack.documents.size()) {
                                    Long l = tL_stickerPack.documents.get(i6);
                                    int i7 = i3;
                                    if (longSparseArray2.indexOfKey(l.longValue()) < 0) {
                                        longSparseArray2.put(l.longValue(), tL_stickerPack.emoticon);
                                    }
                                    TLRPC.Document document2 = (TLRPC.Document) longSparseArray3.get(l.longValue());
                                    if (document2 != null) {
                                        arrayList5.add(document2);
                                    }
                                    i6++;
                                    i3 = i7;
                                }
                            }
                            i5++;
                            i3 = i3;
                        }
                    }
                }
                i3++;
                mediaDataController = this;
                arrayList2 = arrayList;
            }
            if (z) {
                arrayList3 = arrayList4;
            } else {
                arrayList3 = arrayList4;
                putStickersToCache(i2, arrayList3, i, j);
            }
            final ArrayList<TLRPC.TL_messages_stickerSet> arrayList6 = arrayList3;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda182
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processLoadedStickers$106(i2, longSparseArray, map, arrayList6, j, i, longSparseArray3, map2, longSparseArray2, runnable);
                }
            });
        } catch (Throwable th) {
            FileLog.m898e(th);
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedStickers$105(ArrayList arrayList, long j, int i) {
        if (arrayList != null && j != 0) {
            this.loadHash[i] = j;
        }
        loadStickers(i, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$processLoadedStickers$106(int i, LongSparseArray longSparseArray, HashMap map, ArrayList arrayList, long j, int i2, LongSparseArray longSparseArray2, HashMap map2, LongSparseArray longSparseArray3, Runnable runnable) {
        for (int i3 = 0; i3 < this.stickerSets[i].size(); i3++) {
            TLRPC.StickerSet stickerSet = this.stickerSets[i].get(i3).set;
            this.stickerSetsById.remove(stickerSet.id);
            this.stickerSetsByName.remove(stickerSet.short_name);
            if (i != 3 && i != 6 && i != 4) {
                this.installedStickerSetsById.remove(stickerSet.id);
            }
        }
        for (int i4 = 0; i4 < longSparseArray.size(); i4++) {
            this.stickerSetsById.put(longSparseArray.keyAt(i4), (TLRPC.TL_messages_stickerSet) longSparseArray.valueAt(i4));
            if (i != 3 && i != 6 && i != 4) {
                this.installedStickerSetsById.put(longSparseArray.keyAt(i4), (TLRPC.TL_messages_stickerSet) longSparseArray.valueAt(i4));
            }
        }
        this.stickerSetsByName.putAll(map);
        this.stickerSets[i] = arrayList;
        this.loadHash[i] = j;
        this.loadDate[i] = i2;
        this.stickersByIds[i] = longSparseArray2;
        if (i == 0) {
            this.allStickers = map2;
            this.stickersByEmoji = longSparseArray3;
        } else if (i == 3) {
            this.allStickersFeatured = map2;
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.TRUE);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedStickers$107(int i, int i2) {
        this.loadDate[i] = i2;
    }

    public boolean cancelRemovingStickerSet(long j) {
        Runnable runnable = this.removingStickerSetsUndos.get(j);
        if (runnable == null) {
            return false;
        }
        runnable.run();
        return true;
    }

    public void preloadStickerSetThumb(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        TLRPC.StickerSet stickerSet;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        ArrayList<TLRPC.Document> arrayList;
        if (tL_messages_stickerSet == null || (stickerSet = tL_messages_stickerSet.set) == null || (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(stickerSet.thumbs, 90)) == null || (arrayList = tL_messages_stickerSet.documents) == null || arrayList.isEmpty()) {
            return;
        }
        loadStickerSetThumbInternal(closestPhotoSizeWithSize, tL_messages_stickerSet, arrayList.get(0), tL_messages_stickerSet.set.thumb_version);
    }

    public void preloadStickerSetThumb(TLRPC.StickerSetCovered stickerSetCovered) {
        TLRPC.StickerSet stickerSet;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        if (stickerSetCovered == null || (stickerSet = stickerSetCovered.set) == null || (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(stickerSet.thumbs, 90)) == null) {
            return;
        }
        TLRPC.Document document = stickerSetCovered.cover;
        if (document == null) {
            if (stickerSetCovered.covers.isEmpty()) {
                return;
            } else {
                document = stickerSetCovered.covers.get(0);
            }
        }
        loadStickerSetThumbInternal(closestPhotoSizeWithSize, stickerSetCovered, document, stickerSetCovered.set.thumb_version);
    }

    private void loadStickerSetThumbInternal(TLRPC.PhotoSize photoSize, Object obj, TLRPC.Document document, int i) {
        ImageLocation forSticker = ImageLocation.getForSticker(photoSize, document, i);
        if (forSticker != null) {
            getFileLoader().loadFile(forSticker, obj, forSticker.imageType == 1 ? "tgs" : "webp", 3, 1);
        }
    }

    public void toggleStickerSet(Context context, TLObject tLObject, int i, BaseFragment baseFragment, boolean z, boolean z2) {
        toggleStickerSet(context, tLObject, i, baseFragment, z, z2, null, true);
    }

    public void toggleStickerSet(Context context, TLObject tLObject, int i, BaseFragment baseFragment, boolean z, boolean z2, Runnable runnable, boolean z3) {
        toggleStickerSet(context, tLObject, i, baseFragment, null, z, z2, runnable, z3);
    }

    public void toggleStickerSet(Context context, TLObject tLObject, int i, BaseFragment baseFragment, FrameLayout frameLayout, boolean z, boolean z2, Runnable runnable, boolean z3) {
        toggleStickerSet(context, tLObject, null, i, baseFragment, frameLayout, z, z2, runnable, z3);
    }

    public void toggleStickerSet(final Context context, final TLObject tLObject, final TLRPC.Document document, final int i, final BaseFragment baseFragment, final FrameLayout frameLayout, final boolean z, boolean z2, final Runnable runnable, boolean z3) {
        TLRPC.StickerSet stickerSet;
        TLRPC.TL_messages_stickerSet tL_messages_stickerSet;
        int i2;
        int i3;
        int i4;
        if (tLObject instanceof TLRPC.TL_messages_stickerSet) {
            tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject;
            stickerSet = tL_messages_stickerSet.set;
        } else if (tLObject instanceof TLRPC.StickerSetCovered) {
            stickerSet = ((TLRPC.StickerSetCovered) tLObject).set;
            if (i != 2) {
                tL_messages_stickerSet = this.stickerSetsById.get(stickerSet.id);
                if (tL_messages_stickerSet == null) {
                    return;
                }
            } else {
                tL_messages_stickerSet = null;
            }
        } else {
            Buffer$$ExternalSyntheticBUOutline4.m837m("Invalid type of the given stickerSetObject: ", tLObject.getClass());
            return;
        }
        final TLRPC.TL_messages_stickerSet tL_messages_stickerSet2 = tL_messages_stickerSet;
        final TLRPC.StickerSet stickerSet2 = stickerSet;
        if (stickerSet2.masks) {
            i2 = 1;
        } else {
            i2 = stickerSet2.emojis ? 5 : 0;
        }
        stickerSet2.archived = i == 1;
        int i5 = 0;
        while (true) {
            if (i5 >= this.stickerSets[i2].size()) {
                i3 = 0;
                break;
            }
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet3 = this.stickerSets[i2].get(i5);
            if (tL_messages_stickerSet3.set.id == stickerSet2.id) {
                this.stickerSets[i2].remove(i5);
                if (i == 2) {
                    tL_messages_stickerSet3.set.title = stickerSet2.title;
                    this.stickerSets[i2].add(0, tL_messages_stickerSet3);
                } else if (z3) {
                    this.stickerSetsById.remove(tL_messages_stickerSet3.set.id);
                    this.installedStickerSetsById.remove(tL_messages_stickerSet3.set.id);
                    this.stickerSetsByName.remove(tL_messages_stickerSet3.set.short_name);
                }
                i3 = i5;
            } else {
                i5++;
            }
        }
        this.loadHash[i2] = calcStickersHash(this.stickerSets[i2]);
        putStickersToCache(i2, this.stickerSets[i2], this.loadDate[i2], this.loadHash[i2]);
        if (i != 2) {
            final int i6 = i2;
            if (!z2 || baseFragment == null) {
                i4 = i6;
                toggleStickerSetInternal(context, i, baseFragment, frameLayout, z, tLObject, stickerSet2, document, i4, false);
            } else {
                StickerSetBulletinLayout stickerSetBulletinLayout = new StickerSetBulletinLayout(context, tLObject, i, document, baseFragment.getResourceProvider());
                final boolean[] zArr = new boolean[1];
                markSetUninstalling(stickerSet2.id, true);
                final int i7 = i3;
                i4 = i6;
                Bulletin.UndoButton delayedAction = new Bulletin.UndoButton(context, false).setUndoAction(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda232
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$toggleStickerSet$109(zArr, stickerSet2, i6, i7, tL_messages_stickerSet2, runnable);
                    }
                }).setDelayedAction(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda233
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$toggleStickerSet$110(zArr, context, i, baseFragment, frameLayout, z, tLObject, stickerSet2, document, i6);
                    }
                });
                stickerSetBulletinLayout.setButton(delayedAction);
                LongSparseArray<Runnable> longSparseArray = this.removingStickerSetsUndos;
                long j = stickerSet2.id;
                Objects.requireNonNull(delayedAction);
                longSparseArray.put(j, new MediaDataController$$ExternalSyntheticLambda152(delayedAction));
                if (frameLayout != null) {
                    Bulletin.make(frameLayout, stickerSetBulletinLayout, 2750).show();
                } else {
                    Bulletin.make(baseFragment, stickerSetBulletinLayout, 2750).show();
                }
            }
        } else if (cancelRemovingStickerSet(stickerSet2.id)) {
            i4 = i2;
        } else {
            i4 = i2;
            toggleStickerSetInternal(context, i, baseFragment, frameLayout, z, tLObject, stickerSet2, document, i4, z2);
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i4), Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSet$109(boolean[] zArr, TLRPC.StickerSet stickerSet, int i, int i2, TLRPC.TL_messages_stickerSet tL_messages_stickerSet, Runnable runnable) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        markSetUninstalling(stickerSet.id, false);
        stickerSet.archived = false;
        this.stickerSets[i].add(i2, tL_messages_stickerSet);
        this.stickerSetsById.put(stickerSet.id, tL_messages_stickerSet);
        this.installedStickerSetsById.put(stickerSet.id, tL_messages_stickerSet);
        String str = stickerSet.short_name;
        if (str != null) {
            this.stickerSetsByName.put(str.toLowerCase(), tL_messages_stickerSet);
        }
        this.removingStickerSetsUndos.remove(stickerSet.id);
        this.loadHash[i] = calcStickersHash(this.stickerSets[i]);
        putStickersToCache(i, this.stickerSets[i], this.loadDate[i], this.loadHash[i]);
        if (runnable != null) {
            runnable.run();
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSet$110(boolean[] zArr, Context context, int i, BaseFragment baseFragment, FrameLayout frameLayout, boolean z, TLObject tLObject, TLRPC.StickerSet stickerSet, TLRPC.Document document, int i2) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        toggleStickerSetInternal(context, i, baseFragment, frameLayout, z, tLObject, stickerSet, document, i2, false);
    }

    public void removeMultipleStickerSets(final Context context, final BaseFragment baseFragment, final ArrayList<TLRPC.TL_messages_stickerSet> arrayList) {
        TLRPC.TL_messages_stickerSet tL_messages_stickerSet;
        int i;
        ArrayList<TLRPC.TL_messages_stickerSet>[] arrayListArr;
        if (arrayList == null || arrayList.isEmpty() || (tL_messages_stickerSet = arrayList.get(arrayList.size() - 1)) == null) {
            return;
        }
        TLRPC.StickerSet stickerSet = tL_messages_stickerSet.set;
        if (stickerSet.masks) {
            i = 1;
        } else {
            i = stickerSet.emojis ? 5 : 0;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList.get(i2).set.archived = false;
        }
        final int[] iArr = new int[arrayList.size()];
        int i3 = 0;
        while (true) {
            int size = this.stickerSets[i].size();
            arrayListArr = this.stickerSets;
            if (i3 >= size) {
                break;
            }
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet2 = arrayListArr[i].get(i3);
            int i4 = 0;
            while (true) {
                if (i4 >= arrayList.size()) {
                    break;
                }
                if (tL_messages_stickerSet2.set.id == arrayList.get(i4).set.id) {
                    iArr[i4] = i3;
                    this.stickerSets[i].remove(i3);
                    this.stickerSetsById.remove(tL_messages_stickerSet2.set.id);
                    this.installedStickerSetsById.remove(tL_messages_stickerSet2.set.id);
                    this.stickerSetsByName.remove(tL_messages_stickerSet2.set.short_name);
                    break;
                }
                i4++;
            }
            i3++;
        }
        ArrayList<TLRPC.TL_messages_stickerSet> arrayList2 = arrayListArr[i];
        int i5 = this.loadDate[i];
        long[] jArr = this.loadHash;
        final int i6 = i;
        long jCalcStickersHash = calcStickersHash(arrayList2);
        jArr[i6] = jCalcStickersHash;
        putStickersToCache(i6, arrayList2, i5, jCalcStickersHash);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i6), Boolean.TRUE);
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            markSetUninstalling(arrayList.get(i7).set.id, true);
        }
        StickerSetBulletinLayout stickerSetBulletinLayout = new StickerSetBulletinLayout(context, tL_messages_stickerSet, arrayList.size(), 0, null, baseFragment.getResourceProvider());
        final boolean[] zArr = new boolean[1];
        Bulletin.UndoButton delayedAction = new Bulletin.UndoButton(context, false).setUndoAction(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda150
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeMultipleStickerSets$111(zArr, arrayList, i6, iArr);
            }
        }).setDelayedAction(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda151
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeMultipleStickerSets$112(zArr, arrayList, context, baseFragment, i6);
            }
        });
        stickerSetBulletinLayout.setButton(delayedAction);
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            LongSparseArray<Runnable> longSparseArray = this.removingStickerSetsUndos;
            long j = arrayList.get(i8).set.id;
            Objects.requireNonNull(delayedAction);
            longSparseArray.put(j, new MediaDataController$$ExternalSyntheticLambda152(delayedAction));
        }
        Bulletin.make(baseFragment, stickerSetBulletinLayout, 2750).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeMultipleStickerSets$111(boolean[] zArr, ArrayList arrayList, int i, int[] iArr) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            markSetUninstalling(((TLRPC.TL_messages_stickerSet) arrayList.get(i2)).set.id, false);
            ((TLRPC.TL_messages_stickerSet) arrayList.get(i2)).set.archived = false;
            this.stickerSets[i].add(iArr[i2], (TLRPC.TL_messages_stickerSet) arrayList.get(i2));
            this.stickerSetsById.put(((TLRPC.TL_messages_stickerSet) arrayList.get(i2)).set.id, (TLRPC.TL_messages_stickerSet) arrayList.get(i2));
            this.installedStickerSetsById.put(((TLRPC.TL_messages_stickerSet) arrayList.get(i2)).set.id, (TLRPC.TL_messages_stickerSet) arrayList.get(i2));
            this.stickerSetsByName.put(((TLRPC.TL_messages_stickerSet) arrayList.get(i2)).set.short_name, (TLRPC.TL_messages_stickerSet) arrayList.get(i2));
            this.removingStickerSetsUndos.remove(((TLRPC.TL_messages_stickerSet) arrayList.get(i2)).set.id);
        }
        ArrayList<TLRPC.TL_messages_stickerSet> arrayList2 = this.stickerSets[i];
        int i3 = this.loadDate[i];
        long[] jArr = this.loadHash;
        long jCalcStickersHash = calcStickersHash(arrayList2);
        jArr[i] = jCalcStickersHash;
        putStickersToCache(i, arrayList2, i3, jCalcStickersHash);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeMultipleStickerSets$112(boolean[] zArr, ArrayList arrayList, Context context, BaseFragment baseFragment, int i) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            toggleStickerSetInternal(context, 0, baseFragment, null, true, (TLObject) arrayList.get(i2), ((TLRPC.TL_messages_stickerSet) arrayList.get(i2)).set, null, i, false);
        }
    }

    private void toggleStickerSetInternal(final Context context, int i, final BaseFragment baseFragment, final FrameLayout frameLayout, final boolean z, final TLObject tLObject, final TLRPC.StickerSet stickerSet, final TLRPC.Document document, final int i2, final boolean z2) {
        TLRPC.TL_inputStickerSetID tL_inputStickerSetID = new TLRPC.TL_inputStickerSetID();
        tL_inputStickerSetID.access_hash = stickerSet.access_hash;
        long j = stickerSet.id;
        tL_inputStickerSetID.id = j;
        if (i != 0) {
            TLRPC.TL_messages_installStickerSet tL_messages_installStickerSet = new TLRPC.TL_messages_installStickerSet();
            tL_messages_installStickerSet.stickerset = tL_inputStickerSetID;
            tL_messages_installStickerSet.archived = i == 1;
            markSetInstalling(stickerSet.id, true);
            getConnectionsManager().sendRequest(tL_messages_installStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda99
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$toggleStickerSetInternal$115(stickerSet, baseFragment, z, i2, z2, frameLayout, context, tLObject, document, tLObject2, tL_error);
                }
            });
            return;
        }
        markSetUninstalling(j, true);
        TLRPC.TL_messages_uninstallStickerSet tL_messages_uninstallStickerSet = new TLRPC.TL_messages_uninstallStickerSet();
        tL_messages_uninstallStickerSet.stickerset = tL_inputStickerSetID;
        getConnectionsManager().sendRequest(tL_messages_uninstallStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda100
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                this.f$0.lambda$toggleStickerSetInternal$118(stickerSet, i2, tLObject2, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSetInternal$115(final TLRPC.StickerSet stickerSet, final BaseFragment baseFragment, final boolean z, final int i, final boolean z2, final FrameLayout frameLayout, final Context context, final TLObject tLObject, final TLRPC.Document document, final TLObject tLObject2, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda163
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$toggleStickerSetInternal$114(stickerSet, tLObject2, baseFragment, z, i, tL_error, z2, frameLayout, context, tLObject, document);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSetInternal$114(final TLRPC.StickerSet stickerSet, TLObject tLObject, BaseFragment baseFragment, boolean z, int i, TLRPC.TL_error tL_error, boolean z2, FrameLayout frameLayout, Context context, TLObject tLObject2, TLRPC.Document document) {
        this.removingStickerSetsUndos.remove(stickerSet.id);
        if (tLObject instanceof TLRPC.TL_messages_stickerSetInstallResultArchive) {
            processStickerSetInstallResultArchive(baseFragment, z, i, (TLRPC.TL_messages_stickerSetInstallResultArchive) tLObject);
        }
        loadStickers(i, false, false, true, new Utilities.Callback() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda236
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$toggleStickerSetInternal$113(stickerSet, (ArrayList) obj);
            }
        });
        if (tL_error == null && z2) {
            if (frameLayout != null) {
                Bulletin.make(frameLayout, new StickerSetBulletinLayout(context, tLObject2, 2, document, baseFragment.getResourceProvider()), 1500).show();
            } else if (baseFragment != null) {
                Bulletin.make(baseFragment, new StickerSetBulletinLayout(context, tLObject2, 2, document, baseFragment.getResourceProvider()), 1500).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSetInternal$113(TLRPC.StickerSet stickerSet, ArrayList arrayList) {
        markSetInstalling(stickerSet.id, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSetInternal$118(final TLRPC.StickerSet stickerSet, final int i, TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$toggleStickerSetInternal$117(stickerSet, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSetInternal$117(final TLRPC.StickerSet stickerSet, int i) {
        this.removingStickerSetsUndos.remove(stickerSet.id);
        loadStickers(i, false, true, false, new Utilities.Callback() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda43
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$toggleStickerSetInternal$116(stickerSet, (ArrayList) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSetInternal$116(TLRPC.StickerSet stickerSet, ArrayList arrayList) {
        markSetUninstalling(stickerSet.id, false);
    }

    public void toggleStickerSets(ArrayList<TLRPC.StickerSet> arrayList, final int i, final int i2, final BaseFragment baseFragment, final boolean z) {
        int size = arrayList.size();
        ArrayList<TLRPC.InputStickerSet> arrayList2 = new ArrayList<>(size);
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                break;
            }
            TLRPC.StickerSet stickerSet = arrayList.get(i3);
            TLRPC.TL_inputStickerSetID tL_inputStickerSetID = new TLRPC.TL_inputStickerSetID();
            tL_inputStickerSetID.access_hash = stickerSet.access_hash;
            tL_inputStickerSetID.id = stickerSet.id;
            arrayList2.add(tL_inputStickerSetID);
            if (i2 != 0) {
                stickerSet.archived = i2 == 1;
            }
            int size2 = this.stickerSets[i].size();
            int i4 = 0;
            while (true) {
                if (i4 < size2) {
                    TLRPC.TL_messages_stickerSet tL_messages_stickerSet = this.stickerSets[i].get(i4);
                    if (tL_messages_stickerSet.set.id == tL_inputStickerSetID.id) {
                        this.stickerSets[i].remove(i4);
                        if (i2 == 2) {
                            this.stickerSets[i].add(0, tL_messages_stickerSet);
                        } else {
                            this.stickerSetsById.remove(tL_messages_stickerSet.set.id);
                            this.installedStickerSetsById.remove(tL_messages_stickerSet.set.id);
                            this.stickerSetsByName.remove(tL_messages_stickerSet.set.short_name);
                        }
                    } else {
                        i4++;
                    }
                }
            }
            i3++;
        }
        this.loadHash[i] = calcStickersHash(this.stickerSets[i]);
        putStickersToCache(i, this.stickerSets[i], this.loadDate[i], this.loadHash[i]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.TRUE);
        TLRPC.TL_messages_toggleStickerSets tL_messages_toggleStickerSets = new TLRPC.TL_messages_toggleStickerSets();
        tL_messages_toggleStickerSets.stickersets = arrayList2;
        if (i2 == 0) {
            tL_messages_toggleStickerSets.uninstall = true;
        } else if (i2 == 1) {
            tL_messages_toggleStickerSets.archive = true;
        } else if (i2 == 2) {
            tL_messages_toggleStickerSets.unarchive = true;
        }
        getConnectionsManager().sendRequest(tL_messages_toggleStickerSets, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda54
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$toggleStickerSets$120(i2, baseFragment, z, i, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSets$120(final int i, final BaseFragment baseFragment, final boolean z, final int i2, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda81
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$toggleStickerSets$119(i, tLObject, baseFragment, z, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSets$119(int i, TLObject tLObject, BaseFragment baseFragment, boolean z, int i2) {
        if (i != 0) {
            if (tLObject instanceof TLRPC.TL_messages_stickerSetInstallResultArchive) {
                processStickerSetInstallResultArchive(baseFragment, z, i2, (TLRPC.TL_messages_stickerSetInstallResultArchive) tLObject);
            }
            loadStickers(i2, false, false, true);
            return;
        }
        loadStickers(i2, false, true);
    }

    public void processStickerSetInstallResultArchive(BaseFragment baseFragment, boolean z, int i, TLRPC.TL_messages_stickerSetInstallResultArchive tL_messages_stickerSetInstallResultArchive) {
        int size = tL_messages_stickerSetInstallResultArchive.sets.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.installedStickerSetsById.remove(tL_messages_stickerSetInstallResultArchive.sets.get(i2).set.id);
        }
        loadArchivedStickersCount(i, false);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needAddArchivedStickers, tL_messages_stickerSetInstallResultArchive.sets);
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        baseFragment.showDialog(new StickersArchiveAlert(baseFragment.getParentActivity(), z ? baseFragment : null, tL_messages_stickerSetInstallResultArchive.sets).create());
    }

    public void removeMessageFromResults(int i) {
        int i2 = 0;
        int i3 = 0;
        while (i3 < this.searchResultMessages.size()) {
            if (i == this.searchResultMessages.get(i3).getId()) {
                this.deletedFromResultMessages.add(this.searchResultMessages.remove(i3));
                i3--;
            }
            i3++;
        }
        int i4 = 0;
        while (i4 < this.searchServerResultMessages.size()) {
            if (i == this.searchServerResultMessages.get(i4).getId()) {
                this.searchServerResultMessages.remove(i4);
                i4--;
            }
            i4++;
        }
        while (i2 < this.searchLocalResultMessages.size()) {
            if (i == this.searchLocalResultMessages.get(i2).getId()) {
                this.searchLocalResultMessages.remove(i2);
                i2--;
            }
            i2++;
        }
    }

    public boolean processDeletedMessage(int i, long[] jArr) {
        MessageObject messageObject;
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= this.deletedFromResultMessages.size()) {
                messageObject = null;
                break;
            }
            if (this.deletedFromResultMessages.get(i2).getId() == i) {
                messageObject = this.deletedFromResultMessages.get(i2);
                break;
            }
            i2++;
        }
        if (messageObject != null && messageObject.getDialogId() == getUserConfig().getClientUserId()) {
            boolean zProcessDeletedReactionTags = getMessagesController().processDeletedReactionTags(messageObject.messageOwner);
            jArr[0] = MessageObject.getSavedDialogId(getUserConfig().getClientUserId(), messageObject.messageOwner);
            z = zProcessDeletedReactionTags;
        }
        this.deletedFromResultMessages.remove(messageObject);
        return z;
    }

    private void updateSearchResults() {
        MessageObject messageObject;
        ArrayList arrayList = new ArrayList(this.searchResultMessages);
        this.searchResultMessages.clear();
        HashSet hashSet = new HashSet();
        int i = 0;
        while (true) {
            MessageObject messageObject2 = null;
            if (i >= this.searchServerResultMessages.size()) {
                break;
            }
            MessageObject messageObject3 = this.searchServerResultMessages.get(i);
            if (!ChatUtils.isTermsRestrictedMessage(messageObject3) && ((!messageObject3.hasValidGroupId() || messageObject3.isPrimaryGroupMessage) && !hashSet.contains(Integer.valueOf(messageObject3.getId())))) {
                int i2 = 0;
                while (true) {
                    if (i2 >= arrayList.size()) {
                        break;
                    }
                    if (((MessageObject) arrayList.get(i2)).getId() == messageObject3.getId()) {
                        messageObject2 = (MessageObject) arrayList.get(i2);
                        break;
                    }
                    i2++;
                }
                if (messageObject2 != null) {
                    messageObject3.copyStableParams(messageObject2);
                    messageObject3.mediaExists = messageObject2.mediaExists;
                    messageObject3.attachPathExists = messageObject2.attachPathExists;
                }
                messageObject3.isSavedFiltered = true;
                this.searchResultMessages.add(messageObject3);
                hashSet.add(Integer.valueOf(messageObject3.getId()));
            }
            i++;
        }
        for (int i3 = 0; i3 < this.searchLocalResultMessages.size(); i3++) {
            MessageObject messageObject4 = this.searchLocalResultMessages.get(i3);
            if (!ChatUtils.isTermsRestrictedMessage(messageObject4) && !hashSet.contains(Integer.valueOf(messageObject4.getId()))) {
                int i4 = 0;
                while (true) {
                    if (i4 >= arrayList.size()) {
                        messageObject = null;
                        break;
                    } else {
                        if (((MessageObject) arrayList.get(i4)).getId() == messageObject4.getId()) {
                            messageObject = (MessageObject) arrayList.get(i4);
                            break;
                        }
                        i4++;
                    }
                }
                if (messageObject != null) {
                    messageObject4.copyStableParams(messageObject);
                    messageObject4.mediaExists = messageObject.mediaExists;
                    messageObject4.attachPathExists = messageObject.attachPathExists;
                }
                messageObject4.isSavedFiltered = true;
                this.searchResultMessages.add(messageObject4);
                hashSet.add(Integer.valueOf(messageObject4.getId()));
            }
        }
    }

    public int getMask() {
        int i = 1;
        if (this.lastReturnedNum >= this.searchResultMessages.size() - 1) {
            boolean[] zArr = this.messagesSearchEndReached;
            if (zArr[0] && zArr[1]) {
                i = 0;
            }
        }
        return this.lastReturnedNum > 0 ? i | 2 : i;
    }

    public ArrayList<MessageObject> getFoundMessageObjects() {
        return this.searchResultMessages;
    }

    public void clearFoundMessageObjects() {
        this.searchResultMessages.clear();
        this.searchServerResultMessages.clear();
        this.searchLocalResultMessages.clear();
        int[] iArr = this.filteredMessagesSearchCount;
        iArr[1] = 0;
        iArr[0] = 0;
    }

    public boolean isMessageFound(int i, boolean z) {
        return this.searchServerResultMessagesMap[z ? 1 : 0].indexOfKey(i) >= 0;
    }

    public void searchMessagesInChat(String str, long j, long j2, int i, int i2, long j3, TLRPC.User user, TLRPC.Chat chat, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        searchMessagesInChat(str, j, j2, i, i2, j3, false, user, chat, true, visibleReaction);
    }

    public void jumpToSearchedMessage(int i, int i2) {
        if (i2 < 0 || i2 >= this.searchResultMessages.size()) {
            return;
        }
        this.lastReturnedNum = i2;
        MessageObject messageObject = this.searchResultMessages.get(i2);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.chatSearchResultsAvailable, Integer.valueOf(i), Integer.valueOf(messageObject.getId()), Integer.valueOf(getMask()), Long.valueOf(messageObject.getDialogId()), Integer.valueOf(this.lastReturnedNum), Integer.valueOf(getSearchCount()), Boolean.TRUE);
    }

    public int getSearchPosition() {
        return this.lastReturnedNum;
    }

    public int getSearchCount() {
        boolean zIsEmpty = this.searchServerResultMessages.isEmpty();
        int[] iArr = this.messagesSearchCount;
        if (zIsEmpty) {
            return Math.max(Math.max(iArr[0] + iArr[1], this.messagesLocalSearchCount), this.searchServerResultMessages.size());
        }
        return Math.max(iArr[0] + iArr[1], this.searchServerResultMessages.size());
    }

    public void setSearchedPosition(int i) {
        if (i < 0 || i >= this.searchResultMessages.size()) {
            return;
        }
        this.lastReturnedNum = i;
    }

    public boolean searchEndReached() {
        boolean[] zArr = this.messagesSearchEndReached;
        return (zArr[0] && this.lastMergeDialogId == 0 && zArr[1]) || this.loadingSearchLocal || this.loadedPredirectedSearchLocal;
    }

    public void loadMoreSearchMessages(boolean z) {
        if (this.loadingMoreSearchMessages || this.reqId != 0) {
            return;
        }
        boolean[] zArr = this.messagesSearchEndReached;
        if (zArr[0] && this.lastMergeDialogId == 0 && zArr[1]) {
            return;
        }
        int i = this.lastReturnedNum;
        this.lastReturnedNum = this.searchResultMessages.size();
        this.loadingMoreSearchMessages = true;
        searchMessagesInChat(null, this.lastDialogId, this.lastMergeDialogId, this.lastGuid, 1, this.lastReplyMessageId, false, this.lastSearchUser, this.lastSearchChat, false, this.lastReaction);
        this.lastReturnedNum = i;
    }

    public boolean isSearchLoading() {
        return this.reqId != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void searchMessagesInChat(String str, final long j, final long j2, final int i, final int i2, final long j3, boolean z, final TLRPC.User user, final TLRPC.Chat chat, final boolean z2, final ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        String str2;
        long j4;
        int id;
        long j5;
        boolean z3;
        boolean[] zArr;
        long j6;
        TLRPC.User user2;
        TLRPC.Chat chat2;
        char c2;
        String str3;
        ReactionsLayoutInBubble.VisibleReaction visibleReaction2;
        TLRPC.InputPeer inputPeer;
        final int i3;
        boolean z4 = !z;
        if (this.reqId != 0) {
            this.loadingMoreSearchMessages = false;
            getConnectionsManager().cancelRequest(this.reqId, true);
            this.reqId = 0;
        }
        if (this.mergeReqId != 0) {
            getConnectionsManager().cancelRequest(this.mergeReqId, true);
            this.mergeReqId = 0;
        }
        if (str != null) {
            if (!z) {
                boolean[] zArr2 = this.messagesSearchEndReached;
                zArr2[1] = false;
                zArr2[0] = false;
                int[] iArr = this.messagesSearchCount;
                iArr[1] = 0;
                iArr[0] = 0;
                int[] iArr2 = this.filteredMessagesSearchCount;
                iArr2[1] = 0;
                iArr2[0] = 0;
                this.searchResultMessages.clear();
                this.searchLocalResultMessages.clear();
                this.searchServerResultMessagesMap[0].clear();
                this.searchServerResultMessagesMap[1].clear();
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.chatSearchResultsLoading, Integer.valueOf(i));
            }
            str2 = str;
            j4 = j;
            id = 0;
        } else {
            if (this.searchResultMessages.isEmpty()) {
                this.loadingMoreSearchMessages = false;
                return;
            }
            if (i2 != 1) {
                if (i2 == 2) {
                    int i4 = this.lastReturnedNum - 1;
                    this.lastReturnedNum = i4;
                    if (i4 < 0) {
                        this.lastReturnedNum = 0;
                        return;
                    }
                    if (i4 >= this.searchResultMessages.size()) {
                        this.lastReturnedNum = this.searchResultMessages.size() - 1;
                    }
                    MessageObject messageObject = this.searchResultMessages.get(this.lastReturnedNum);
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.chatSearchResultsAvailable, Integer.valueOf(i), Integer.valueOf(messageObject.getId()), Integer.valueOf(getMask()), Long.valueOf(messageObject.getDialogId()), Integer.valueOf(this.lastReturnedNum), Integer.valueOf(getSearchCount()), Boolean.valueOf(z2));
                    this.loadingMoreSearchMessages = false;
                    return;
                }
                this.loadingMoreSearchMessages = false;
                return;
            }
            int i5 = this.lastReturnedNum + 1;
            this.lastReturnedNum = i5;
            if (i5 < this.searchResultMessages.size()) {
                MessageObject messageObject2 = this.searchResultMessages.get(this.lastReturnedNum);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.chatSearchResultsAvailable, Integer.valueOf(i), Integer.valueOf(messageObject2.getId()), Integer.valueOf(getMask()), Long.valueOf(messageObject2.getDialogId()), Integer.valueOf(this.lastReturnedNum), Integer.valueOf(getSearchCount()), Boolean.valueOf(z2));
                this.loadingMoreSearchMessages = false;
                return;
            }
            boolean[] zArr3 = this.messagesSearchEndReached;
            if (zArr3[0] && j2 == 0 && zArr3[1]) {
                this.lastReturnedNum--;
                this.loadingMoreSearchMessages = false;
                return;
            }
            String str4 = this.lastSearchQuery;
            ArrayList<MessageObject> arrayList = this.searchResultMessages;
            MessageObject messageObject3 = arrayList.get(arrayList.size() - 1);
            if (messageObject3.getDialogId() == j && !this.messagesSearchEndReached[0]) {
                id = messageObject3.getId();
                j4 = j;
            } else {
                id = messageObject3.getDialogId() == j2 ? messageObject3.getId() : 0;
                this.messagesSearchEndReached[1] = false;
                j4 = j2;
            }
            str2 = str4;
            z4 = false;
        }
        if (str2 != null) {
            j5 = 0;
            if (str2.trim().startsWith("#") || str2.trim().startsWith("$")) {
                z3 = true;
            }
            zArr = this.messagesSearchEndReached;
            if (zArr[0] && !zArr[1] && j2 != j5) {
                j4 = j2;
            }
            if (j4 == j || !z4) {
                j6 = j;
                user2 = user;
                chat2 = chat;
                c2 = 1;
                str3 = str2;
                visibleReaction2 = visibleReaction;
            } else {
                if (j2 != j5) {
                    TLRPC.InputPeer inputPeer2 = getMessagesController().getInputPeer(j2);
                    if (inputPeer2 == null) {
                        return;
                    }
                    final TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
                    tL_messages_search.peer = inputPeer2;
                    this.lastMergeDialogId = j2;
                    tL_messages_search.limit = 1;
                    tL_messages_search.f871q = str2;
                    if (user != null) {
                        tL_messages_search.from_id = MessagesController.getInputPeer(user);
                        tL_messages_search.flags |= 1;
                    } else if (chat != null) {
                        tL_messages_search.from_id = MessagesController.getInputPeer(chat);
                        tL_messages_search.flags |= 1;
                    }
                    if (j3 != j5) {
                        if (j == getUserConfig().getClientUserId() || getMessagesStorage().isMonoForum(j4)) {
                            tL_messages_search.saved_peer_id = getMessagesController().getInputPeer(j3);
                            tL_messages_search.flags |= 4;
                        } else {
                            tL_messages_search.top_msg_id = (int) j3;
                            tL_messages_search.flags |= 2;
                        }
                    }
                    if (visibleReaction != null) {
                        tL_messages_search.saved_reaction.add(visibleReaction.toTLReaction());
                        tL_messages_search.flags |= 8;
                    }
                    tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterEmpty();
                    this.mergeReqId = getConnectionsManager().sendRequest(tL_messages_search, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda112
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$searchMessagesInChat$122(j2, tL_messages_search, j, i, i2, j3, user, chat, z2, visibleReaction, tLObject, tL_error);
                        }
                    }, 2);
                    return;
                }
                j6 = j;
                user2 = user;
                chat2 = chat;
                c2 = 1;
                str3 = str2;
                visibleReaction2 = visibleReaction;
                this.lastMergeDialogId = j5;
                zArr[1] = true;
                this.messagesSearchCount[1] = 0;
            }
            final TLRPC.TL_messages_search tL_messages_search2 = new TLRPC.TL_messages_search();
            inputPeer = getMessagesController().getInputPeer(j4);
            tL_messages_search2.peer = inputPeer;
            if (inputPeer != null) {
                this.loadingMoreSearchMessages = false;
                return;
            }
            this.lastGuid = i;
            this.lastDialogId = j6;
            this.lastSearchUser = user2;
            this.lastSearchChat = chat2;
            this.lastReplyMessageId = j3;
            this.lastReaction = visibleReaction2;
            tL_messages_search2.limit = 21;
            tL_messages_search2.f871q = str3 != null ? str3 : _UrlKt.FRAGMENT_ENCODE_SET;
            tL_messages_search2.offset_id = id;
            if (user2 != null) {
                tL_messages_search2.from_id = MessagesController.getInputPeer(user2);
                tL_messages_search2.flags |= 1;
            } else if (chat2 != null) {
                tL_messages_search2.from_id = MessagesController.getInputPeer(chat2);
                tL_messages_search2.flags |= 1;
            }
            this.loadingSearchLocal = false;
            this.loadedPredirectedSearchLocal = false;
            int i6 = this.lastReqId + 1;
            this.lastReqId = i6;
            char c3 = j6 == getUserConfig().getClientUserId() ? c2 : (char) 0;
            if (c3 == 0 || visibleReaction2 == null || !z4) {
                i3 = i6;
            } else {
                this.lastReturnedNum = 0;
                this.searchServerResultMessages.clear();
                this.searchServerResultMessagesMap[0].clear();
                this.searchServerResultMessagesMap[c2].clear();
                final int savedTagCount = getMessagesController().getSavedTagCount(this.lastReplyMessageId, visibleReaction2);
                this.messagesLocalSearchCount = TextUtils.isEmpty(tL_messages_search2.f871q) ? savedTagCount : 0;
                this.loadingSearchLocal = c2;
                this.loadedPredirectedSearchLocal = false;
                MessagesStorage messagesStorage = getMessagesStorage();
                TLRPC.Reaction tLReaction = visibleReaction2.toTLReaction();
                long j7 = this.lastReplyMessageId;
                ArrayList<MessageObject> arrayList2 = this.searchLocalResultMessages;
                i3 = i6;
                messagesStorage.searchSavedByTag(tLReaction, j7, str3, 300, arrayList2 == null ? 0 : arrayList2.size(), new Utilities.Callback4() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda113
                    @Override // org.telegram.messenger.Utilities.Callback4
                    public final void run(Object obj, Object obj2, Object obj3, Object obj4) {
                        this.f$0.lambda$searchMessagesInChat$123(i3, savedTagCount, i, j, (ArrayList) obj, (ArrayList) obj2, (ArrayList) obj3, (ArrayList) obj4);
                    }
                }, true);
            }
            final String str5 = str3;
            if (this.lastReplyMessageId != 0) {
                if (j4 == getUserConfig().getClientUserId() || getMessagesStorage().isMonoForum(j4)) {
                    tL_messages_search2.saved_peer_id = getMessagesController().getInputPeer(this.lastReplyMessageId);
                    tL_messages_search2.flags |= 4;
                } else {
                    tL_messages_search2.top_msg_id = (int) this.lastReplyMessageId;
                    tL_messages_search2.flags |= 2;
                }
            }
            if (visibleReaction2 != null) {
                tL_messages_search2.saved_reaction.add(visibleReaction2.toTLReaction());
                tL_messages_search2.flags |= 8;
            }
            tL_messages_search2.filter = new TLRPC.TL_inputMessagesFilterEmpty();
            this.lastSearchQuery = str5;
            final long j8 = j4;
            final int i7 = tL_messages_search2.offset_id;
            final int i8 = i3;
            final boolean z5 = z3;
            final TLRPC.Chat chat3 = chat2;
            final boolean z6 = c3;
            this.reqId = getConnectionsManager().sendRequest(tL_messages_search2, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda114
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$searchMessagesInChat$126(tL_messages_search2, z6, str5, z5, i8, z2, j8, j, i, i7, j2, j3, user, chat3, tLObject, tL_error);
                }
            }, 2);
            return;
        }
        j5 = 0;
        z3 = false;
        zArr = this.messagesSearchEndReached;
        if (zArr[0]) {
            j4 = j2;
        }
        if (j4 == j) {
            j6 = j;
            user2 = user;
            chat2 = chat;
            c2 = 1;
            str3 = str2;
            visibleReaction2 = visibleReaction;
        }
        final TLRPC.TL_messages_search tL_messages_search22 = new TLRPC.TL_messages_search();
        inputPeer = getMessagesController().getInputPeer(j4);
        tL_messages_search22.peer = inputPeer;
        if (inputPeer != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessagesInChat$122(final long j, final TLRPC.TL_messages_search tL_messages_search, final long j2, final int i, final int i2, final long j3, final TLRPC.User user, final TLRPC.Chat chat, final boolean z, final ReactionsLayoutInBubble.VisibleReaction visibleReaction, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda250
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchMessagesInChat$121(j, tLObject, tL_messages_search, j2, i, i2, j3, user, chat, z, visibleReaction);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessagesInChat$121(long j, TLObject tLObject, TLRPC.TL_messages_search tL_messages_search, long j2, int i, int i2, long j3, TLRPC.User user, TLRPC.Chat chat, boolean z, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        if (this.lastMergeDialogId == j) {
            this.mergeReqId = 0;
            if (tLObject != null) {
                TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
                this.messagesSearchEndReached[1] = messages_messages.messages.isEmpty();
                int i3 = 0;
                for (int i4 = 0; i4 < messages_messages.messages.size(); i4++) {
                    if (ChatUtils.hasRestrictionReason(messages_messages.messages.get(i4).restriction_reason, "terms")) {
                        i3++;
                    }
                }
                this.filteredMessagesSearchCount[1] = i3;
                this.messagesSearchCount[1] = Math.max((messages_messages instanceof TLRPC.TL_messages_messagesSlice ? messages_messages.count : messages_messages.messages.size()) - this.filteredMessagesSearchCount[1], 0);
                searchMessagesInChat(tL_messages_search.f871q, j2, j, i, i2, j3, true, user, chat, z, visibleReaction);
                return;
            }
            this.messagesSearchEndReached[1] = true;
            this.messagesSearchCount[1] = 0;
            this.filteredMessagesSearchCount[1] = 0;
            searchMessagesInChat(tL_messages_search.f871q, j2, j, i, i2, j3, true, user, chat, z, visibleReaction);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessagesInChat$123(int i, int i2, int i3, long j, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        if (i == this.lastReqId) {
            this.loadedPredirectedSearchLocal = arrayList.size() == i2;
            this.loadingSearchLocal = false;
            getMessagesController().putUsers(arrayList2, true);
            getMessagesController().putChats(arrayList3, true);
            AnimatedEmojiDrawable.getDocumentFetcher(this.currentAccount).processDocuments(arrayList4);
            this.searchLocalResultMessages = arrayList;
            updateSearchResults();
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.chatSearchResultsAvailable, Integer.valueOf(i3), 0, Integer.valueOf(getMask()), Long.valueOf(j), Integer.valueOf(this.lastReturnedNum), Integer.valueOf(getSearchCount()), Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessagesInChat$126(TLRPC.TL_messages_search tL_messages_search, final boolean z, String str, boolean z2, final int i, final boolean z3, final long j, final long j2, final int i2, final int i3, final long j3, final long j4, final TLRPC.User user, final TLRPC.Chat chat, final TLObject tLObject, TLRPC.TL_error tL_error) {
        final TLRPC.TL_messages_search tL_messages_search2;
        final int i4;
        final ArrayList arrayList = new ArrayList();
        if (tL_error == null) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            tL_messages_search2 = tL_messages_search;
            int iMin = Math.min(messages_messages.messages.size(), tL_messages_search2.limit - 1);
            int i5 = 0;
            for (int i6 = 0; i6 < iMin; i6++) {
                TLRPC.Message message = messages_messages.messages.get(i6);
                if (ChatUtils.hasRestrictionReason(message.restriction_reason, "terms")) {
                    i5++;
                } else {
                    MessageObject messageObject = new MessageObject(this.currentAccount, message, null, null, null, null, null, true, true, 0L, false, false, z);
                    if (messageObject.hasValidGroupId()) {
                        messageObject.isPrimaryGroupMessage = true;
                    }
                    messageObject.setQuery(str, !z2);
                    arrayList.add(messageObject);
                }
            }
            i4 = i5;
        } else {
            tL_messages_search2 = tL_messages_search;
            i4 = 0;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchMessagesInChat$125(i, z3, tLObject, j, j2, tL_messages_search2, i2, i3, i4, arrayList, z, j3, j4, user, chat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessagesInChat$125(int i, final boolean z, TLObject tLObject, final long j, final long j2, final TLRPC.TL_messages_search tL_messages_search, final int i2, final int i3, final int i4, final ArrayList arrayList, final boolean z2, final long j3, final long j4, final TLRPC.User user, final TLRPC.Chat chat) {
        if (i == this.lastReqId) {
            this.reqId = 0;
            if (!z) {
                this.loadingMoreSearchMessages = false;
            }
            if (tLObject != null) {
                final TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
                int i5 = 0;
                while (i5 < messages_messages.messages.size()) {
                    TLRPC.Message message = messages_messages.messages.get(i5);
                    if ((message instanceof TLRPC.TL_messageEmpty) || (message.action instanceof TLRPC.TL_messageActionHistoryClear)) {
                        messages_messages.messages.remove(i5);
                        i5--;
                    }
                    i5++;
                }
                getMessagesStorage().putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
                getMessagesController().putUsers(messages_messages.users, false);
                getMessagesController().putChats(messages_messages.chats, false);
                Runnable runnable = new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda86
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$searchMessagesInChat$124(j, j2, tL_messages_search, i2, i3, i4, arrayList, messages_messages, z, z2, j3, j4, user, chat);
                    }
                };
                if (z2) {
                    loadReplyMessagesForMessages(arrayList, j2, 0, this.lastReplyMessageId, runnable, i2, null);
                } else {
                    runnable.run();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessagesInChat$124(long j, long j2, TLRPC.TL_messages_search tL_messages_search, int i, int i2, int i3, ArrayList arrayList, TLRPC.messages_Messages messages_messages, boolean z, boolean z2, long j3, long j4, TLRPC.User user, TLRPC.Chat chat) {
        char c2 = j == j2 ? (char) 0 : (char) 1;
        if (tL_messages_search.offset_id == 0 && j == j2) {
            this.lastReturnedNum = 0;
            this.searchServerResultMessages.clear();
            this.searchServerResultMessagesMap[0].clear();
            this.searchServerResultMessagesMap[1].clear();
            this.messagesSearchCount[0] = 0;
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.chatSearchResultsLoading, Integer.valueOf(i));
        }
        if (i2 == 0) {
            this.filteredMessagesSearchCount[c2] = 0;
        }
        int[] iArr = this.filteredMessagesSearchCount;
        iArr[c2] = iArr[c2] + i3;
        boolean zIsEmpty = arrayList.isEmpty();
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            MessageObject messageObject = (MessageObject) arrayList.get(i4);
            this.searchServerResultMessages.add(messageObject);
            this.searchServerResultMessagesMap[c2].put(messageObject.getId(), messageObject);
        }
        updateSearchResults();
        this.messagesSearchEndReached[c2] = messages_messages.messages.size() < tL_messages_search.limit;
        this.messagesSearchCount[c2] = Math.max((((messages_messages instanceof TLRPC.TL_messages_messagesSlice) || (messages_messages instanceof TLRPC.TL_messages_channelMessages)) ? messages_messages.count : messages_messages.messages.size()) - this.filteredMessagesSearchCount[c2], this.searchServerResultMessagesMap[c2].size());
        if (this.searchServerResultMessages.isEmpty()) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.chatSearchResultsAvailable, Integer.valueOf(i), 0, Integer.valueOf(getMask()), 0L, 0, 0, Boolean.valueOf(z));
        } else if (!zIsEmpty) {
            if (this.lastReturnedNum >= this.searchResultMessages.size()) {
                this.lastReturnedNum = this.searchResultMessages.size() - 1;
            }
            MessageObject messageObject2 = this.searchResultMessages.get(this.lastReturnedNum);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.chatSearchResultsAvailable, Integer.valueOf(i), Integer.valueOf(messageObject2.getId()), Integer.valueOf(getMask()), Long.valueOf(messageObject2.getDialogId()), Integer.valueOf(this.lastReturnedNum), Integer.valueOf(getSearchCount()), Boolean.valueOf(z));
        } else if (z2) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.chatSearchResultsAvailable, Integer.valueOf(i), 0, Integer.valueOf(getMask()), Long.valueOf(j2), Integer.valueOf(this.lastReturnedNum), Integer.valueOf(getSearchCount()), Boolean.FALSE);
        }
        if (j == j2) {
            boolean[] zArr = this.messagesSearchEndReached;
            if (!zArr[0] || j3 == 0 || zArr[1]) {
                return;
            }
            searchMessagesInChat(this.lastSearchQuery, j2, j3, i, 0, j4, true, user, chat, z, this.lastReaction);
        }
    }

    public void portSavedSearchResults(int i, ReactionsLayoutInBubble.VisibleReaction visibleReaction, String str, ArrayList<MessageObject> arrayList, ArrayList<MessageObject> arrayList2, int i2, int i3, boolean z) {
        this.lastReaction = visibleReaction;
        this.lastSearchQuery = str;
        boolean[] zArr = this.messagesSearchEndReached;
        zArr[0] = z;
        zArr[1] = true;
        this.searchServerResultMessages.clear();
        this.searchServerResultMessages.addAll(arrayList2);
        this.searchLocalResultMessages.clear();
        this.searchLocalResultMessages.addAll(arrayList);
        updateSearchResults();
        int[] iArr = this.messagesSearchCount;
        iArr[0] = i3;
        iArr[1] = 0;
        int[] iArr2 = this.filteredMessagesSearchCount;
        iArr2[1] = 0;
        iArr2[0] = 0;
        this.lastReturnedNum = i2;
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.chatSearchResultsAvailable, Integer.valueOf(i), 0, Integer.valueOf(getMask()), Long.valueOf(getUserConfig().getClientUserId()), Integer.valueOf(this.lastReturnedNum), Integer.valueOf(getSearchCount()), Boolean.TRUE);
    }

    public String getLastSearchQuery() {
        return this.lastSearchQuery;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x014e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x014f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadMedia(final long j, final int i, final int i2, final int i3, final int i4, final long j2, int i5, final int i6, final int i7, ReactionsLayoutInBubble.VisibleReaction visibleReaction, String str) {
        MediaDataController mediaDataController;
        final boolean z;
        TLRPC.TL_messages_search tL_messages_search;
        if (DialogObject.isChatDialog(j)) {
            mediaDataController = this;
            if (ChatObject.isChannel(-j, mediaDataController.currentAccount)) {
                z = true;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("load media did " + j + " count = " + i + " max_id " + i2 + " type = " + i4 + " cache = " + i5 + " classGuid = " + i6);
            }
            if ((i5 == 0 && TextUtils.isEmpty(str)) || DialogObject.isEncryptedDialog(j)) {
                mediaDataController.loadMediaDatabase(j, i, i2, i3, i4, j2, visibleReaction, i6, z, i5, i7);
            }
            tL_messages_search = new TLRPC.TL_messages_search();
            tL_messages_search.limit = i;
            if (i3 != 0) {
                tL_messages_search.offset_id = i3;
                tL_messages_search.add_offset = -i;
            } else {
                tL_messages_search.offset_id = i2;
            }
            if (visibleReaction != null) {
                tL_messages_search.flags |= 8;
                tL_messages_search.saved_reaction.add(visibleReaction.toTLReaction());
            }
            if (i4 == 0) {
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterPhotoVideo();
            } else if (i4 == 6) {
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterPhotos();
            } else if (i4 == 7) {
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterVideo();
            } else if (i4 == 1) {
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterDocument();
            } else if (i4 == 2) {
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterRoundVoice();
            } else if (i4 == 3) {
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterUrl();
            } else if (i4 == 4) {
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterMusic();
            } else if (i4 == 5) {
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterGif();
            } else if (i4 == 8) {
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterPoll();
            }
            if (!TextUtils.isEmpty(str)) {
                tL_messages_search.f871q = str;
            } else {
                tL_messages_search.f871q = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            tL_messages_search.peer = getMessagesController().getInputPeer(j);
            if (j2 != 0) {
                if (j == getUserConfig().getClientUserId()) {
                    tL_messages_search.saved_peer_id = getMessagesController().getInputPeer(j2);
                    tL_messages_search.flags |= 4;
                } else {
                    tL_messages_search.top_msg_id = (int) j2;
                    tL_messages_search.flags |= 2;
                }
            }
            if (tL_messages_search.peer == null) {
                return;
            }
            getConnectionsManager().bindRequestToGuid(getConnectionsManager().sendRequest(tL_messages_search, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda146
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadMedia$127(j, i3, i, i2, i4, j2, i6, z, i7, tLObject, tL_error);
                }
            }), i6);
            return;
        }
        mediaDataController = this;
        z = false;
        if (BuildVars.LOGS_ENABLED) {
        }
        if (i5 == 0) {
            tL_messages_search = new TLRPC.TL_messages_search();
            tL_messages_search.limit = i;
            if (i3 != 0) {
            }
            if (visibleReaction != null) {
            }
            if (i4 == 0) {
            }
            if (!TextUtils.isEmpty(str)) {
            }
            tL_messages_search.peer = getMessagesController().getInputPeer(j);
            if (j2 != 0) {
            }
            if (tL_messages_search.peer == null) {
            }
        } else {
            tL_messages_search = new TLRPC.TL_messages_search();
            tL_messages_search.limit = i;
            if (i3 != 0) {
            }
            if (visibleReaction != null) {
            }
            if (i4 == 0) {
            }
            if (!TextUtils.isEmpty(str)) {
            }
            tL_messages_search.peer = getMessagesController().getInputPeer(j);
            if (j2 != 0) {
            }
            if (tL_messages_search.peer == null) {
            }
        }
        mediaDataController.loadMediaDatabase(j, i, i2, i3, i4, j2, visibleReaction, i6, z, i5, i7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMedia$127(long j, int i, int i2, int i3, int i4, long j2, int i5, boolean z, int i6, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            getMessagesController().removeDeletedMessagesFromArray(j, messages_messages.messages);
            ArrayList<TLRPC.Message> arrayList = messages_messages.messages;
            boolean z2 = false;
            if (i == 0 ? arrayList.size() == 0 : arrayList.size() <= 1) {
                z2 = true;
            }
            processLoadedMedia(messages_messages, j, i2, i3, i, i4, j2, 0, i5, z, z2, i6);
        }
    }

    public void getMediaCounts(final long j, final long j2, final int i) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda134
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getMediaCounts$132(j2, j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01e2 A[Catch: Exception -> 0x0232, TryCatch #0 {Exception -> 0x0232, blocks: (B:3:0x0002, B:5:0x004f, B:7:0x0090, B:9:0x0096, B:12:0x009e, B:13:0x00ad, B:17:0x00b9, B:19:0x00bd, B:21:0x00e5, B:23:0x00ee, B:22:0x00ec, B:24:0x00fc, B:25:0x00ff, B:27:0x010f, B:29:0x0127, B:31:0x0133, B:32:0x0143, B:35:0x0150, B:37:0x0154, B:72:0x01e8, B:39:0x015c, B:41:0x0160, B:44:0x0166, B:66:0x01db, B:69:0x01e2, B:71:0x01e6, B:48:0x0176, B:50:0x0183, B:52:0x0190, B:54:0x019d, B:57:0x01ab, B:60:0x01b9, B:64:0x01ca, B:65:0x01d3, B:73:0x01f1, B:75:0x01f9, B:77:0x0216, B:81:0x0222, B:6:0x0072), top: B:86:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$getMediaCounts$132(final long j, final long j2, int i) {
        SQLiteCursor sQLiteCursorQueryFinalized;
        int i2;
        try {
            final int[] iArr = new int[9];
            int i3 = -1;
            iArr[0] = -1;
            iArr[1] = -1;
            int i4 = 2;
            iArr[2] = -1;
            iArr[3] = -1;
            int i5 = 4;
            iArr[4] = -1;
            iArr[5] = -1;
            iArr[6] = -1;
            iArr[7] = -1;
            iArr[8] = -1;
            final int[] iArr2 = new int[9];
            iArr2[0] = -1;
            iArr2[1] = -1;
            iArr2[2] = -1;
            iArr2[3] = -1;
            iArr2[4] = -1;
            iArr2[5] = -1;
            iArr2[6] = -1;
            iArr2[7] = -1;
            iArr2[8] = -1;
            int[] iArr3 = new int[9];
            iArr3[0] = 0;
            iArr3[1] = 0;
            iArr3[2] = 0;
            iArr3[3] = 0;
            iArr3[4] = 0;
            iArr3[5] = 0;
            iArr3[6] = 0;
            iArr3[7] = 0;
            iArr3[8] = 0;
            if (j != 0) {
                sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT type, count, old FROM media_counts_topics WHERE uid = %d AND topic_id = %d", Long.valueOf(j2), Long.valueOf(j)), new Object[0]);
            } else {
                sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT type, count, old FROM media_counts_v2 WHERE uid = %d", Long.valueOf(j2)), new Object[0]);
            }
            while (sQLiteCursorQueryFinalized.next()) {
                int iIntValue = sQLiteCursorQueryFinalized.intValue(0);
                if (iIntValue >= 0 && iIntValue < 9) {
                    int iIntValue2 = sQLiteCursorQueryFinalized.intValue(1);
                    iArr[iIntValue] = iIntValue2;
                    iArr2[iIntValue] = iIntValue2;
                    iArr3[iIntValue] = sQLiteCursorQueryFinalized.intValue(2);
                }
            }
            sQLiteCursorQueryFinalized.dispose();
            if (DialogObject.isEncryptedDialog(j2)) {
                for (int i6 = 0; i6 < 9; i6++) {
                    if (iArr[i6] == -1) {
                        SQLiteCursor sQLiteCursorQueryFinalized2 = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT COUNT(mid) FROM media_v4 WHERE uid = %d AND type = %d LIMIT 1", Long.valueOf(j2), Integer.valueOf(i6)), new Object[0]);
                        if (sQLiteCursorQueryFinalized2.next()) {
                            iArr[i6] = sQLiteCursorQueryFinalized2.intValue(0);
                        } else {
                            iArr[i6] = 0;
                        }
                        sQLiteCursorQueryFinalized2.dispose();
                        putMediaCountDatabase(j2, j, i6, iArr[i6]);
                    }
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda136
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$getMediaCounts$128(j2, j, iArr);
                    }
                });
                return;
            }
            TLRPC.TL_messages_getSearchCounters tL_messages_getSearchCounters = new TLRPC.TL_messages_getSearchCounters();
            tL_messages_getSearchCounters.peer = getMessagesController().getInputPeer(j2);
            if (j != 0) {
                if (j2 == getUserConfig().getClientUserId()) {
                    tL_messages_getSearchCounters.saved_peer_id = getMessagesController().getInputPeer(j);
                    tL_messages_getSearchCounters.flags |= 4;
                } else {
                    tL_messages_getSearchCounters.top_msg_id = (int) j;
                    tL_messages_getSearchCounters.flags |= 1;
                }
            }
            int i7 = 0;
            boolean z = false;
            for (int i8 = 9; i7 < i8; i8 = 9) {
                if (tL_messages_getSearchCounters.peer == null) {
                    iArr[i7] = 0;
                } else {
                    if (iArr[i7] == i3 || iArr3[i7] == 1) {
                        if (i7 == 0) {
                            tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterPhotoVideo());
                        } else if (i7 == 1) {
                            tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterDocument());
                        } else if (i7 == i4) {
                            tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterRoundVoice());
                        } else if (i7 == 3) {
                            tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterUrl());
                        } else if (i7 == i5) {
                            tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterMusic());
                        } else {
                            if (i7 == 6) {
                                tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterPhotos());
                            } else if (i7 == 7) {
                                tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterVideo());
                            } else {
                                ArrayList<TLRPC.MessagesFilter> arrayList = tL_messages_getSearchCounters.filters;
                                if (i7 == 8) {
                                    arrayList.add(new TLRPC.TL_inputMessagesFilterPoll());
                                } else {
                                    arrayList.add(new TLRPC.TL_inputMessagesFilterGif());
                                }
                                i2 = -1;
                                if (iArr[i7] == -1) {
                                    z = true;
                                } else if (iArr3[i7] == 1) {
                                    iArr[i7] = -1;
                                }
                            }
                            i2 = -1;
                            if (iArr[i7] == -1) {
                            }
                        }
                        i2 = -1;
                        if (iArr[i7] == -1) {
                        }
                    }
                    i7++;
                    i3 = i2;
                    i4 = 2;
                    i5 = 4;
                }
                i2 = i3;
                i7++;
                i3 = i2;
                i4 = 2;
                i5 = 4;
            }
            if (!tL_messages_getSearchCounters.filters.isEmpty()) {
                getConnectionsManager().bindRequestToGuid(getConnectionsManager().sendRequest(tL_messages_getSearchCounters, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda137
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$getMediaCounts$130(iArr, j2, j, tLObject, tL_error);
                    }
                }), i);
            }
            if (z && getConnectionsManager().getConnectionState() == 3) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda138
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$getMediaCounts$131(j2, j, iArr2);
                }
            });
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMediaCounts$128(long j, long j2, int[] iArr) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mediaCountsDidLoad, Long.valueOf(j), Long.valueOf(j2), iArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMediaCounts$130(final int[] iArr, final long j, final long j2, TLObject tLObject, TLRPC.TL_error tL_error) {
        int i;
        int i2;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            if (iArr[i3] < 0) {
                iArr[i3] = 0;
            }
        }
        if (tLObject instanceof Vector) {
            Vector vector = (Vector) tLObject;
            int size = vector.objects.size();
            for (int i4 = 0; i4 < size; i4++) {
                TLRPC.TL_messages_searchCounter tL_messages_searchCounter = (TLRPC.TL_messages_searchCounter) vector.objects.get(i4);
                TLRPC.MessagesFilter messagesFilter = tL_messages_searchCounter.filter;
                if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterPhotoVideo) {
                    i2 = 0;
                } else {
                    if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterDocument) {
                        i = 1;
                    } else if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterRoundVoice) {
                        i = 2;
                    } else if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterUrl) {
                        i = 3;
                    } else if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterMusic) {
                        i = 4;
                    } else if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterGif) {
                        i = 5;
                    } else if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterPhotos) {
                        i = 6;
                    } else if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterVideo) {
                        i = 7;
                    } else if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterPoll) {
                        i = 8;
                    }
                    i2 = i;
                }
                int i5 = tL_messages_searchCounter.count;
                iArr[i2] = i5;
                putMediaCountDatabase(j, j2, i2, i5);
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda184
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getMediaCounts$129(j, j2, iArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMediaCounts$129(long j, long j2, int[] iArr) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mediaCountsDidLoad, Long.valueOf(j), Long.valueOf(j2), iArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMediaCounts$131(long j, long j2, int[] iArr) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mediaCountsDidLoad, Long.valueOf(j), Long.valueOf(j2), iArr);
    }

    public void getMediaCount(final long j, final long j2, final int i, final int i2, boolean z) {
        if (z || DialogObject.isEncryptedDialog(j)) {
            getMediaCountDatabase(j, j2, i, i2);
            return;
        }
        TLRPC.TL_messages_getSearchCounters tL_messages_getSearchCounters = new TLRPC.TL_messages_getSearchCounters();
        if (i == 0) {
            tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterPhotoVideo());
        } else if (i == 1) {
            tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterDocument());
        } else if (i == 2) {
            tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterRoundVoice());
        } else if (i == 3) {
            tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterUrl());
        } else if (i == 4) {
            tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterMusic());
        } else if (i == 5) {
            tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterGif());
        } else if (i == 8) {
            tL_messages_getSearchCounters.filters.add(new TLRPC.TL_inputMessagesFilterPoll());
        }
        if (j2 != 0) {
            if (j == getUserConfig().getClientUserId()) {
                tL_messages_getSearchCounters.saved_peer_id = getMessagesController().getInputPeer(j2);
                tL_messages_getSearchCounters.flags = 4 | tL_messages_getSearchCounters.flags;
            } else {
                tL_messages_getSearchCounters.top_msg_id = (int) j2;
                tL_messages_getSearchCounters.flags |= 1;
            }
        }
        TLRPC.InputPeer inputPeer = getMessagesController().getInputPeer(j);
        tL_messages_getSearchCounters.peer = inputPeer;
        if (inputPeer == null) {
            return;
        }
        getConnectionsManager().bindRequestToGuid(getConnectionsManager().sendRequest(tL_messages_getSearchCounters, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda132
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$getMediaCount$133(j, j2, i, i2, tLObject, tL_error);
            }
        }), i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMediaCount$133(long j, long j2, int i, int i2, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof Vector) {
            Vector vector = (Vector) tLObject;
            if (vector.objects.isEmpty()) {
                return;
            }
            processLoadedMediaCount(((TLRPC.TL_messages_searchCounter) vector.objects.get(0)).count, j, j2, i, i2, false, 0);
        }
    }

    public static int getMediaType(TLRPC.Message message) {
        if (message == null) {
            return -1;
        }
        TLRPC.MessageMedia media = MessageObject.getMedia(message);
        if (media instanceof TLRPC.TL_messageMediaPoll) {
            return 8;
        }
        if (media instanceof TLRPC.TL_messageMediaPhoto) {
            return 0;
        }
        if (media instanceof TLRPC.TL_messageMediaDocument) {
            TLRPC.Document document = media.document;
            if (document == null) {
                return -1;
            }
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                    z = documentAttribute.round_message;
                    z3 = !z;
                    z2 = z;
                } else if (documentAttribute instanceof TLRPC.TL_documentAttributeAnimated) {
                    z4 = true;
                } else if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                    z = documentAttribute.voice;
                    z6 = !z;
                } else if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                    z5 = true;
                }
            }
            if (z || z2) {
                return 2;
            }
            if (z3 && !z4 && !z5) {
                return 0;
            }
            if (z5) {
                return -1;
            }
            if (z4) {
                return 5;
            }
            return z6 ? 4 : 1;
        }
        if (message.entities.isEmpty() || LocaleUtils.isCustomEmojiOnlyLinkMessage(message)) {
            return -1;
        }
        for (int i2 = 0; i2 < message.entities.size(); i2++) {
            TLRPC.MessageEntity messageEntity = message.entities.get(i2);
            if ((messageEntity instanceof TLRPC.TL_messageEntityUrl) || (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) || (messageEntity instanceof TLRPC.TL_messageEntityEmail)) {
                return 3;
            }
        }
        return -1;
    }

    public static boolean canAddMessageToMedia(TLRPC.Message message) {
        boolean z = message instanceof TLRPC.TL_message_secret;
        if (!z || (!((MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || MessageObject.isVideoMessage(message) || MessageObject.isGifMessage(message)) || MessageObject.getMedia(message).ttl_seconds == 0 || MessageObject.getMedia(message).ttl_seconds > 60)) {
            return (z || !(message instanceof TLRPC.TL_message) || (!((MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || (MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaDocument)) || MessageObject.getMedia(message).ttl_seconds == 0)) && getMediaType(message) != -1;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processLoadedMedia(final TLRPC.messages_Messages messages_messages, final long j, int i, int i2, final int i3, final int i4, long j2, final int i5, final int i6, boolean z, final boolean z2, final int i7) {
        long j3;
        int i8;
        int i9;
        int i10;
        long j4;
        boolean z3;
        ArrayList<TLRPC.Message> arrayList;
        ArrayList<TLRPC.Message> arrayList2;
        if (BuildVars.LOGS_ENABLED) {
            int size = (messages_messages == null || (arrayList2 = messages_messages.messages) == null) ? 0 : arrayList2.size();
            StringBuilder sb = new StringBuilder("process load media messagesCount ");
            sb.append(size);
            sb.append(" did ");
            j3 = j;
            sb.append(j3);
            sb.append(" topicId ");
            j4 = j2;
            sb.append(j4);
            sb.append(" count = ");
            i8 = i;
            sb.append(i8);
            sb.append(" max_id=");
            i9 = i2;
            sb.append(i9);
            sb.append(" min_id=");
            sb.append(i3);
            sb.append(" type = ");
            i10 = i4;
            sb.append(i10);
            sb.append(" cache = ");
            sb.append(i5);
            sb.append(" classGuid = ");
            sb.append(i6);
            sb.append(" topReached=");
            z3 = z2;
            sb.append(z3);
            FileLog.m895d(sb.toString());
        } else {
            j3 = j;
            i8 = i;
            i9 = i2;
            i10 = i4;
            j4 = j2;
            z3 = z2;
        }
        if (i5 != 0 && messages_messages != null && (arrayList = messages_messages.messages) != null && (((arrayList.isEmpty() && i3 == 0) || (messages_messages.messages.size() <= 1 && i3 != 0)) && !DialogObject.isEncryptedDialog(j3))) {
            if (i5 == 2) {
                return;
            }
            loadMedia(j3, i8, i9, i3, i10, j4, 0, i6, i7, null, null);
        } else {
            if (i5 == 0) {
                ImageLoader.saveMessagesThumbs(messages_messages.messages);
                getMessagesStorage().putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
                putMediaDatabase(j, j2, i4, messages_messages.messages, i2, i3, z3);
            }
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda66
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processLoadedMedia$137(messages_messages, i5, j, i6, i4, z2, i3, i7);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedMedia$137(final TLRPC.messages_Messages messages_messages, final int i, final long j, final int i2, final int i3, final boolean z, final int i4, final int i5) {
        LongSparseArray longSparseArray = new LongSparseArray();
        for (int i6 = 0; i6 < messages_messages.users.size(); i6++) {
            TLRPC.User user = messages_messages.users.get(i6);
            longSparseArray.put(user.id, user);
        }
        final ArrayList<MessageObject> arrayList = new ArrayList<>();
        for (int i7 = 0; i7 < messages_messages.messages.size(); i7++) {
            MessageObject messageObject = new MessageObject(this.currentAccount, messages_messages.messages.get(i7), (LongSparseArray<TLRPC.User>) longSparseArray, true, false);
            messageObject.createStrippedThumb();
            arrayList.add(messageObject);
        }
        getFileLoader().checkMediaExistance(arrayList);
        final Runnable runnable = new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedMedia$135(messages_messages, i, j, arrayList, i2, i3, z, i4, i5);
            }
        };
        if (getMessagesController().getTranslateController().isFeatureAvailable(j)) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processLoadedMedia$136(arrayList, runnable);
                }
            });
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedMedia$135(final TLRPC.messages_Messages messages_messages, final int i, final long j, final ArrayList arrayList, final int i2, final int i3, final boolean z, final int i4, final int i5) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedMedia$134(messages_messages, i, j, arrayList, i2, i3, z, i4, i5);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedMedia$134(TLRPC.messages_Messages messages_messages, int i, long j, ArrayList arrayList, int i2, int i3, boolean z, int i4, int i5) {
        int i6 = messages_messages.count;
        getMessagesController().putUsers(messages_messages.users, i != 0);
        getMessagesController().putChats(messages_messages.chats, i != 0);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mediaDidLoad, Long.valueOf(j), Integer.valueOf(i6), arrayList, Integer.valueOf(i2), Integer.valueOf(i3), Boolean.valueOf(z), Boolean.valueOf(i4 != 0), Integer.valueOf(i5));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedMedia$136(ArrayList arrayList, Runnable runnable) {
        for (int i = 0; i < arrayList.size(); i++) {
            MessageObject messageObject = (MessageObject) arrayList.get(i);
            TLRPC.Message messageWithCustomParamsOnlyInternal = getMessagesStorage().getMessageWithCustomParamsOnlyInternal(messageObject.getId(), messageObject.getDialogId());
            TLRPC.Message message = messageObject.messageOwner;
            message.translatedToLanguage = messageWithCustomParamsOnlyInternal.translatedToLanguage;
            message.translatedText = messageWithCustomParamsOnlyInternal.translatedText;
            messageObject.updateTranslation();
        }
        runnable.run();
    }

    private void processLoadedMediaCount(final int i, final long j, final long j2, final int i2, final int i3, final boolean z, final int i4) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedMediaCount$138(j, z, i, i2, i4, j2, i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processLoadedMediaCount$138(long j, boolean z, int i, int i2, int i3, long j2, int i4) {
        int i5;
        boolean z2;
        int i6 = i;
        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
        if (z) {
            if (i6 != -1) {
                if (i6 == 0) {
                    i5 = i2;
                    if (i5 == 2) {
                    }
                }
            } else {
                i5 = i2;
            }
            z2 = !zIsEncryptedDialog;
        } else {
            i5 = i2;
        }
        if (z2 || (i3 == 1 && !zIsEncryptedDialog)) {
            getMediaCount(j, j2, i5, i4, false);
        }
        if (z2) {
            return;
        }
        if (!z) {
            putMediaCountDatabase(j, j2, i2, i6);
        }
        NotificationCenter notificationCenter = getNotificationCenter();
        int i7 = NotificationCenter.mediaCountDidLoad;
        Long lValueOf = Long.valueOf(j);
        Long lValueOf2 = Long.valueOf(j2);
        if (z && i6 == -1) {
            i6 = 0;
        }
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i7, lValueOf, lValueOf2, Integer.valueOf(i6), Boolean.valueOf(z), Integer.valueOf(i2));
    }

    private void putMediaCountDatabase(final long j, final long j2, final int i, final int i2) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda208
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$putMediaCountDatabase$139(j2, j, i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putMediaCountDatabase$139(long j, long j2, int i, int i2) {
        SQLitePreparedStatement sQLitePreparedStatementExecuteFast;
        int i3;
        try {
            if (j != 0) {
                sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO media_counts_topics VALUES(?, ?, ?, ?, ?)");
            } else {
                sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO media_counts_v2 VALUES(?, ?, ?, ?)");
            }
            sQLitePreparedStatementExecuteFast.requery();
            sQLitePreparedStatementExecuteFast.bindLong(1, j2);
            if (j != 0) {
                sQLitePreparedStatementExecuteFast.bindLong(2, j);
                i3 = 3;
            } else {
                i3 = 2;
            }
            sQLitePreparedStatementExecuteFast.bindInteger(i3, i);
            sQLitePreparedStatementExecuteFast.bindInteger(i3 + 1, i2);
            sQLitePreparedStatementExecuteFast.bindInteger(i3 + 2, 0);
            sQLitePreparedStatementExecuteFast.step();
            sQLitePreparedStatementExecuteFast.dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    private void getMediaCountDatabase(final long j, final long j2, final int i, final int i2) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda177
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getMediaCountDatabase$140(j2, j, i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMediaCountDatabase$140(long j, long j2, int i, int i2) {
        SQLiteCursor sQLiteCursorQueryFinalized;
        int iIntValue;
        int iIntValue2;
        int i3;
        try {
            if (j != 0) {
                sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT count, old FROM media_counts_topics WHERE uid = %d AND topic_id = %d AND type = %d LIMIT 1", Long.valueOf(j2), Long.valueOf(j), Integer.valueOf(i)), new Object[0]);
            } else {
                sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT count, old FROM media_counts_v2 WHERE uid = %d AND type = %d LIMIT 1", Long.valueOf(j2), Integer.valueOf(i)), new Object[0]);
            }
            if (sQLiteCursorQueryFinalized.next()) {
                iIntValue2 = sQLiteCursorQueryFinalized.intValue(0);
                iIntValue = sQLiteCursorQueryFinalized.intValue(1);
            } else {
                iIntValue = 0;
                iIntValue2 = -1;
            }
            sQLiteCursorQueryFinalized.dispose();
            if (iIntValue2 == -1 && DialogObject.isEncryptedDialog(j2)) {
                SQLiteCursor sQLiteCursorQueryFinalized2 = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT COUNT(mid) FROM media_v4 WHERE uid = %d AND type = %d LIMIT 1", Long.valueOf(j2), Integer.valueOf(i)), new Object[0]);
                if (sQLiteCursorQueryFinalized2.next()) {
                    iIntValue2 = sQLiteCursorQueryFinalized2.intValue(0);
                }
                int i4 = iIntValue2;
                sQLiteCursorQueryFinalized2.dispose();
                if (i4 != -1) {
                    putMediaCountDatabase(j2, j, i, i4);
                }
                i3 = i4;
            } else {
                i3 = iIntValue2;
            }
            processLoadedMediaCount(i3, j2, j, i, i2, true, iIntValue);
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.MediaDataController$1 */
    /* JADX INFO: loaded from: classes5.dex */
    public class RunnableC25511 implements Runnable {
        final /* synthetic */ int val$classGuid;
        final /* synthetic */ int val$count;
        final /* synthetic */ int val$fromCache;
        final /* synthetic */ boolean val$isChannel;
        final /* synthetic */ int val$max_id;
        final /* synthetic */ int val$min_id;
        final /* synthetic */ int val$requestIndex;
        final /* synthetic */ ReactionsLayoutInBubble.VisibleReaction val$tag;
        final /* synthetic */ long val$topicId;
        final /* synthetic */ int val$type;
        final /* synthetic */ long val$uid;

        public RunnableC25511(int i, long j, int i2, long j2, int i3, ReactionsLayoutInBubble.VisibleReaction visibleReaction, int i4, int i5, int i6, boolean z, int i7) {
            this.val$count = i;
            this.val$uid = j;
            this.val$min_id = i2;
            this.val$topicId = j2;
            this.val$type = i3;
            this.val$tag = visibleReaction;
            this.val$max_id = i4;
            this.val$classGuid = i5;
            this.val$fromCache = i6;
            this.val$isChannel = z;
            this.val$requestIndex = i7;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable;
            ArrayList<Long> arrayList;
            ArrayList arrayList2;
            int i;
            SQLiteDatabase database;
            SQLiteDatabase sQLiteDatabase;
            long j;
            SQLiteCursor sQLiteCursorQueryFinalized;
            boolean z;
            boolean z2;
            SQLiteDatabase sQLiteDatabase2;
            boolean z3;
            boolean z4;
            String str;
            String str2;
            int i2;
            SQLiteCursor sQLiteCursorQueryFinalized2;
            int i3;
            SQLiteCursor sQLiteCursorQueryFinalized3;
            int iIntValue;
            boolean z5;
            int i4;
            SQLiteCursor sQLiteCursorQueryFinalized4;
            int iIntValue2;
            long jHashCode;
            int i5;
            SQLiteCursor sQLiteCursorQueryFinalized5;
            int i6;
            int iIntValue3;
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast;
            int i7;
            long clientUserId = MediaDataController.this.getUserConfig().getClientUserId();
            TLRPC.TL_messages_messages tL_messages_messages = new TLRPC.TL_messages_messages();
            boolean z6 = false;
            try {
                try {
                    arrayList = new ArrayList<>();
                    arrayList2 = new ArrayList();
                    i = this.val$count + 1;
                    database = MediaDataController.this.getMessagesStorage().getDatabase();
                } catch (Exception e) {
                    tL_messages_messages.messages.clear();
                    tL_messages_messages.chats.clear();
                    tL_messages_messages.users.clear();
                    FileLog.m898e(e);
                    final int i8 = this.val$classGuid;
                    runnable = new Runnable() { // from class: org.telegram.messenger.MediaDataController$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$run$0(this, i8);
                        }
                    };
                }
                if (!DialogObject.isEncryptedDialog(this.val$uid)) {
                    if (this.val$min_id == 0) {
                        if (this.val$topicId != 0) {
                            sQLiteDatabase = database;
                            sQLiteCursorQueryFinalized5 = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT start FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND start IN (0, 1)", Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(this.val$type)), new Object[0]);
                            i5 = 0;
                        } else {
                            sQLiteDatabase = database;
                            i5 = 0;
                            sQLiteCursorQueryFinalized5 = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT start FROM media_holes_v2 WHERE uid = %d AND type = %d AND start IN (0, 1)", Long.valueOf(this.val$uid), Integer.valueOf(this.val$type)), new Object[0]);
                        }
                        if (sQLiteCursorQueryFinalized5.next()) {
                            z3 = sQLiteCursorQueryFinalized5.intValue(i5) == 1;
                            j = 0;
                        } else {
                            sQLiteCursorQueryFinalized5.dispose();
                            if (this.val$topicId != 0) {
                                sQLiteDatabase = sQLiteDatabase;
                                sQLiteCursorQueryFinalized5 = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT min(mid) FROM media_topics WHERE uid = %d AND topic_id = %d AND type = %d AND mid > 0", Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(this.val$type)), new Object[0]);
                                j = 0;
                                i6 = 0;
                            } else {
                                j = 0;
                                i6 = 0;
                                sQLiteCursorQueryFinalized5 = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT min(mid) FROM media_v4 WHERE uid = %d AND type = %d AND mid > 0", Long.valueOf(this.val$uid), Integer.valueOf(this.val$type)), new Object[0]);
                            }
                            if (sQLiteCursorQueryFinalized5.next() && (iIntValue3 = sQLiteCursorQueryFinalized5.intValue(i6)) != 0) {
                                if (this.val$topicId != j) {
                                    sQLitePreparedStatementExecuteFast = sQLiteDatabase.executeFast("REPLACE INTO media_holes_topics VALUES(?, ?, ?, ?, ?)");
                                } else {
                                    sQLitePreparedStatementExecuteFast = sQLiteDatabase.executeFast("REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)");
                                }
                                SQLitePreparedStatement sQLitePreparedStatement = sQLitePreparedStatementExecuteFast;
                                sQLitePreparedStatement.requery();
                                sQLitePreparedStatement.bindLong(1, this.val$uid);
                                long j2 = this.val$topicId;
                                if (j2 != j) {
                                    sQLitePreparedStatement.bindLong(2, j2);
                                    i7 = 3;
                                } else {
                                    i7 = 2;
                                }
                                sQLitePreparedStatement.bindInteger(i7, this.val$type);
                                sQLitePreparedStatement.bindInteger(i7 + 1, 0);
                                sQLitePreparedStatement.bindInteger(i7 + 2, iIntValue3);
                                sQLitePreparedStatement.step();
                                sQLitePreparedStatement.dispose();
                            }
                            z3 = false;
                        }
                        sQLiteCursorQueryFinalized5.dispose();
                    } else {
                        sQLiteDatabase = database;
                        j = 0;
                        z3 = false;
                    }
                    ReactionsLayoutInBubble.VisibleReaction visibleReaction = this.val$tag;
                    if (visibleReaction == null) {
                        z4 = z3;
                        str = _UrlKt.FRAGMENT_ENCODE_SET;
                        str2 = str;
                    } else {
                        boolean zIsEmpty = TextUtils.isEmpty(visibleReaction.emojicon);
                        ReactionsLayoutInBubble.VisibleReaction visibleReaction2 = this.val$tag;
                        if (!zIsEmpty) {
                            z4 = z3;
                            jHashCode = visibleReaction2.emojicon.hashCode();
                        } else {
                            z4 = z3;
                            jHashCode = visibleReaction2.documentId;
                        }
                        str2 = "t.tag = " + jHashCode + " AND";
                        str = "INNER JOIN tag_message_id t ON m.mid = t.mid";
                    }
                    if (this.val$max_id != 0) {
                        if (this.val$topicId != j) {
                            sQLiteCursorQueryFinalized4 = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT start, end FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND start <= %d ORDER BY end DESC LIMIT 1", Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(this.val$type), Integer.valueOf(this.val$max_id)), new Object[0]);
                            i4 = 0;
                        } else {
                            i4 = 0;
                            sQLiteCursorQueryFinalized4 = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND start <= %d ORDER BY end DESC LIMIT 1", Long.valueOf(this.val$uid), Integer.valueOf(this.val$type), Integer.valueOf(this.val$max_id)), new Object[0]);
                        }
                        if (sQLiteCursorQueryFinalized4.next()) {
                            sQLiteCursorQueryFinalized4.intValue(i4);
                            iIntValue2 = sQLiteCursorQueryFinalized4.intValue(1);
                        } else {
                            iIntValue2 = 0;
                        }
                        sQLiteCursorQueryFinalized4.dispose();
                        if (this.val$topicId != j) {
                            if (iIntValue2 > 1) {
                                sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid FROM media_topics m %s WHERE %s m.uid = %d AND m.topic_id = %d AND m.mid > 0 AND m.mid < %d AND m.mid >= %d AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d", str, str2, Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(this.val$max_id), Integer.valueOf(iIntValue2), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                                z4 = false;
                            } else {
                                sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid FROM media_topics m %s WHERE %s m.uid = %d AND m.topic_id = %d AND m.mid > 0 AND m.mid < %d AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d", str, str2, Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(this.val$max_id), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                            }
                        } else if (iIntValue2 > 1) {
                            sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid FROM media_v4 m %s WHERE %s m.uid = %d AND m.mid > 0 AND m.mid < %d AND m.mid >= %d AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d", str, str2, Long.valueOf(this.val$uid), Integer.valueOf(this.val$max_id), Integer.valueOf(iIntValue2), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                            z4 = false;
                        } else {
                            sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid FROM media_v4 m %s WHERE %s m.uid = %d AND m.mid > 0 AND m.mid < %d AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d", str, str2, Long.valueOf(this.val$uid), Integer.valueOf(this.val$max_id), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                        }
                        AndroidUtilities.runOnUIThread(runnable);
                        MediaDataController.this.processLoadedMedia(tL_messages_messages, this.val$uid, this.val$count, this.val$max_id, this.val$min_id, this.val$type, this.val$topicId, this.val$fromCache, this.val$classGuid, this.val$isChannel, z6, this.val$requestIndex);
                    }
                    int i9 = this.val$min_id;
                    long j3 = this.val$topicId;
                    if (i9 != 0) {
                        if (j3 != j) {
                            sQLiteCursorQueryFinalized3 = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT start, end FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND end >= %d ORDER BY end ASC LIMIT 1", Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(this.val$type), Integer.valueOf(this.val$min_id)), new Object[0]);
                            i3 = 0;
                        } else {
                            i3 = 0;
                            sQLiteCursorQueryFinalized3 = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND end >= %d ORDER BY end ASC LIMIT 1", Long.valueOf(this.val$uid), Integer.valueOf(this.val$type), Integer.valueOf(this.val$min_id)), new Object[0]);
                        }
                        if (sQLiteCursorQueryFinalized3.next()) {
                            iIntValue = sQLiteCursorQueryFinalized3.intValue(i3);
                            sQLiteCursorQueryFinalized3.intValue(1);
                        } else {
                            iIntValue = 0;
                        }
                        sQLiteCursorQueryFinalized3.dispose();
                        if (this.val$topicId != j) {
                            if (iIntValue > 1) {
                                sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid FROM media_topics m %s WHERE %s m.uid = %d AND m.topic_id = %d AND m.mid > 0 AND m.mid >= %d AND m.mid <= %d AND m.type = %d ORDER BY m.date ASC, m.mid ASC LIMIT %d", str, str2, Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(this.val$min_id), Integer.valueOf(iIntValue), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                                z5 = z4;
                            } else {
                                sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid FROM media_topics m %s WHERE %s m.uid = %d AND m.topic_id = %d AND m.mid > 0 AND m.mid >= %d AND m.type = %d ORDER BY m.date ASC, m.mid ASC LIMIT %d", str, str2, Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(this.val$min_id), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                                z5 = true;
                            }
                        } else if (iIntValue > 1) {
                            sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid FROM media_v4 m %s WHERE %s m.uid = %d AND m.mid > 0 AND m.mid >= %d AND m.mid <= %d AND m.type = %d ORDER BY m.date ASC, m.mid ASC LIMIT %d", str, str2, Long.valueOf(this.val$uid), Integer.valueOf(this.val$min_id), Integer.valueOf(iIntValue), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                            z5 = z4;
                        } else {
                            sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid FROM media_v4 m %s WHERE %s m.uid = %d AND m.mid > 0 AND m.mid >= %d AND m.type = %d ORDER BY m.date ASC, m.mid ASC LIMIT %d", str, str2, Long.valueOf(this.val$uid), Integer.valueOf(this.val$min_id), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                            z5 = true;
                        }
                        z = true;
                        z2 = z5;
                    } else {
                        if (j3 != j) {
                            sQLiteCursorQueryFinalized2 = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT max(end) FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d", Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(this.val$type)), new Object[0]);
                            i2 = 0;
                        } else {
                            i2 = 0;
                            sQLiteCursorQueryFinalized2 = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT max(end) FROM media_holes_v2 WHERE uid = %d AND type = %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$type)), new Object[0]);
                        }
                        int iIntValue4 = sQLiteCursorQueryFinalized2.next() ? sQLiteCursorQueryFinalized2.intValue(i2) : 0;
                        sQLiteCursorQueryFinalized2.dispose();
                        if (this.val$topicId != j) {
                            if (iIntValue4 > 1) {
                                sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid FROM media_topics m %s WHERE %s m.uid = %d AND m.topic_id = %d AND m.mid >= %d AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d", str, str2, Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(iIntValue4), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                            } else {
                                sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid FROM media_topics m %s WHERE %s m.uid = %d AND m.topic_id = %d AND m.mid > 0 AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d", str, str2, Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                            }
                        } else if (iIntValue4 > 1) {
                            sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid FROM media_v4 m %s WHERE %s m.uid = %d AND m.mid >= %d AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d", str, str2, Long.valueOf(this.val$uid), Integer.valueOf(iIntValue4), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                        } else {
                            sQLiteDatabase = sQLiteDatabase;
                            sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid FROM media_v4 m %s WHERE %s m.uid = %d AND m.mid > 0 AND m.type = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d", str, str2, Long.valueOf(this.val$uid), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                        }
                    }
                    z5 = z4;
                    z = false;
                    z2 = z5;
                } else {
                    sQLiteDatabase = database;
                    j = 0;
                    long j4 = this.val$topicId;
                    int i10 = this.val$max_id;
                    if (j4 != 0) {
                        if (i10 != 0) {
                            sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND m.mid > %d AND type = %d ORDER BY m.mid ASC LIMIT %d", Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(this.val$max_id), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                        } else if (this.val$min_id != 0) {
                            sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND m.mid < %d AND type = %d ORDER BY m.mid DESC LIMIT %d", Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(this.val$min_id), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                        } else {
                            sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND type = %d ORDER BY m.mid ASC LIMIT %d", Long.valueOf(this.val$uid), Long.valueOf(this.val$topicId), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                        }
                    } else if (i10 != 0) {
                        sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d AND type = %d ORDER BY m.mid ASC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$max_id), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                    } else if (this.val$min_id != 0) {
                        sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid < %d AND type = %d ORDER BY m.mid DESC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$min_id), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                    } else {
                        sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND type = %d ORDER BY m.mid ASC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$type), Integer.valueOf(i)), new Object[0]);
                    }
                    z = false;
                    z2 = true;
                }
                HashSet<Long> hashSet = this.val$tag != null ? new HashSet() : null;
                while (sQLiteCursorQueryFinalized.next()) {
                    NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                    if (nativeByteBufferByteBufferValue != null) {
                        TLRPC.Message messageTLdeserialize = TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                        messageTLdeserialize.readAttachPath(nativeByteBufferByteBufferValue, clientUserId);
                        nativeByteBufferByteBufferValue.reuse();
                        messageTLdeserialize.id = sQLiteCursorQueryFinalized.intValue(1);
                        sQLiteDatabase2 = sQLiteDatabase;
                        long j5 = this.val$uid;
                        messageTLdeserialize.dialog_id = j5;
                        if (DialogObject.isEncryptedDialog(j5)) {
                            messageTLdeserialize.random_id = sQLiteCursorQueryFinalized.longValue(2);
                        }
                        long j6 = messageTLdeserialize.grouped_id;
                        if (j6 != j && hashSet != null) {
                            hashSet.add(Long.valueOf(j6));
                        }
                        ArrayList<TLRPC.Message> arrayList3 = tL_messages_messages.messages;
                        if (z) {
                            arrayList3.add(0, messageTLdeserialize);
                        } else {
                            arrayList3.add(messageTLdeserialize);
                        }
                        MessagesStorage.addUsersAndChatsFromMessage(messageTLdeserialize, arrayList, arrayList2, null);
                    } else {
                        sQLiteDatabase2 = sQLiteDatabase;
                    }
                    sQLiteDatabase = sQLiteDatabase2;
                }
                SQLiteDatabase sQLiteDatabase3 = sQLiteDatabase;
                sQLiteCursorQueryFinalized.dispose();
                if (this.val$tag != null && !hashSet.isEmpty()) {
                    for (Long l : hashSet) {
                        long jLongValue = l.longValue();
                        int i11 = 0;
                        while (true) {
                            if (i11 >= tL_messages_messages.messages.size()) {
                                i11 = -1;
                                break;
                            }
                            long j7 = jLongValue;
                            if (tL_messages_messages.messages.get(i11).grouped_id == j7) {
                                break;
                            }
                            i11++;
                            jLongValue = j7;
                        }
                        if (i11 >= 0) {
                            SQLiteDatabase sQLiteDatabase4 = sQLiteDatabase3;
                            SQLiteCursor sQLiteCursorQueryFinalized6 = sQLiteDatabase4.queryFinalized("SELECT data, mid FROM messages_v2 WHERE uid = ? AND group_id = ? ORDER BY mid DESC", Long.valueOf(this.val$uid), l);
                            ArrayList arrayList4 = new ArrayList();
                            while (sQLiteCursorQueryFinalized6.next()) {
                                int iIntValue5 = sQLiteCursorQueryFinalized6.intValue(1);
                                NativeByteBuffer nativeByteBufferByteBufferValue2 = sQLiteCursorQueryFinalized6.byteBufferValue(0);
                                if (nativeByteBufferByteBufferValue2 != null) {
                                    boolean z7 = z;
                                    TLRPC.Message messageTLdeserialize2 = TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue2, nativeByteBufferByteBufferValue2.readInt32(false), false);
                                    messageTLdeserialize2.readAttachPath(nativeByteBufferByteBufferValue2, clientUserId);
                                    nativeByteBufferByteBufferValue2.reuse();
                                    messageTLdeserialize2.id = iIntValue5;
                                    messageTLdeserialize2.dialog_id = this.val$uid;
                                    arrayList4.add(messageTLdeserialize2);
                                    MessagesStorage.addUsersAndChatsFromMessage(messageTLdeserialize2, arrayList, arrayList2, null);
                                    sQLiteCursorQueryFinalized6 = sQLiteCursorQueryFinalized6;
                                    z = z7;
                                }
                            }
                            boolean z8 = z;
                            SQLiteCursor sQLiteCursor = sQLiteCursorQueryFinalized6;
                            if (z8) {
                                Collections.reverse(arrayList4);
                            }
                            tL_messages_messages.messages.remove(i11);
                            tL_messages_messages.messages.addAll(i11, arrayList4);
                            sQLiteCursor.dispose();
                            z = z8;
                            sQLiteDatabase3 = sQLiteDatabase4;
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    MediaDataController.this.getMessagesStorage().getUsersInternal(arrayList, tL_messages_messages.users);
                }
                if (!arrayList2.isEmpty()) {
                    MediaDataController.this.getMessagesStorage().getChatsInternal(TextUtils.join(",", arrayList2), tL_messages_messages.chats);
                }
                if (tL_messages_messages.messages.size() > this.val$count && this.val$min_id == 0) {
                    ArrayList<TLRPC.Message> arrayList5 = tL_messages_messages.messages;
                    arrayList5.remove(arrayList5.size() - 1);
                } else {
                    z6 = this.val$min_id != 0 ? false : z2;
                }
                final int i12 = this.val$classGuid;
                runnable = new Runnable() { // from class: org.telegram.messenger.MediaDataController$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0(this, i12);
                    }
                };
                AndroidUtilities.runOnUIThread(runnable);
                MediaDataController.this.processLoadedMedia(tL_messages_messages, this.val$uid, this.val$count, this.val$max_id, this.val$min_id, this.val$type, this.val$topicId, this.val$fromCache, this.val$classGuid, this.val$isChannel, z6, this.val$requestIndex);
            } catch (Throwable th) {
                final int i13 = this.val$classGuid;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$0(this, i13);
                    }
                });
                MediaDataController.this.processLoadedMedia(tL_messages_messages, this.val$uid, this.val$count, this.val$max_id, this.val$min_id, this.val$type, this.val$topicId, this.val$fromCache, this.val$classGuid, this.val$isChannel, false, this.val$requestIndex);
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(Runnable runnable, int i) {
            MediaDataController.this.getMessagesStorage().completeTaskForGuid(runnable, i);
        }
    }

    private void loadMediaDatabase(long j, int i, int i2, int i3, int i4, long j2, ReactionsLayoutInBubble.VisibleReaction visibleReaction, int i5, boolean z, int i6, int i7) {
        RunnableC25511 runnableC25511 = new RunnableC25511(i, j, i3, j2, i4, visibleReaction, i2, i5, i6, z, i7);
        MessagesStorage messagesStorage = getMessagesStorage();
        messagesStorage.getStorageQueue().postRunnable(runnableC25511);
        messagesStorage.bindTaskToGuid(runnableC25511, i5);
    }

    private void putMediaDatabase(final long j, final long j2, final int i, final ArrayList<TLRPC.Message> arrayList, final int i2, final int i3, final boolean z) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda241
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$putMediaDatabase$141(i3, arrayList, z, j, i2, i, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$putMediaDatabase$141(int i, ArrayList arrayList, boolean z, long j, int i2, int i3, long j2) {
        long j3;
        SQLitePreparedStatement sQLitePreparedStatementExecuteFast;
        if (i == 0) {
            try {
                if (arrayList.isEmpty() || z) {
                    j3 = j2;
                    getMessagesStorage().doneHolesInMedia(j, i2, i3, j3);
                    if (arrayList.isEmpty()) {
                        return;
                    }
                } else {
                    j3 = j2;
                }
            } catch (Exception e) {
                FileLog.m898e(e);
                return;
            }
        }
        getMessagesStorage().getDatabase().beginTransaction();
        if (j3 != 0) {
            sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO media_topics VALUES(?, ?, ?, ?, ?, ?)");
        } else {
            sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO media_v4 VALUES(?, ?, ?, ?, ?)");
        }
        int size = arrayList.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                break;
            }
            Object obj = arrayList.get(i4);
            i4++;
            TLRPC.Message message = (TLRPC.Message) obj;
            if (canAddMessageToMedia(message)) {
                sQLitePreparedStatementExecuteFast.requery();
                MessageObject.normalizeFlags(message);
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(message.getObjectSize());
                message.serializeToStream(nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.bindInteger(1, message.id);
                sQLitePreparedStatementExecuteFast.bindLong(2, j);
                int i5 = 3;
                if (j3 != 0) {
                    sQLitePreparedStatementExecuteFast.bindLong(3, j3);
                    i5 = 4;
                }
                sQLitePreparedStatementExecuteFast.bindInteger(i5, message.date);
                sQLitePreparedStatementExecuteFast.bindInteger(i5 + 1, i3);
                sQLitePreparedStatementExecuteFast.bindByteBuffer(i5 + 2, nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.step();
                nativeByteBuffer.reuse();
            }
        }
        sQLitePreparedStatementExecuteFast.dispose();
        if (!z || i2 != 0 || i != 0) {
            int i6 = (z && i == 0) ? 1 : ((TLRPC.Message) arrayList.get(arrayList.size() - 1)).id;
            if (i != 0) {
                getMessagesStorage().closeHolesInMedia(j, i6, ((TLRPC.Message) arrayList.get(0)).id, i3, j3);
            } else if (i2 != 0) {
                getMessagesStorage().closeHolesInMedia(j, i6, i2, i3, j2);
            } else {
                getMessagesStorage().closeHolesInMedia(j, i6, Integer.MAX_VALUE, i3, j2);
            }
        }
        getMessagesStorage().getDatabase().commitTransaction();
    }

    public void loadMusic(final long j, final long j2, final long j3) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadMusic$143(j, j2, j3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMusic$143(final long j, long j2, long j3) {
        SQLiteCursor sQLiteCursorQueryFinalized;
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        int i = 0;
        while (i < 2) {
            ArrayList arrayList3 = i == 0 ? arrayList : arrayList2;
            if (i == 0) {
                try {
                    sQLiteCursorQueryFinalized = !DialogObject.isEncryptedDialog(j) ? getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid < %d AND type = %d ORDER BY date DESC, mid DESC LIMIT 1000", Long.valueOf(j), Long.valueOf(j2), 4), new Object[0]) : getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > %d AND type = %d ORDER BY date DESC, mid DESC LIMIT 1000", Long.valueOf(j), Long.valueOf(j2), 4), new Object[0]);
                } catch (Exception e) {
                    FileLog.m898e(e);
                }
            } else {
                sQLiteCursorQueryFinalized = !DialogObject.isEncryptedDialog(j) ? getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > %d AND type = %d ORDER BY date DESC, mid DESC LIMIT 1000", Long.valueOf(j), Long.valueOf(j3), 4), new Object[0]) : getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid < %d AND type = %d ORDER BY date DESC, mid DESC LIMIT 1000", Long.valueOf(j), Long.valueOf(j3), 4), new Object[0]);
            }
            while (sQLiteCursorQueryFinalized.next()) {
                NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                if (nativeByteBufferByteBufferValue != null) {
                    TLRPC.Message messageTLdeserialize = TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                    messageTLdeserialize.readAttachPath(nativeByteBufferByteBufferValue, getUserConfig().clientUserId);
                    nativeByteBufferByteBufferValue.reuse();
                    if (MessageObject.isMusicMessage(messageTLdeserialize)) {
                        messageTLdeserialize.id = sQLiteCursorQueryFinalized.intValue(1);
                        messageTLdeserialize.dialog_id = j;
                        arrayList3.add(0, new MessageObject(this.currentAccount, messageTLdeserialize, false, true));
                    }
                }
            }
            sQLiteCursorQueryFinalized.dispose();
            i++;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda210
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadMusic$142(j, arrayList, arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMusic$142(long j, ArrayList arrayList, ArrayList arrayList2) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.musicDidLoad, Long.valueOf(j), arrayList, arrayList2);
    }

    public void buildShortcuts() {
        int maxShortcutCountPerActivity = ShortcutManagerCompat.getMaxShortcutCountPerActivity(ApplicationLoader.applicationContext) - 2;
        if (maxShortcutCountPerActivity <= 0) {
            maxShortcutCountPerActivity = 5;
        }
        final ArrayList arrayList = new ArrayList();
        if (SharedConfig.passcodeHash.length() <= 0) {
            for (int i = 0; i < this.hints.size(); i++) {
                arrayList.add(this.hints.get(i));
                if (arrayList.size() == maxShortcutCountPerActivity - 2) {
                    break;
                }
            }
        }
        final boolean z = Build.VERSION.SDK_INT >= 30;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda75
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildShortcuts$144(z, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03ba A[Catch: all -> 0x0435, TryCatch #2 {all -> 0x0435, blocks: (B:3:0x0004, B:5:0x0009, B:6:0x002b, B:9:0x0043, B:36:0x00c5, B:38:0x013e, B:42:0x01a7, B:43:0x01ac, B:54:0x01e7, B:55:0x01f3, B:57:0x01f9, B:59:0x0214, B:62:0x023e, B:67:0x0256, B:69:0x0262, B:75:0x0277, B:107:0x037d, B:111:0x0397, B:115:0x03ad, B:117:0x03ba, B:119:0x03bf, B:122:0x0403, B:123:0x040d, B:125:0x041a, B:127:0x0425, B:126:0x0420, B:120:0x03cc, B:105:0x0371, B:71:0x0267, B:73:0x026d, B:60:0x0228, B:45:0x01b4, B:47:0x01bd, B:48:0x01c7, B:49:0x01d0, B:51:0x01d9, B:53:0x01e4, B:52:0x01df, B:10:0x004a, B:12:0x0052, B:14:0x0058, B:16:0x0061, B:18:0x0065, B:20:0x006b, B:22:0x008d, B:24:0x0093, B:26:0x00a3, B:27:0x00a6, B:28:0x00ac, B:30:0x00b2, B:33:0x00ba, B:35:0x00c0), top: B:137:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x03bf A[Catch: all -> 0x0435, TryCatch #2 {all -> 0x0435, blocks: (B:3:0x0004, B:5:0x0009, B:6:0x002b, B:9:0x0043, B:36:0x00c5, B:38:0x013e, B:42:0x01a7, B:43:0x01ac, B:54:0x01e7, B:55:0x01f3, B:57:0x01f9, B:59:0x0214, B:62:0x023e, B:67:0x0256, B:69:0x0262, B:75:0x0277, B:107:0x037d, B:111:0x0397, B:115:0x03ad, B:117:0x03ba, B:119:0x03bf, B:122:0x0403, B:123:0x040d, B:125:0x041a, B:127:0x0425, B:126:0x0420, B:120:0x03cc, B:105:0x0371, B:71:0x0267, B:73:0x026d, B:60:0x0228, B:45:0x01b4, B:47:0x01bd, B:48:0x01c7, B:49:0x01d0, B:51:0x01d9, B:53:0x01e4, B:52:0x01df, B:10:0x004a, B:12:0x0052, B:14:0x0058, B:16:0x0061, B:18:0x0065, B:20:0x006b, B:22:0x008d, B:24:0x0093, B:26:0x00a3, B:27:0x00a6, B:28:0x00ac, B:30:0x00b2, B:33:0x00ba, B:35:0x00c0), top: B:137:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03cc A[Catch: all -> 0x0435, TryCatch #2 {all -> 0x0435, blocks: (B:3:0x0004, B:5:0x0009, B:6:0x002b, B:9:0x0043, B:36:0x00c5, B:38:0x013e, B:42:0x01a7, B:43:0x01ac, B:54:0x01e7, B:55:0x01f3, B:57:0x01f9, B:59:0x0214, B:62:0x023e, B:67:0x0256, B:69:0x0262, B:75:0x0277, B:107:0x037d, B:111:0x0397, B:115:0x03ad, B:117:0x03ba, B:119:0x03bf, B:122:0x0403, B:123:0x040d, B:125:0x041a, B:127:0x0425, B:126:0x0420, B:120:0x03cc, B:105:0x0371, B:71:0x0267, B:73:0x026d, B:60:0x0228, B:45:0x01b4, B:47:0x01bd, B:48:0x01c7, B:49:0x01d0, B:51:0x01d9, B:53:0x01e4, B:52:0x01df, B:10:0x004a, B:12:0x0052, B:14:0x0058, B:16:0x0061, B:18:0x0065, B:20:0x006b, B:22:0x008d, B:24:0x0093, B:26:0x00a3, B:27:0x00a6, B:28:0x00ac, B:30:0x00b2, B:33:0x00ba, B:35:0x00c0), top: B:137:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0403 A[Catch: all -> 0x0435, TryCatch #2 {all -> 0x0435, blocks: (B:3:0x0004, B:5:0x0009, B:6:0x002b, B:9:0x0043, B:36:0x00c5, B:38:0x013e, B:42:0x01a7, B:43:0x01ac, B:54:0x01e7, B:55:0x01f3, B:57:0x01f9, B:59:0x0214, B:62:0x023e, B:67:0x0256, B:69:0x0262, B:75:0x0277, B:107:0x037d, B:111:0x0397, B:115:0x03ad, B:117:0x03ba, B:119:0x03bf, B:122:0x0403, B:123:0x040d, B:125:0x041a, B:127:0x0425, B:126:0x0420, B:120:0x03cc, B:105:0x0371, B:71:0x0267, B:73:0x026d, B:60:0x0228, B:45:0x01b4, B:47:0x01bd, B:48:0x01c7, B:49:0x01d0, B:51:0x01d9, B:53:0x01e4, B:52:0x01df, B:10:0x004a, B:12:0x0052, B:14:0x0058, B:16:0x0061, B:18:0x0065, B:20:0x006b, B:22:0x008d, B:24:0x0093, B:26:0x00a3, B:27:0x00a6, B:28:0x00ac, B:30:0x00b2, B:33:0x00ba, B:35:0x00c0), top: B:137:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x040d A[Catch: all -> 0x0435, TryCatch #2 {all -> 0x0435, blocks: (B:3:0x0004, B:5:0x0009, B:6:0x002b, B:9:0x0043, B:36:0x00c5, B:38:0x013e, B:42:0x01a7, B:43:0x01ac, B:54:0x01e7, B:55:0x01f3, B:57:0x01f9, B:59:0x0214, B:62:0x023e, B:67:0x0256, B:69:0x0262, B:75:0x0277, B:107:0x037d, B:111:0x0397, B:115:0x03ad, B:117:0x03ba, B:119:0x03bf, B:122:0x0403, B:123:0x040d, B:125:0x041a, B:127:0x0425, B:126:0x0420, B:120:0x03cc, B:105:0x0371, B:71:0x0267, B:73:0x026d, B:60:0x0228, B:45:0x01b4, B:47:0x01bd, B:48:0x01c7, B:49:0x01d0, B:51:0x01d9, B:53:0x01e4, B:52:0x01df, B:10:0x004a, B:12:0x0052, B:14:0x0058, B:16:0x0061, B:18:0x0065, B:20:0x006b, B:22:0x008d, B:24:0x0093, B:26:0x00a3, B:27:0x00a6, B:28:0x00ac, B:30:0x00b2, B:33:0x00ba, B:35:0x00c0), top: B:137:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$buildShortcuts$144(boolean z, ArrayList arrayList) {
        ShortcutInfoCompat shortcutInfoCompatBuild;
        TLRPC.Chat chat;
        TLRPC.User user;
        ShortcutInfoCompat shortcutInfoCompat;
        int i;
        char c2;
        byte b2;
        String name;
        TLRPC.FileLocation fileLocation;
        String str;
        Bitmap bitmapDecodeFile;
        Bitmap bitmapCreateBitmap;
        Canvas canvas;
        ArrayList arrayList2 = arrayList;
        try {
            if (SharedConfig.directShareHash == null) {
                SharedConfig.directShareHash = UUID.randomUUID().toString();
                ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putString("directShareHash2", SharedConfig.directShareHash).apply();
            }
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            if (z) {
                ShortcutManagerCompat.removeAllDynamicShortcuts(ApplicationLoader.applicationContext);
            } else {
                List<ShortcutInfoCompat> dynamicShortcuts = ShortcutManagerCompat.getDynamicShortcuts(ApplicationLoader.applicationContext);
                if (dynamicShortcuts != null && !dynamicShortcuts.isEmpty()) {
                    arrayList4.add("compose");
                    if (PluginsController.isPluginEngineSupported()) {
                        arrayList4.add("plugins_safemode");
                    }
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        arrayList4.add("did3_" + MessageObject.getPeerId(((TLRPC.TL_topPeer) arrayList2.get(i2)).peer));
                    }
                    for (int i3 = 0; i3 < dynamicShortcuts.size(); i3++) {
                        String id = dynamicShortcuts.get(i3).getId();
                        if (!arrayList4.remove(id)) {
                            arrayList5.add(id);
                        }
                        arrayList3.add(id);
                    }
                    if (arrayList4.isEmpty() && arrayList5.isEmpty()) {
                        return;
                    }
                }
                if (!arrayList5.isEmpty()) {
                    ShortcutManagerCompat.removeDynamicShortcuts(ApplicationLoader.applicationContext, arrayList5);
                }
            }
            Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
            intent.setAction("new_dialog");
            ArrayList arrayList6 = new ArrayList();
            ShortcutInfoCompat shortcutInfoCompatBuild2 = new ShortcutInfoCompat.Builder(ApplicationLoader.applicationContext, "compose").setShortLabel(LocaleController.getString(C2573R.string.NewConversationShortcut)).setLongLabel(LocaleController.getString(C2573R.string.NewConversationShortcut)).setIcon(IconCompat.createWithAdaptiveBitmap(UIUtil.drawableToBitmap(new CombinedDrawable(UIUtil.createFabBackground(56, -10968099, -10968099), ContextCompat.getDrawable(ApplicationLoader.applicationContext, C2573R.drawable.floating_pencil).mutate()).setIconSize(AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f)), 192, 192))).setRank(PluginsController.isPluginEngineSupported() ? 1 : 0).setIntent(intent).build();
            if (PluginsController.isPluginEngineSupported()) {
                Intent intent2 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
                intent2.setAction("com.exteragram.plugins.safemode");
                shortcutInfoCompatBuild = new ShortcutInfoCompat.Builder(ApplicationLoader.applicationContext, "plugins_safemode").setShortLabel(LocaleController.getString(C2573R.string.PluginsSafeMode)).setLongLabel(LocaleController.getString(C2573R.string.PluginsSafeModeShortcut)).setIcon(IconCompat.createWithAdaptiveBitmap(UIUtil.drawableToBitmap(new CombinedDrawable(UIUtil.createFabBackground(56, -10968099, -10968099), ContextCompat.getDrawable(ApplicationLoader.applicationContext, C2573R.drawable.plugins_safe_mode).mutate()).setIconSize(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(28.0f)), 192, 192))).setRank(0).setIntent(intent2).build();
            } else {
                shortcutInfoCompatBuild = null;
            }
            if (z) {
                if (shortcutInfoCompatBuild != null) {
                    ShortcutManagerCompat.pushDynamicShortcut(ApplicationLoader.applicationContext, shortcutInfoCompatBuild);
                }
                ShortcutManagerCompat.pushDynamicShortcut(ApplicationLoader.applicationContext, shortcutInfoCompatBuild2);
            } else {
                if (shortcutInfoCompatBuild != null) {
                    if (arrayList3.contains("safemode")) {
                        ShortcutManagerCompat.updateShortcuts(ApplicationLoader.applicationContext, Collections.singletonList(shortcutInfoCompatBuild));
                    } else {
                        ShortcutManagerCompat.addDynamicShortcuts(ApplicationLoader.applicationContext, Collections.singletonList(shortcutInfoCompatBuild));
                    }
                }
                arrayList6.add(shortcutInfoCompatBuild2);
                if (arrayList3.contains("compose")) {
                    ShortcutManagerCompat.updateShortcuts(ApplicationLoader.applicationContext, arrayList6);
                } else {
                    ShortcutManagerCompat.addDynamicShortcuts(ApplicationLoader.applicationContext, arrayList6);
                }
                arrayList6.clear();
            }
            boolean z2 = true;
            HashSet hashSet = new HashSet(1);
            hashSet.add(SHORTCUT_CATEGORY);
            for (int i4 = 0; i4 < arrayList2.size(); i4 = i + 1) {
                Intent intent3 = new Intent(ApplicationLoader.applicationContext, (Class<?>) OpenChatReceiver.class);
                long peerId = MessageObject.getPeerId(((TLRPC.TL_topPeer) arrayList2.get(i4)).peer);
                if (DialogObject.isUserDialog(peerId)) {
                    intent3.putExtra("userId", peerId);
                    user = getMessagesController().getUser(Long.valueOf(peerId));
                    chat = null;
                } else {
                    long j = -peerId;
                    TLRPC.Chat chat2 = getMessagesController().getChat(Long.valueOf(j));
                    intent3.putExtra("chatId", j);
                    chat = chat2;
                    user = null;
                }
                if ((user == null || UserObject.isDeleted(user)) && chat == null) {
                    shortcutInfoCompat = shortcutInfoCompatBuild;
                    i = i4;
                    c2 = 192;
                    b2 = -10968099;
                } else if (user != null) {
                    name = ContactsController.formatName(user.first_name, user.last_name);
                    TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
                    fileLocation = userProfilePhoto != null ? userProfilePhoto.photo_small : null;
                    intent3.putExtra("currentAccount", this.currentAccount);
                    intent3.setAction("com.tmessages.openchat" + peerId);
                    intent3.putExtra("dialogId", peerId);
                    intent3.putExtra("hash", SharedConfig.directShareHash);
                    intent3.addFlags(67108864);
                    if (fileLocation != null) {
                        try {
                            bitmapDecodeFile = BitmapFactory.decodeFile(getFileLoader().getPathToAttach(fileLocation, z2).toString());
                            if (bitmapDecodeFile != null) {
                                try {
                                    int iDp = AndroidUtilities.dp(48.0f);
                                    bitmapCreateBitmap = Bitmap.createBitmap(iDp, iDp, Bitmap.Config.ARGB_8888);
                                    canvas = new Canvas(bitmapCreateBitmap);
                                    if (roundPaint == null) {
                                        roundPaint = new Paint(3);
                                        bitmapRect = new RectF();
                                        Paint paint = new Paint(1);
                                        erasePaint = paint;
                                        str = name;
                                        try {
                                            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                                            Path path = new Path();
                                            roundPath = path;
                                            shortcutInfoCompat = shortcutInfoCompatBuild;
                                            i = i4;
                                            try {
                                                path.addCircle(iDp / 2, iDp / 2, (iDp / 2) - AndroidUtilities.dp(2.0f), Path.Direction.CW);
                                                roundPath.toggleInverseFillType();
                                            } catch (Throwable th) {
                                                th = th;
                                                FileLog.m898e(th);
                                                String str2 = "did3_" + peerId;
                                                if (TextUtils.isEmpty(str)) {
                                                }
                                                ShortcutInfoCompat.Builder intent4 = new ShortcutInfoCompat.Builder(ApplicationLoader.applicationContext, str2).setShortLabel(str).setLongLabel(str).setRank(i + 1 + (shortcutInfoCompat != null ? 1 : 0)).setIntent(intent3);
                                                if (SharedConfig.directShare) {
                                                }
                                                if (bitmapDecodeFile != null) {
                                                }
                                                if (z) {
                                                }
                                                arrayList2 = arrayList;
                                                shortcutInfoCompatBuild = shortcutInfoCompat;
                                                z2 = true;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            shortcutInfoCompat = shortcutInfoCompatBuild;
                                            i = i4;
                                            FileLog.m898e(th);
                                            String str22 = "did3_" + peerId;
                                            if (TextUtils.isEmpty(str)) {
                                            }
                                            ShortcutInfoCompat.Builder intent42 = new ShortcutInfoCompat.Builder(ApplicationLoader.applicationContext, str22).setShortLabel(str).setLongLabel(str).setRank(i + 1 + (shortcutInfoCompat != null ? 1 : 0)).setIntent(intent3);
                                            if (SharedConfig.directShare) {
                                            }
                                            if (bitmapDecodeFile != null) {
                                            }
                                            if (z) {
                                            }
                                            arrayList2 = arrayList;
                                            shortcutInfoCompatBuild = shortcutInfoCompat;
                                            z2 = true;
                                        }
                                    } else {
                                        str = name;
                                        shortcutInfoCompat = shortcutInfoCompatBuild;
                                        i = i4;
                                    }
                                    bitmapRect.set(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(46.0f), AndroidUtilities.dp(46.0f));
                                } catch (Throwable th3) {
                                    th = th3;
                                    str = name;
                                }
                                try {
                                    canvas.drawBitmap(bitmapDecodeFile, (Rect) null, bitmapRect, roundPaint);
                                    canvas.drawPath(roundPath, erasePaint);
                                    try {
                                        canvas.setBitmap(null);
                                    } catch (Exception unused) {
                                    }
                                    bitmapDecodeFile = bitmapCreateBitmap;
                                } catch (Throwable th4) {
                                    th = th4;
                                    FileLog.m898e(th);
                                }
                            } else {
                                str = name;
                                shortcutInfoCompat = shortcutInfoCompatBuild;
                                i = i4;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            str = name;
                            shortcutInfoCompat = shortcutInfoCompatBuild;
                            i = i4;
                            bitmapDecodeFile = null;
                        }
                    } else {
                        str = name;
                        shortcutInfoCompat = shortcutInfoCompatBuild;
                        i = i4;
                        bitmapDecodeFile = null;
                    }
                    String str222 = "did3_" + peerId;
                    String str3 = TextUtils.isEmpty(str) ? " " : str;
                    ShortcutInfoCompat.Builder intent422 = new ShortcutInfoCompat.Builder(ApplicationLoader.applicationContext, str222).setShortLabel(str3).setLongLabel(str3).setRank(i + 1 + (shortcutInfoCompat != null ? 1 : 0)).setIntent(intent3);
                    if (SharedConfig.directShare) {
                        intent422.setCategories(hashSet);
                    }
                    if (bitmapDecodeFile != null) {
                        intent422.setIcon(IconCompat.createWithAdaptiveBitmap(bitmapDecodeFile));
                        c2 = 192;
                        b2 = -10968099;
                    } else {
                        b2 = -10968099;
                        c2 = 192;
                        intent422.setIcon(IconCompat.createWithAdaptiveBitmap(UIUtil.drawableToBitmap(new CombinedDrawable(UIUtil.createFabBackground(64, -10968099, -10968099), ContextCompat.getDrawable(ApplicationLoader.applicationContext, C2573R.drawable.mini_reply_user).mutate()).setIconSize(AndroidUtilities.dp(32.0f), AndroidUtilities.dp(32.0f)), 192, 192)));
                    }
                    if (z) {
                        ShortcutManagerCompat.pushDynamicShortcut(ApplicationLoader.applicationContext, intent422.build());
                    } else {
                        arrayList6.add(intent422.build());
                        if (arrayList3.contains(str222)) {
                            ShortcutManagerCompat.updateShortcuts(ApplicationLoader.applicationContext, arrayList6);
                        } else {
                            ShortcutManagerCompat.addDynamicShortcuts(ApplicationLoader.applicationContext, arrayList6);
                        }
                        arrayList6.clear();
                    }
                } else {
                    String str4 = chat.title;
                    TLRPC.ChatPhoto chatPhoto = chat.photo;
                    if (chatPhoto != null) {
                        TLRPC.FileLocation fileLocation2 = chatPhoto.photo_small;
                        name = str4;
                        fileLocation = fileLocation2;
                        intent3.putExtra("currentAccount", this.currentAccount);
                        intent3.setAction("com.tmessages.openchat" + peerId);
                        intent3.putExtra("dialogId", peerId);
                        intent3.putExtra("hash", SharedConfig.directShareHash);
                        intent3.addFlags(67108864);
                        if (fileLocation != null) {
                        }
                        String str2222 = "did3_" + peerId;
                        if (TextUtils.isEmpty(str)) {
                        }
                        ShortcutInfoCompat.Builder intent4222 = new ShortcutInfoCompat.Builder(ApplicationLoader.applicationContext, str2222).setShortLabel(str3).setLongLabel(str3).setRank(i + 1 + (shortcutInfoCompat != null ? 1 : 0)).setIntent(intent3);
                        if (SharedConfig.directShare) {
                        }
                        if (bitmapDecodeFile != null) {
                        }
                        if (z) {
                        }
                    } else {
                        name = str4;
                        intent3.putExtra("currentAccount", this.currentAccount);
                        intent3.setAction("com.tmessages.openchat" + peerId);
                        intent3.putExtra("dialogId", peerId);
                        intent3.putExtra("hash", SharedConfig.directShareHash);
                        intent3.addFlags(67108864);
                        if (fileLocation != null) {
                        }
                        String str22222 = "did3_" + peerId;
                        if (TextUtils.isEmpty(str)) {
                        }
                        ShortcutInfoCompat.Builder intent42222 = new ShortcutInfoCompat.Builder(ApplicationLoader.applicationContext, str22222).setShortLabel(str3).setLongLabel(str3).setRank(i + 1 + (shortcutInfoCompat != null ? 1 : 0)).setIntent(intent3);
                        if (SharedConfig.directShare) {
                        }
                        if (bitmapDecodeFile != null) {
                        }
                        if (z) {
                        }
                    }
                }
                arrayList2 = arrayList;
                shortcutInfoCompatBuild = shortcutInfoCompat;
                z2 = true;
            }
        } catch (Throwable th6) {
            FileLog.m897e("Failed to create shortcuts", th6);
        }
    }

    public void loadHints(boolean z) {
        if (this.loading || !getUserConfig().suggestContacts) {
            return;
        }
        if (z) {
            if (this.loaded) {
                return;
            }
            this.loading = true;
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadHints$146();
                }
            });
            this.loaded = true;
            return;
        }
        this.loading = true;
        TLRPC.TL_contacts_getTopPeers tL_contacts_getTopPeers = new TLRPC.TL_contacts_getTopPeers();
        tL_contacts_getTopPeers.hash = 0L;
        tL_contacts_getTopPeers.bots_pm = false;
        tL_contacts_getTopPeers.correspondents = true;
        tL_contacts_getTopPeers.groups = false;
        tL_contacts_getTopPeers.channels = false;
        tL_contacts_getTopPeers.bots_inline = true;
        tL_contacts_getTopPeers.bots_guestchat = true;
        tL_contacts_getTopPeers.bots_app = true;
        tL_contacts_getTopPeers.offset = 0;
        tL_contacts_getTopPeers.limit = 20;
        getConnectionsManager().sendRequestTyped(tL_contacts_getTopPeers, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$loadHints$149((TLRPC.contacts_TopPeers) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadHints$146() {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        final ArrayList arrayList4 = new ArrayList();
        final ArrayList<TLRPC.User> arrayList5 = new ArrayList<>();
        final ArrayList<TLRPC.Chat> arrayList6 = new ArrayList<>();
        long clientUserId = getUserConfig().getClientUserId();
        try {
            ArrayList<Long> arrayList7 = new ArrayList<>();
            ArrayList arrayList8 = new ArrayList();
            int i = 0;
            SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT did, type, rating FROM chat_hints WHERE 1 ORDER BY rating DESC", new Object[0]);
            while (sQLiteCursorQueryFinalized.next()) {
                long jLongValue = sQLiteCursorQueryFinalized.longValue(i);
                if (jLongValue != clientUserId) {
                    int iIntValue = sQLiteCursorQueryFinalized.intValue(1);
                    TLRPC.TL_topPeer tL_topPeer = new TLRPC.TL_topPeer();
                    long j = clientUserId;
                    tL_topPeer.rating = sQLiteCursorQueryFinalized.doubleValue(2);
                    if (jLongValue > 0) {
                        TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                        tL_topPeer.peer = tL_peerUser;
                        tL_peerUser.user_id = jLongValue;
                        arrayList7.add(Long.valueOf(jLongValue));
                    } else {
                        TLRPC.TL_peerChat tL_peerChat = new TLRPC.TL_peerChat();
                        tL_topPeer.peer = tL_peerChat;
                        long j2 = -jLongValue;
                        tL_peerChat.chat_id = j2;
                        arrayList8.add(Long.valueOf(j2));
                    }
                    if (iIntValue == 0) {
                        arrayList.add(tL_topPeer);
                    } else if (iIntValue == 1) {
                        arrayList2.add(tL_topPeer);
                    } else if (iIntValue == 2) {
                        arrayList4.add(tL_topPeer);
                    } else if (iIntValue == 3) {
                        arrayList3.add(tL_topPeer);
                    }
                    clientUserId = j;
                    i = 0;
                }
            }
            sQLiteCursorQueryFinalized.dispose();
            if (!arrayList7.isEmpty()) {
                getMessagesStorage().getUsersInternal(arrayList7, arrayList5);
            }
            if (!arrayList8.isEmpty()) {
                getMessagesStorage().getChatsInternal(TextUtils.join(",", arrayList8), arrayList6);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda91
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadHints$145(arrayList5, arrayList6, arrayList, arrayList2, arrayList3, arrayList4);
                }
            });
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadHints$145(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5, ArrayList arrayList6) {
        getMessagesController().putUsers(arrayList, true);
        getMessagesController().putChats(arrayList2, true);
        this.loading = false;
        this.loaded = true;
        this.hints = arrayList3;
        this.inlineBots = arrayList4;
        this.guestBots = arrayList5;
        this.webapps = arrayList6;
        buildShortcuts();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadHints, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInlineHints, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadGuestBotHints, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadWebappsHints, new Object[0]);
        if (Math.abs(getUserConfig().lastHintsSyncTime - ((int) (System.currentTimeMillis() / 1000))) >= 86400 || BuildVars.DEBUG_PRIVATE_VERSION) {
            loadHints(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadHints$149(TLRPC.contacts_TopPeers contacts_toppeers, TLRPC.TL_error tL_error) {
        if (contacts_toppeers instanceof TLRPC.TL_contacts_topPeers) {
            final TLRPC.TL_contacts_topPeers tL_contacts_topPeers = (TLRPC.TL_contacts_topPeers) contacts_toppeers;
            getMessagesController().putUsers(tL_contacts_topPeers.users, false);
            getMessagesController().putChats(tL_contacts_topPeers.chats, false);
            int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
            for (int i = 0; i < tL_contacts_topPeers.categories.size(); i++) {
                TLRPC.TL_topPeerCategoryPeers tL_topPeerCategoryPeers = tL_contacts_topPeers.categories.get(i);
                TLRPC.TopPeerCategory topPeerCategory = tL_topPeerCategoryPeers.category;
                if (topPeerCategory instanceof TLRPC.TL_topPeerCategoryBotsInline) {
                    this.inlineBots = tL_topPeerCategoryPeers.peers;
                    getUserConfig().botRatingLoadTime = iCurrentTimeMillis;
                } else if (topPeerCategory instanceof TLRPC.TL_topPeerCategoryBotsApp) {
                    this.webapps = tL_topPeerCategoryPeers.peers;
                    getUserConfig().webappRatingLoadTime = iCurrentTimeMillis;
                } else {
                    boolean z = topPeerCategory instanceof TLRPC.TL_topPeerCategoryBotsGuestChat;
                    ArrayList<TLRPC.TL_topPeer> arrayList = tL_topPeerCategoryPeers.peers;
                    if (z) {
                        this.guestBots = arrayList;
                        getUserConfig().botGuestRatingLoadTime = iCurrentTimeMillis;
                    } else {
                        this.hints = arrayList;
                        long clientUserId = getUserConfig().getClientUserId();
                        int i2 = 0;
                        while (true) {
                            if (i2 >= this.hints.size()) {
                                break;
                            }
                            if (this.hints.get(i2).peer.user_id == clientUserId) {
                                this.hints.remove(i2);
                                break;
                            }
                            i2++;
                        }
                        getUserConfig().ratingLoadTime = (int) (System.currentTimeMillis() / 1000);
                    }
                }
            }
            getUserConfig().saveConfig(false);
            buildShortcuts();
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadHints, new Object[0]);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInlineHints, new Object[0]);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadGuestBotHints, new Object[0]);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadWebappsHints, new Object[0]);
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadHints$148(tL_contacts_topPeers);
                }
            });
            return;
        }
        if (contacts_toppeers instanceof TLRPC.TL_contacts_topPeersDisabled) {
            getUserConfig().suggestContacts = false;
            getUserConfig().lastHintsSyncTime = (int) (System.currentTimeMillis() / 1000);
            getUserConfig().saveConfig(false);
            clearTopPeers();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadHints$148(TLRPC.TL_contacts_topPeers tL_contacts_topPeers) {
        int i;
        try {
            getMessagesStorage().getDatabase().executeFast("DELETE FROM chat_hints WHERE 1").stepThis().dispose();
            getMessagesStorage().getDatabase().beginTransaction();
            getMessagesStorage().putUsersAndChats(tL_contacts_topPeers.users, tL_contacts_topPeers.chats, false, false);
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO chat_hints VALUES(?, ?, ?, ?)");
            for (int i2 = 0; i2 < tL_contacts_topPeers.categories.size(); i2++) {
                TLRPC.TL_topPeerCategoryPeers tL_topPeerCategoryPeers = tL_contacts_topPeers.categories.get(i2);
                TLRPC.TopPeerCategory topPeerCategory = tL_topPeerCategoryPeers.category;
                if (topPeerCategory instanceof TLRPC.TL_topPeerCategoryBotsInline) {
                    i = 1;
                } else if (topPeerCategory instanceof TLRPC.TL_topPeerCategoryBotsApp) {
                    i = 2;
                } else {
                    i = topPeerCategory instanceof TLRPC.TL_topPeerCategoryBotsGuestChat ? 3 : 0;
                }
                for (int i3 = 0; i3 < tL_topPeerCategoryPeers.peers.size(); i3++) {
                    TLRPC.TL_topPeer tL_topPeer = tL_topPeerCategoryPeers.peers.get(i3);
                    sQLitePreparedStatementExecuteFast.requery();
                    sQLitePreparedStatementExecuteFast.bindLong(1, MessageObject.getPeerId(tL_topPeer.peer));
                    sQLitePreparedStatementExecuteFast.bindInteger(2, i);
                    sQLitePreparedStatementExecuteFast.bindDouble(3, tL_topPeer.rating);
                    sQLitePreparedStatementExecuteFast.bindInteger(4, 0);
                    sQLitePreparedStatementExecuteFast.step();
                }
            }
            sQLitePreparedStatementExecuteFast.dispose();
            getMessagesStorage().getDatabase().commitTransaction();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda144
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadHints$147();
                }
            });
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadHints$147() {
        getUserConfig().suggestContacts = true;
        getUserConfig().lastHintsSyncTime = (int) (System.currentTimeMillis() / 1000);
        getUserConfig().saveConfig(false);
    }

    public void clearTopPeers() {
        this.hints.clear();
        this.inlineBots.clear();
        this.guestBots.clear();
        this.webapps.clear();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadHints, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInlineHints, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadGuestBotHints, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadWebappsHints, new Object[0]);
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clearTopPeers$150();
            }
        });
        buildShortcuts();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearTopPeers$150() {
        try {
            getMessagesStorage().getDatabase().executeFast("DELETE FROM chat_hints WHERE 1").stepThis().dispose();
        } catch (Exception unused) {
        }
    }

    public void increaseInlineRating(long j) {
        increaseInlineRating(j, false);
    }

    public void increaseGuestRating(long j) {
        increaseInlineRating(j, true);
    }

    private void increaseInlineRating(long j, boolean z) {
        TLRPC.TL_topPeer tL_topPeer;
        if (getUserConfig().suggestContacts) {
            UserConfig userConfig = getUserConfig();
            int i = z ? userConfig.botGuestRatingLoadTime : userConfig.botRatingLoadTime;
            int iMax = i != 0 ? Math.max(1, ((int) (System.currentTimeMillis() / 1000)) - i) : 60;
            ArrayList<TLRPC.TL_topPeer> arrayList = z ? this.guestBots : this.inlineBots;
            int i2 = 0;
            while (true) {
                if (i2 >= arrayList.size()) {
                    tL_topPeer = null;
                    break;
                }
                tL_topPeer = arrayList.get(i2);
                if (tL_topPeer.peer.user_id == j) {
                    break;
                } else {
                    i2++;
                }
            }
            if (tL_topPeer == null) {
                tL_topPeer = new TLRPC.TL_topPeer();
                TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                tL_topPeer.peer = tL_peerUser;
                tL_peerUser.user_id = j;
                arrayList.add(tL_topPeer);
            }
            tL_topPeer.rating += Math.exp(iMax / getMessagesController().ratingDecay);
            Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda72
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return MediaDataController.$r8$lambda$P1dySDoQn_4jbio2zBGJjRkbc0Y((TLRPC.TL_topPeer) obj, (TLRPC.TL_topPeer) obj2);
                }
            });
            if (arrayList.size() > 20) {
                arrayList.remove(arrayList.size() - 1);
            }
            savePeer(j, z ? 3 : 1, tL_topPeer.rating);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(z ? NotificationCenter.reloadGuestBotHints : NotificationCenter.reloadInlineHints, new Object[0]);
        }
    }

    public static /* synthetic */ int $r8$lambda$P1dySDoQn_4jbio2zBGJjRkbc0Y(TLRPC.TL_topPeer tL_topPeer, TLRPC.TL_topPeer tL_topPeer2) {
        double d = tL_topPeer.rating;
        double d2 = tL_topPeer2.rating;
        if (d > d2) {
            return -1;
        }
        return d < d2 ? 1 : 0;
    }

    public void increaseWebappRating(long j) {
        TLRPC.TL_topPeer tL_topPeer;
        TLRPC.User user = getMessagesController().getUser(Long.valueOf(j));
        if (user == null || !user.bot) {
            return;
        }
        int iMax = getUserConfig().webappRatingLoadTime != 0 ? Math.max(1, ((int) (System.currentTimeMillis() / 1000)) - getUserConfig().webappRatingLoadTime) : 60;
        int i = 0;
        while (true) {
            if (i >= this.webapps.size()) {
                tL_topPeer = null;
                break;
            }
            tL_topPeer = this.webapps.get(i);
            if (tL_topPeer.peer.user_id == j) {
                break;
            } else {
                i++;
            }
        }
        if (tL_topPeer == null) {
            tL_topPeer = new TLRPC.TL_topPeer();
            TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
            tL_topPeer.peer = tL_peerUser;
            tL_peerUser.user_id = j;
            this.webapps.add(tL_topPeer);
        }
        tL_topPeer.rating += Math.exp(iMax / getMessagesController().ratingDecay);
        Collections.sort(this.webapps, new Comparator() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda231
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaDataController.m5608$r8$lambda$Wz5ZfhrNhwTz3ffczVxRHKZoFU((TLRPC.TL_topPeer) obj, (TLRPC.TL_topPeer) obj2);
            }
        });
        if (this.webapps.size() > 20) {
            ArrayList<TLRPC.TL_topPeer> arrayList = this.webapps;
            arrayList.remove(arrayList.size() - 1);
        }
        savePeer(j, 2, tL_topPeer.rating);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadWebappsHints, new Object[0]);
    }

    /* JADX INFO: renamed from: $r8$lambda$Wz5ZfhrNhwT-z3ffczVxRHKZoFU, reason: not valid java name */
    public static /* synthetic */ int m5608$r8$lambda$Wz5ZfhrNhwTz3ffczVxRHKZoFU(TLRPC.TL_topPeer tL_topPeer, TLRPC.TL_topPeer tL_topPeer2) {
        double d = tL_topPeer.rating;
        double d2 = tL_topPeer2.rating;
        if (d > d2) {
            return -1;
        }
        return d < d2 ? 1 : 0;
    }

    public void removeInline(long j) {
        removeInline(j, false);
    }

    private void removeInline(long j, boolean z) {
        ArrayList<TLRPC.TL_topPeer> arrayList = z ? this.guestBots : this.inlineBots;
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i).peer.user_id == j) {
                arrayList.remove(i);
                TLRPC.TL_contacts_resetTopPeerRating tL_contacts_resetTopPeerRating = new TLRPC.TL_contacts_resetTopPeerRating();
                tL_contacts_resetTopPeerRating.category = new TLRPC.TL_topPeerCategoryBotsInline();
                tL_contacts_resetTopPeerRating.peer = getMessagesController().getInputPeer(j);
                getConnectionsManager().sendRequest(tL_contacts_resetTopPeerRating, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda139
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        MediaDataController.$r8$lambda$yvBZU9YodfY_5fjn8X8WYdexeuM(tLObject, tL_error);
                    }
                });
                deletePeer(j, z ? 3 : 1);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(z ? NotificationCenter.reloadGuestBotHints : NotificationCenter.reloadInlineHints, new Object[0]);
                return;
            }
        }
    }

    public void removeWebapp(long j) {
        for (int i = 0; i < this.webapps.size(); i++) {
            if (this.webapps.get(i).peer.user_id == j) {
                this.webapps.remove(i);
                TLRPC.TL_contacts_resetTopPeerRating tL_contacts_resetTopPeerRating = new TLRPC.TL_contacts_resetTopPeerRating();
                tL_contacts_resetTopPeerRating.category = new TLRPC.TL_topPeerCategoryBotsApp();
                tL_contacts_resetTopPeerRating.peer = getMessagesController().getInputPeer(j);
                getConnectionsManager().sendRequest(tL_contacts_resetTopPeerRating, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda56
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        MediaDataController.m5632$r8$lambda$pOs_IvAdkVKJh2nwoNnwDjsx4(tLObject, tL_error);
                    }
                });
                deletePeer(j, 2);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadWebappsHints, new Object[0]);
                return;
            }
        }
    }

    public boolean containsTopPeer(long j) {
        for (int i = 0; i < this.hints.size(); i++) {
            if (DialogObject.getPeerDialogId(this.hints.get(i).peer) == j) {
                return true;
            }
        }
        return false;
    }

    public void removePeer(long j) {
        for (int i = 0; i < this.hints.size(); i++) {
            if (this.hints.get(i).peer.user_id == j) {
                this.hints.remove(i);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadHints, new Object[0]);
                TLRPC.TL_contacts_resetTopPeerRating tL_contacts_resetTopPeerRating = new TLRPC.TL_contacts_resetTopPeerRating();
                tL_contacts_resetTopPeerRating.category = new TLRPC.TL_topPeerCategoryCorrespondents();
                tL_contacts_resetTopPeerRating.peer = getMessagesController().getInputPeer(j);
                deletePeer(j, 0);
                getConnectionsManager().sendRequest(tL_contacts_resetTopPeerRating, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda19
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        MediaDataController.$r8$lambda$BsEC7ly6YHO7J4JRmdpmodYcEOE(tLObject, tL_error);
                    }
                });
                return;
            }
        }
    }

    public void increasePeerRaiting(final long j) {
        TLRPC.User user;
        if (!getUserConfig().suggestContacts || !DialogObject.isUserDialog(j) || (user = getMessagesController().getUser(Long.valueOf(j))) == null || user.bot || user.self) {
            return;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda240
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$increasePeerRaiting$158(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$increasePeerRaiting$158(final long j) {
        int iIntValue;
        double d = 0.0d;
        try {
            int iIntValue2 = 0;
            SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT MAX(mid), MAX(date) FROM messages_v2 WHERE uid = %d AND out = 1", Long.valueOf(j)), new Object[0]);
            if (sQLiteCursorQueryFinalized.next()) {
                iIntValue2 = sQLiteCursorQueryFinalized.intValue(0);
                iIntValue = sQLiteCursorQueryFinalized.intValue(1);
            } else {
                iIntValue = 0;
            }
            sQLiteCursorQueryFinalized.dispose();
            if (iIntValue2 > 0 && getUserConfig().ratingLoadTime != 0) {
                d = iIntValue - getUserConfig().ratingLoadTime;
            }
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        final double d2 = d;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda200
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$increasePeerRaiting$157(j, d2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$increasePeerRaiting$157(long j, double d) {
        TLRPC.TL_topPeer tL_topPeer;
        int i = 0;
        while (true) {
            if (i >= this.hints.size()) {
                tL_topPeer = null;
                break;
            }
            tL_topPeer = this.hints.get(i);
            if (tL_topPeer.peer.user_id == j) {
                break;
            } else {
                i++;
            }
        }
        if (tL_topPeer == null) {
            tL_topPeer = new TLRPC.TL_topPeer();
            TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
            tL_topPeer.peer = tL_peerUser;
            tL_peerUser.user_id = j;
            this.hints.add(tL_topPeer);
        }
        tL_topPeer.rating += Math.exp(d / ((double) getMessagesController().ratingDecay));
        Collections.sort(this.hints, new Comparator() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda101
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaDataController.$r8$lambda$LvLBxOU848h0FdE5Rlx5jepFd3A((TLRPC.TL_topPeer) obj, (TLRPC.TL_topPeer) obj2);
            }
        });
        savePeer(j, 0, tL_topPeer.rating);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadHints, new Object[0]);
    }

    public static /* synthetic */ int $r8$lambda$LvLBxOU848h0FdE5Rlx5jepFd3A(TLRPC.TL_topPeer tL_topPeer, TLRPC.TL_topPeer tL_topPeer2) {
        double d = tL_topPeer.rating;
        double d2 = tL_topPeer2.rating;
        if (d > d2) {
            return -1;
        }
        return d < d2 ? 1 : 0;
    }

    private void savePeer(final long j, final int i, final double d) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda94
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$savePeer$159(j, i, d);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$savePeer$159(long j, int i, double d) {
        try {
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO chat_hints VALUES(?, ?, ?, ?)");
            sQLitePreparedStatementExecuteFast.requery();
            sQLitePreparedStatementExecuteFast.bindLong(1, j);
            sQLitePreparedStatementExecuteFast.bindInteger(2, i);
            sQLitePreparedStatementExecuteFast.bindDouble(3, d);
            sQLitePreparedStatementExecuteFast.bindInteger(4, ((int) System.currentTimeMillis()) / 1000);
            sQLitePreparedStatementExecuteFast.step();
            sQLitePreparedStatementExecuteFast.dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    private void deletePeer(final long j, final int i) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda213
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deletePeer$160(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deletePeer$160(long j, int i) {
        try {
            getMessagesStorage().getDatabase().executeFast(String.format(Locale.US, "DELETE FROM chat_hints WHERE did = %d AND type = %d", Long.valueOf(j), Integer.valueOf(i))).stepThis().dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    private Intent createIntrnalShortcutIntent(long j) {
        Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) OpenChatReceiver.class);
        if (DialogObject.isEncryptedDialog(j)) {
            int encryptedChatId = DialogObject.getEncryptedChatId(j);
            intent.putExtra("encId", encryptedChatId);
            if (getMessagesController().getEncryptedChat(Integer.valueOf(encryptedChatId)) == null) {
                return null;
            }
        } else if (DialogObject.isUserDialog(j)) {
            intent.putExtra("userId", j);
        } else {
            if (!DialogObject.isChatDialog(j)) {
                return null;
            }
            intent.putExtra("chatId", -j);
        }
        intent.putExtra("currentAccount", this.currentAccount);
        intent.setAction("com.tmessages.openchat" + j);
        intent.addFlags(67108864);
        return intent;
    }

    private Intent createIntrnalAttachedBotShortcutIntent(long j) {
        if (j != 0 && canCreateAttachedMenuBotShortcut(j)) {
            Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) OpenAttachedMenuBotReceiver.class);
            if (DialogObject.isUserDialog(j)) {
                intent.putExtra("botId", j);
                intent.putExtra("currentAccount", this.currentAccount);
                intent.setAction(OpenAttachedMenuBotReceiver.ACTION + j);
                intent.addFlags(67108864);
                return intent;
            }
        }
        return null;
    }

    public void installShortcut(long j, int i) {
        installShortcut(j, i, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x01de A[Catch: Exception -> 0x0308, TryCatch #3 {Exception -> 0x0308, blocks: (B:3:0x0008, B:5:0x000c, B:10:0x001b, B:12:0x0021, B:14:0x0027, B:17:0x003b, B:19:0x0041, B:30:0x0080, B:34:0x008a, B:36:0x008e, B:38:0x00a4, B:108:0x01d8, B:110:0x01de, B:114:0x01e8, B:116:0x0208, B:129:0x0251, B:131:0x0284, B:135:0x0292, B:134:0x028e, B:118:0x0212, B:120:0x0216, B:121:0x0222, B:122:0x022e, B:124:0x0234, B:126:0x0238, B:127:0x0244, B:136:0x0297, B:138:0x029e, B:152:0x02e5, B:142:0x02a8, B:144:0x02ac, B:145:0x02b8, B:146:0x02c4, B:148:0x02ca, B:150:0x02ce, B:151:0x02da, B:107:0x01d5, B:42:0x00ab, B:44:0x00b1, B:46:0x00b9, B:48:0x00bf, B:49:0x00c6, B:51:0x00d2, B:52:0x00d5, B:54:0x00db, B:21:0x0052, B:23:0x0058, B:24:0x0065, B:26:0x006b, B:154:0x0302, B:7:0x0012), top: B:162:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0297 A[Catch: Exception -> 0x0308, TryCatch #3 {Exception -> 0x0308, blocks: (B:3:0x0008, B:5:0x000c, B:10:0x001b, B:12:0x0021, B:14:0x0027, B:17:0x003b, B:19:0x0041, B:30:0x0080, B:34:0x008a, B:36:0x008e, B:38:0x00a4, B:108:0x01d8, B:110:0x01de, B:114:0x01e8, B:116:0x0208, B:129:0x0251, B:131:0x0284, B:135:0x0292, B:134:0x028e, B:118:0x0212, B:120:0x0216, B:121:0x0222, B:122:0x022e, B:124:0x0234, B:126:0x0238, B:127:0x0244, B:136:0x0297, B:138:0x029e, B:152:0x02e5, B:142:0x02a8, B:144:0x02ac, B:145:0x02b8, B:146:0x02c4, B:148:0x02ca, B:150:0x02ce, B:151:0x02da, B:107:0x01d5, B:42:0x00ab, B:44:0x00b1, B:46:0x00b9, B:48:0x00bf, B:49:0x00c6, B:51:0x00d2, B:52:0x00d5, B:54:0x00db, B:21:0x0052, B:23:0x0058, B:24:0x0065, B:26:0x006b, B:154:0x0302, B:7:0x0012), top: B:162:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x00e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008a A[Catch: Exception -> 0x0308, TryCatch #3 {Exception -> 0x0308, blocks: (B:3:0x0008, B:5:0x000c, B:10:0x001b, B:12:0x0021, B:14:0x0027, B:17:0x003b, B:19:0x0041, B:30:0x0080, B:34:0x008a, B:36:0x008e, B:38:0x00a4, B:108:0x01d8, B:110:0x01de, B:114:0x01e8, B:116:0x0208, B:129:0x0251, B:131:0x0284, B:135:0x0292, B:134:0x028e, B:118:0x0212, B:120:0x0216, B:121:0x0222, B:122:0x022e, B:124:0x0234, B:126:0x0238, B:127:0x0244, B:136:0x0297, B:138:0x029e, B:152:0x02e5, B:142:0x02a8, B:144:0x02ac, B:145:0x02b8, B:146:0x02c4, B:148:0x02ca, B:150:0x02ce, B:151:0x02da, B:107:0x01d5, B:42:0x00ab, B:44:0x00b1, B:46:0x00b9, B:48:0x00bf, B:49:0x00c6, B:51:0x00d2, B:52:0x00d5, B:54:0x00db, B:21:0x0052, B:23:0x0058, B:24:0x0065, B:26:0x006b, B:154:0x0302, B:7:0x0012), top: B:162:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d5 A[Catch: Exception -> 0x0308, TryCatch #3 {Exception -> 0x0308, blocks: (B:3:0x0008, B:5:0x000c, B:10:0x001b, B:12:0x0021, B:14:0x0027, B:17:0x003b, B:19:0x0041, B:30:0x0080, B:34:0x008a, B:36:0x008e, B:38:0x00a4, B:108:0x01d8, B:110:0x01de, B:114:0x01e8, B:116:0x0208, B:129:0x0251, B:131:0x0284, B:135:0x0292, B:134:0x028e, B:118:0x0212, B:120:0x0216, B:121:0x0222, B:122:0x022e, B:124:0x0234, B:126:0x0238, B:127:0x0244, B:136:0x0297, B:138:0x029e, B:152:0x02e5, B:142:0x02a8, B:144:0x02ac, B:145:0x02b8, B:146:0x02c4, B:148:0x02ca, B:150:0x02ce, B:151:0x02da, B:107:0x01d5, B:42:0x00ab, B:44:0x00b1, B:46:0x00b9, B:48:0x00bf, B:49:0x00c6, B:51:0x00d2, B:52:0x00d5, B:54:0x00db, B:21:0x0052, B:23:0x0058, B:24:0x0065, B:26:0x006b, B:154:0x0302, B:7:0x0012), top: B:162:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x011e A[Catch: all -> 0x012f, TRY_ENTER, TryCatch #7 {all -> 0x012f, blocks: (B:73:0x011e, B:75:0x0129, B:79:0x0136, B:78:0x0133, B:83:0x014a), top: B:169:0x011c }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x013f A[Catch: all -> 0x01d0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x01d0, blocks: (B:71:0x010a, B:81:0x013f, B:85:0x0159), top: B:160:0x010a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void installShortcut(long j, int i, Utilities.Callback<Boolean> callback) {
        TLRPC.Chat chat;
        TLRPC.User user;
        TLRPC.User user2;
        String name;
        TLRPC.FileLocation fileLocation;
        boolean z;
        PendingIntent pendingIntent;
        Bitmap bitmapDecodeFile;
        int iDp;
        Canvas canvas;
        Bitmap bitmap;
        int iDp2;
        PendingIntent broadcast;
        try {
            Intent intentCreateIntrnalShortcutIntent = i == SHORTCUT_TYPE_USER_OR_CHAT ? createIntrnalShortcutIntent(j) : createIntrnalAttachedBotShortcutIntent(j);
            if (intentCreateIntrnalShortcutIntent == null) {
                if (callback != null) {
                    callback.run(Boolean.FALSE);
                    return;
                }
                return;
            }
            if (DialogObject.isEncryptedDialog(j)) {
                TLRPC.EncryptedChat encryptedChat = getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j)));
                if (encryptedChat == null) {
                    if (callback != null) {
                        callback.run(Boolean.FALSE);
                        return;
                    }
                    return;
                }
                user2 = getMessagesController().getUser(Long.valueOf(encryptedChat.user_id));
            } else if (DialogObject.isUserDialog(j)) {
                user2 = getMessagesController().getUser(Long.valueOf(j));
            } else {
                if (!DialogObject.isChatDialog(j)) {
                    if (callback != null) {
                        callback.run(Boolean.FALSE);
                        return;
                    }
                    return;
                }
                chat = getMessagesController().getChat(Long.valueOf(-j));
                user = null;
                if (user != null && chat == null) {
                    if (callback != null) {
                        callback.run(Boolean.FALSE);
                        return;
                    }
                    return;
                }
                if (user == null) {
                    if (i == SHORTCUT_TYPE_ATTACHED_BOT) {
                        name = UserObject.getUserName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j)));
                        TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
                        if (userProfilePhoto != null) {
                            fileLocation = userProfilePhoto.photo_small;
                            z = false;
                        }
                        z = false;
                        fileLocation = null;
                    } else {
                        if (UserObject.isReplyUser(user)) {
                            name = LocaleController.getString(C2573R.string.RepliesTitle);
                        } else if (UserObject.isUserSelf(user)) {
                            name = LocaleController.getString(C2573R.string.SavedMessages);
                        } else {
                            name = ContactsController.formatName(user.first_name, user.last_name);
                            TLRPC.UserProfilePhoto userProfilePhoto2 = user.photo;
                            if (userProfilePhoto2 != null) {
                                fileLocation = userProfilePhoto2.photo_small;
                                z = false;
                            }
                            z = false;
                            fileLocation = null;
                        }
                        z = true;
                        fileLocation = null;
                    }
                } else {
                    name = chat.title;
                    TLRPC.ChatPhoto chatPhoto = chat.photo;
                    if (chatPhoto != null) {
                        fileLocation = chatPhoto.photo_small;
                        z = false;
                    }
                    z = false;
                    fileLocation = null;
                }
                if (z && fileLocation == null) {
                    pendingIntent = null;
                    bitmapDecodeFile = null;
                } else {
                    if (z) {
                        try {
                            bitmapDecodeFile = BitmapFactory.decodeFile(getFileLoader().getPathToAttach(fileLocation, true).toString());
                        } catch (Throwable th) {
                            th = th;
                            pendingIntent = null;
                            bitmapDecodeFile = null;
                            FileLog.m898e(th);
                            if (Build.VERSION.SDK_INT >= 26) {
                            }
                        }
                    } else {
                        bitmapDecodeFile = null;
                    }
                    if (z && bitmapDecodeFile == null) {
                        pendingIntent = null;
                    } else {
                        try {
                            iDp = AndroidUtilities.dp(58.0f);
                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iDp, iDp, Bitmap.Config.ARGB_8888);
                            bitmapCreateBitmap.eraseColor(0);
                            canvas = new Canvas(bitmapCreateBitmap);
                            try {
                                if (!z) {
                                    AvatarDrawable avatarDrawable = new AvatarDrawable(user);
                                    if (UserObject.isReplyUser(user)) {
                                        avatarDrawable.setAvatarType(12);
                                    } else {
                                        avatarDrawable.setAvatarType(1);
                                    }
                                    avatarDrawable.setBounds(0, 0, iDp, iDp);
                                    avatarDrawable.draw(canvas);
                                    bitmap = bitmapDecodeFile;
                                } else {
                                    Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                                    BitmapShader bitmapShader = new BitmapShader(bitmapDecodeFile, tileMode, tileMode);
                                    if (roundPaint == null) {
                                        roundPaint = new Paint(1);
                                        bitmapRect = new RectF();
                                    }
                                    float width = iDp / bitmapDecodeFile.getWidth();
                                    canvas.save();
                                    canvas.scale(width, width);
                                    roundPaint.setShader(bitmapShader);
                                    bitmap = bitmapDecodeFile;
                                    try {
                                        bitmapRect.set(0.0f, 0.0f, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
                                        if (ExteraConfig.getSquareFab()) {
                                            try {
                                                iDp2 = AndroidUtilities.dp(16.0f);
                                            } catch (Throwable th2) {
                                                th = th2;
                                                bitmapDecodeFile = bitmap;
                                                pendingIntent = null;
                                                FileLog.m898e(th);
                                            }
                                        } else {
                                            iDp2 = iDp;
                                        }
                                        float f = iDp2;
                                        canvas.drawRoundRect(bitmapRect, f, f, roundPaint);
                                        canvas.restore();
                                    } catch (Throwable th3) {
                                        th = th3;
                                        pendingIntent = null;
                                        bitmapDecodeFile = bitmap;
                                        FileLog.m898e(th);
                                        if (Build.VERSION.SDK_INT >= 26) {
                                        }
                                    }
                                }
                                Drawable drawable = ApplicationLoader.applicationContext.getResources().getDrawable(C2573R.drawable.book_logo);
                                int iDp3 = AndroidUtilities.dp(15.0f);
                                int i2 = iDp - iDp3;
                                int iDp4 = i2 - AndroidUtilities.dp(2.0f);
                                int iDp5 = i2 - AndroidUtilities.dp(2.0f);
                                drawable.setBounds(iDp4, iDp5, iDp4 + iDp3, iDp3 + iDp5);
                                drawable.draw(canvas);
                                pendingIntent = null;
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                        }
                        try {
                            canvas.setBitmap(null);
                        } catch (Exception unused) {
                        } catch (Throwable th6) {
                            th = th6;
                            bitmapDecodeFile = bitmap;
                            FileLog.m898e(th);
                            if (Build.VERSION.SDK_INT >= 26) {
                            }
                        }
                        bitmapDecodeFile = bitmapCreateBitmap;
                    }
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    String str = i == SHORTCUT_TYPE_USER_OR_CHAT ? "sdid_" : "bdid_";
                    ShortcutInfoCompat.Builder intent = new ShortcutInfoCompat.Builder(ApplicationLoader.applicationContext, str + j).setShortLabel(name).setIntent(intentCreateIntrnalShortcutIntent);
                    if (bitmapDecodeFile != null) {
                        intent.setIcon(IconCompat.createWithBitmap(bitmapDecodeFile));
                    } else if (user != null) {
                        if (user.bot) {
                            intent.setIcon(IconCompat.createWithResource(ApplicationLoader.applicationContext, C2573R.drawable.book_bot));
                        } else {
                            intent.setIcon(IconCompat.createWithResource(ApplicationLoader.applicationContext, C2573R.drawable.book_user));
                        }
                    } else if (ChatObject.isChannel(chat) && !chat.megagroup) {
                        intent.setIcon(IconCompat.createWithResource(ApplicationLoader.applicationContext, C2573R.drawable.book_channel));
                    } else {
                        intent.setIcon(IconCompat.createWithResource(ApplicationLoader.applicationContext, C2573R.drawable.book_group));
                    }
                    if (callback != null) {
                        byte[] bArr = new byte[16];
                        Utilities.fastRandom.nextBytes(bArr);
                        String strBytesToHex = Utilities.bytesToHex(bArr);
                        Intent intent2 = new Intent(ApplicationLoader.applicationContext, (Class<?>) ShortcutResultReceiver.class);
                        intent2.putExtra("account", this.currentAccount);
                        intent2.putExtra("req_id", strBytesToHex);
                        broadcast = PendingIntent.getBroadcast(ApplicationLoader.applicationContext, 0, intent2, 167772160);
                        this.shortcutCallbacks.put(strBytesToHex, callback);
                    } else {
                        broadcast = pendingIntent;
                    }
                    ShortcutManagerCompat.requestPinShortcut(ApplicationLoader.applicationContext, intent.build(), broadcast == null ? pendingIntent : broadcast.getIntentSender());
                    return;
                }
                Intent intent3 = new Intent();
                if (bitmapDecodeFile != null) {
                    intent3.putExtra("android.intent.extra.shortcut.ICON", bitmapDecodeFile);
                } else if (user != null) {
                    if (user.bot) {
                        intent3.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(ApplicationLoader.applicationContext, C2573R.drawable.book_bot));
                    } else {
                        intent3.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(ApplicationLoader.applicationContext, C2573R.drawable.book_user));
                    }
                } else if (!ChatObject.isChannel(chat) || chat.megagroup) {
                    intent3.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(ApplicationLoader.applicationContext, C2573R.drawable.book_group));
                } else {
                    intent3.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(ApplicationLoader.applicationContext, C2573R.drawable.book_channel));
                }
                intent3.putExtra("android.intent.extra.shortcut.INTENT", intentCreateIntrnalShortcutIntent);
                intent3.putExtra("android.intent.extra.shortcut.NAME", name);
                intent3.putExtra("duplicate", false);
                intent3.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
                ApplicationLoader.applicationContext.sendBroadcast(intent3);
                return;
            }
            user = user2;
            chat = null;
            if (user != null) {
            }
            if (user == null) {
            }
            if (z) {
                if (z) {
                }
                if (z) {
                    iDp = AndroidUtilities.dp(58.0f);
                    Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iDp, iDp, Bitmap.Config.ARGB_8888);
                    bitmapCreateBitmap2.eraseColor(0);
                    canvas = new Canvas(bitmapCreateBitmap2);
                    if (!z) {
                    }
                    Drawable drawable2 = ApplicationLoader.applicationContext.getResources().getDrawable(C2573R.drawable.book_logo);
                    int iDp32 = AndroidUtilities.dp(15.0f);
                    int i22 = iDp - iDp32;
                    int iDp42 = i22 - AndroidUtilities.dp(2.0f);
                    int iDp52 = i22 - AndroidUtilities.dp(2.0f);
                    drawable2.setBounds(iDp42, iDp52, iDp42 + iDp32, iDp32 + iDp52);
                    drawable2.draw(canvas);
                    pendingIntent = null;
                    canvas.setBitmap(null);
                    bitmapDecodeFile = bitmapCreateBitmap2;
                }
            }
            if (Build.VERSION.SDK_INT >= 26) {
            }
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00bd A[Catch: Exception -> 0x0103, TryCatch #0 {Exception -> 0x0103, blocks: (B:3:0x0008, B:5:0x000e, B:7:0x0017, B:8:0x0035, B:10:0x0039, B:11:0x0048, B:13:0x0051, B:15:0x0063, B:17:0x006a, B:20:0x007e, B:32:0x00bd, B:34:0x00c1, B:40:0x00d6, B:42:0x00da, B:44:0x00e3, B:43:0x00df, B:35:0x00ca, B:37:0x00ce, B:39:0x00d4, B:22:0x0090, B:24:0x0096, B:25:0x00a3, B:27:0x00a9), top: B:49:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d4 A[Catch: Exception -> 0x0103, TryCatch #0 {Exception -> 0x0103, blocks: (B:3:0x0008, B:5:0x000e, B:7:0x0017, B:8:0x0035, B:10:0x0039, B:11:0x0048, B:13:0x0051, B:15:0x0063, B:17:0x006a, B:20:0x007e, B:32:0x00bd, B:34:0x00c1, B:40:0x00d6, B:42:0x00da, B:44:0x00e3, B:43:0x00df, B:35:0x00ca, B:37:0x00ce, B:39:0x00d4, B:22:0x0090, B:24:0x0096, B:25:0x00a3, B:27:0x00a9), top: B:49:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00da A[Catch: Exception -> 0x0103, TryCatch #0 {Exception -> 0x0103, blocks: (B:3:0x0008, B:5:0x000e, B:7:0x0017, B:8:0x0035, B:10:0x0039, B:11:0x0048, B:13:0x0051, B:15:0x0063, B:17:0x006a, B:20:0x007e, B:32:0x00bd, B:34:0x00c1, B:40:0x00d6, B:42:0x00da, B:44:0x00e3, B:43:0x00df, B:35:0x00ca, B:37:0x00ce, B:39:0x00d4, B:22:0x0090, B:24:0x0096, B:25:0x00a3, B:27:0x00a9), top: B:49:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00df A[Catch: Exception -> 0x0103, TryCatch #0 {Exception -> 0x0103, blocks: (B:3:0x0008, B:5:0x000e, B:7:0x0017, B:8:0x0035, B:10:0x0039, B:11:0x0048, B:13:0x0051, B:15:0x0063, B:17:0x006a, B:20:0x007e, B:32:0x00bd, B:34:0x00c1, B:40:0x00d6, B:42:0x00da, B:44:0x00e3, B:43:0x00df, B:35:0x00ca, B:37:0x00ce, B:39:0x00d4, B:22:0x0090, B:24:0x0096, B:25:0x00a3, B:27:0x00a9), top: B:49:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void uninstallShortcut(long j, int i) {
        TLRPC.Chat chat;
        TLRPC.User user;
        String name;
        try {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 26) {
                ArrayList arrayList = new ArrayList();
                if (i == SHORTCUT_TYPE_USER_OR_CHAT) {
                    arrayList.add("sdid_" + j);
                    arrayList.add("ndid_" + j);
                }
                if (i == SHORTCUT_TYPE_ATTACHED_BOT) {
                    arrayList.add("bdid_" + j);
                }
                ShortcutManagerCompat.removeDynamicShortcuts(ApplicationLoader.applicationContext, arrayList);
                if (i2 >= 30) {
                    ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(ApplicationLoader.applicationContext.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m())).removeLongLivedShortcuts(arrayList);
                    return;
                }
                return;
            }
            TLRPC.User user2 = null;
            if (DialogObject.isEncryptedDialog(j)) {
                TLRPC.EncryptedChat encryptedChat = getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j)));
                if (encryptedChat == null) {
                    return;
                } else {
                    user = getMessagesController().getUser(Long.valueOf(encryptedChat.user_id));
                }
            } else if (DialogObject.isUserDialog(j)) {
                user = getMessagesController().getUser(Long.valueOf(j));
            } else {
                if (DialogObject.isChatDialog(j)) {
                    chat = getMessagesController().getChat(Long.valueOf(-j));
                    if (user2 == null || chat != null) {
                        if (user2 == null) {
                            if (i == SHORTCUT_TYPE_USER_OR_CHAT) {
                                name = ContactsController.formatName(user2.first_name, user2.last_name);
                            } else if (i == SHORTCUT_TYPE_ATTACHED_BOT) {
                                name = user2.first_name;
                            } else {
                                name = _UrlKt.FRAGMENT_ENCODE_SET;
                            }
                        } else {
                            name = chat.title;
                        }
                        Intent intentCreateIntrnalShortcutIntent = i != SHORTCUT_TYPE_USER_OR_CHAT ? createIntrnalShortcutIntent(j) : createIntrnalAttachedBotShortcutIntent(j);
                        Intent intent = new Intent();
                        intent.putExtra("android.intent.extra.shortcut.INTENT", intentCreateIntrnalShortcutIntent);
                        intent.putExtra("android.intent.extra.shortcut.NAME", name);
                        intent.putExtra("duplicate", false);
                        intent.setAction("com.android.launcher.action.UNINSTALL_SHORTCUT");
                        ApplicationLoader.applicationContext.sendBroadcast(intent);
                    }
                    return;
                }
                return;
            }
            user2 = user;
            chat = null;
            if (user2 == null) {
            }
            if (user2 == null) {
            }
            if (i != SHORTCUT_TYPE_USER_OR_CHAT) {
            }
            Intent intent2 = new Intent();
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intentCreateIntrnalShortcutIntent);
            intent2.putExtra("android.intent.extra.shortcut.NAME", name);
            intent2.putExtra("duplicate", false);
            intent2.setAction("com.android.launcher.action.UNINSTALL_SHORTCUT");
            ApplicationLoader.applicationContext.sendBroadcast(intent2);
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public boolean isShortcutAdded(long j, int i) {
        if (Build.VERSION.SDK_INT >= 26) {
            String str = (i == SHORTCUT_TYPE_USER_OR_CHAT ? "sdid_" : "bdid_") + j;
            List<ShortcutInfoCompat> shortcuts = ShortcutManagerCompat.getShortcuts(ApplicationLoader.applicationContext, 4);
            for (int i2 = 0; i2 < shortcuts.size(); i2++) {
                if (shortcuts.get(i2).getId().equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static /* synthetic */ int $r8$lambda$aR_hVqK1QZJSOMKZNzXjeKUfj3Y(TLRPC.MessageEntity messageEntity, TLRPC.MessageEntity messageEntity2) {
        int i = messageEntity.offset;
        int i2 = messageEntity2.offset;
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    public void loadPinnedMessages(final long j, final int i, final int i2) {
        if (this.loadingPinnedMessages.indexOfKey(j) >= 0) {
            return;
        }
        this.loadingPinnedMessages.put(j, Boolean.TRUE);
        final TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
        tL_messages_search.peer = getMessagesController().getInputPeer(j);
        tL_messages_search.limit = 40;
        tL_messages_search.offset_id = i;
        tL_messages_search.f871q = _UrlKt.FRAGMENT_ENCODE_SET;
        tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterPinned();
        getConnectionsManager().sendRequest(tL_messages_search, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda48
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadPinnedMessages$163(i2, tL_messages_search, j, i, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPinnedMessages$163(int i, TLRPC.TL_messages_search tL_messages_search, final long j, int i2, TLObject tLObject, TLRPC.TL_error tL_error) {
        int iMax;
        boolean z;
        ArrayList<Integer> arrayList = new ArrayList<>();
        HashMap<Integer, MessageObject> map = new HashMap<>();
        if (tLObject instanceof TLRPC.messages_Messages) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            LongSparseArray longSparseArray = new LongSparseArray();
            for (int i3 = 0; i3 < messages_messages.users.size(); i3++) {
                TLRPC.User user = messages_messages.users.get(i3);
                longSparseArray.put(user.id, user);
            }
            LongSparseArray longSparseArray2 = new LongSparseArray();
            for (int i4 = 0; i4 < messages_messages.chats.size(); i4++) {
                TLRPC.Chat chat = messages_messages.chats.get(i4);
                longSparseArray2.put(chat.id, chat);
            }
            getMessagesStorage().putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
            getMessagesController().putUsers(messages_messages.users, false);
            getMessagesController().putChats(messages_messages.chats, false);
            int size = messages_messages.messages.size();
            for (int i5 = 0; i5 < size; i5++) {
                TLRPC.Message message = messages_messages.messages.get(i5);
                if (!(message instanceof TLRPC.TL_messageService) && !(message instanceof TLRPC.TL_messageEmpty)) {
                    arrayList.add(Integer.valueOf(message.id));
                    map.put(Integer.valueOf(message.id), new MessageObject(this.currentAccount, message, (LongSparseArray<TLRPC.User>) longSparseArray, (LongSparseArray<TLRPC.Chat>) longSparseArray2, false, false));
                }
            }
            if (i != 0 && arrayList.isEmpty()) {
                arrayList.add(Integer.valueOf(i));
            }
            i = messages_messages.messages.size() >= tL_messages_search.limit ? 0 : 1;
            iMax = Math.max(messages_messages.count, messages_messages.messages.size());
            z = i;
        } else {
            if (i != 0) {
                arrayList.add(Integer.valueOf(i));
            } else {
                i = 0;
            }
            iMax = i;
            z = false;
        }
        getMessagesStorage().updatePinnedMessages(j, arrayList, true, iMax, i2, z, map);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda71
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadPinnedMessages$162(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPinnedMessages$162(long j) {
        this.loadingPinnedMessages.remove(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPinnedMessages$164(long j, long j2, ArrayList arrayList) {
        loadPinnedMessageInternal(j, j2, arrayList, false);
    }

    public ArrayList<MessageObject> loadPinnedMessages(final long j, final long j2, final ArrayList<Integer> arrayList, boolean z) {
        if (z) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadPinnedMessages$164(j, j2, arrayList);
                }
            });
            return null;
        }
        return loadPinnedMessageInternal(j, j2, arrayList, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [org.telegram.SQLite.SQLiteCursor] */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v12, types: [java.lang.Object, org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r10v13, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r19v0, types: [org.telegram.messenger.BaseController, org.telegram.messenger.MediaDataController] */
    /* JADX WARN: Type inference failed for: r20v2, types: [org.telegram.messenger.MediaDataController] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [org.telegram.messenger.BaseController] */
    /* JADX WARN: Type inference failed for: r3v2, types: [org.telegram.messenger.MediaDataController] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r6v9, types: [org.telegram.tgnet.InputSerializedData, org.telegram.tgnet.NativeByteBuffer] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v5 */
    private ArrayList<MessageObject> loadPinnedMessageInternal(final long j, final long j2, ArrayList<Integer> arrayList, boolean z) {
        ?? Join;
        CharSequence charSequence;
        ArrayList<TLRPC.User> arrayList2;
        ?? r3;
        ArrayList<TLRPC.User> arrayList3;
        ArrayList<TLRPC.Chat> arrayList4;
        try {
            ArrayList<Integer> arrayList5 = new ArrayList<>(arrayList);
            if (j2 != 0) {
                Join = new StringBuilder();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    Integer num = arrayList.get(i);
                    if (Join.length() != 0) {
                        Join.append(",");
                    }
                    Join.append(num);
                }
            } else {
                Join = TextUtils.join(",", arrayList);
            }
            ArrayList arrayList6 = new ArrayList();
            ArrayList<TLRPC.User> arrayList7 = new ArrayList<>();
            ArrayList<TLRPC.Chat> arrayList8 = new ArrayList<>();
            ArrayList<Long> arrayList9 = new ArrayList<>();
            ArrayList arrayList10 = new ArrayList();
            long j3 = getUserConfig().clientUserId;
            ?? r9 = 0;
            ?? QueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid, date FROM messages_v2 WHERE mid IN (%s) AND uid = %d", Join, Long.valueOf(j)), new Object[0]);
            while (QueryFinalized.next()) {
                ?? ByteBufferValue = QueryFinalized.byteBufferValue(r9);
                if (ByteBufferValue != 0) {
                    ?? TLdeserialize = TLRPC.Message.TLdeserialize(ByteBufferValue, ByteBufferValue.readInt32(r9), r9);
                    if (!(TLdeserialize.action instanceof TLRPC.TL_messageActionHistoryClear)) {
                        TLdeserialize.readAttachPath(ByteBufferValue, j3);
                        TLdeserialize.id = QueryFinalized.intValue(1);
                        TLdeserialize.date = QueryFinalized.intValue(2);
                        TLdeserialize.dialog_id = j;
                        MessagesStorage.addUsersAndChatsFromMessage(TLdeserialize, arrayList9, arrayList10, null);
                        arrayList6.add(TLdeserialize);
                        arrayList5.remove(Integer.valueOf(TLdeserialize.id));
                    }
                    ByteBufferValue.reuse();
                }
                r9 = 0;
            }
            QueryFinalized.dispose();
            if (!arrayList5.isEmpty()) {
                charSequence = ",";
                arrayList2 = arrayList7;
                SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data FROM chat_pinned_v2 WHERE uid = %d AND mid IN (%s)", Long.valueOf(j), TextUtils.join(charSequence, arrayList5)), new Object[0]);
                while (sQLiteCursorQueryFinalized.next()) {
                    NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                    if (nativeByteBufferByteBufferValue != null) {
                        TLRPC.Message messageTLdeserialize = TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                        if (!(messageTLdeserialize.action instanceof TLRPC.TL_messageActionHistoryClear)) {
                            messageTLdeserialize.readAttachPath(nativeByteBufferByteBufferValue, j3);
                            messageTLdeserialize.dialog_id = j;
                            MessagesStorage.addUsersAndChatsFromMessage(messageTLdeserialize, arrayList9, arrayList10, null);
                            arrayList6.add(messageTLdeserialize);
                            arrayList5.remove(Integer.valueOf(messageTLdeserialize.id));
                        }
                        nativeByteBufferByteBufferValue.reuse();
                    }
                }
                sQLiteCursorQueryFinalized.dispose();
            } else {
                charSequence = ",";
                arrayList2 = arrayList7;
            }
            if (arrayList5.isEmpty()) {
                r3 = this;
            } else if (j2 != 0) {
                final TLRPC.TL_channels_getMessages tL_channels_getMessages = new TLRPC.TL_channels_getMessages();
                tL_channels_getMessages.channel = getMessagesController().getInputChannel(j2);
                tL_channels_getMessages.id = arrayList5;
                getConnectionsManager().sendRequest(tL_channels_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda97
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$loadPinnedMessageInternal$165(j2, j, tL_channels_getMessages, tLObject, tL_error);
                    }
                });
                r3 = this;
            } else {
                final TLRPC.TL_messages_getMessages tL_messages_getMessages = new TLRPC.TL_messages_getMessages();
                tL_messages_getMessages.id = arrayList5;
                final ?? r32 = this;
                getConnectionsManager().sendRequest(tL_messages_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda98
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$loadPinnedMessageInternal$166(j, tL_messages_getMessages, tLObject, tL_error);
                    }
                });
                r3 = r32;
            }
            if (arrayList6.isEmpty()) {
                return null;
            }
            if (arrayList9.isEmpty()) {
                arrayList3 = arrayList2;
            } else {
                arrayList3 = arrayList2;
                r3.getMessagesStorage().getUsersInternal(arrayList9, arrayList3);
            }
            if (arrayList10.isEmpty()) {
                arrayList4 = arrayList8;
            } else {
                arrayList4 = arrayList8;
                r3.getMessagesStorage().getChatsInternal(TextUtils.join(charSequence, arrayList10), arrayList4);
            }
            if (z) {
                return r3.broadcastPinnedMessage(arrayList6, arrayList3, arrayList4, true, true);
            }
            broadcastPinnedMessage(arrayList6, arrayList3, arrayList4, true, false);
            return null;
        } catch (Exception e) {
            FileLog.m898e(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPinnedMessageInternal$165(long j, long j2, TLRPC.TL_channels_getMessages tL_channels_getMessages, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            removeEmptyMessages(messages_messages.messages);
            if (!messages_messages.messages.isEmpty()) {
                getMessagesController().getChat(Long.valueOf(j));
                ImageLoader.saveMessagesThumbs(messages_messages.messages);
                broadcastPinnedMessage(messages_messages.messages, messages_messages.users, messages_messages.chats, false, false);
                getMessagesStorage().putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
                savePinnedMessages(j2, messages_messages.messages);
                return;
            }
        }
        getMessagesStorage().updatePinnedMessages(j2, tL_channels_getMessages.id, false, -1, 0, false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPinnedMessageInternal$166(long j, TLRPC.TL_messages_getMessages tL_messages_getMessages, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            removeEmptyMessages(messages_messages.messages);
            if (!messages_messages.messages.isEmpty()) {
                ImageLoader.saveMessagesThumbs(messages_messages.messages);
                broadcastPinnedMessage(messages_messages.messages, messages_messages.users, messages_messages.chats, false, false);
                getMessagesStorage().putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
                savePinnedMessages(j, messages_messages.messages);
                return;
            }
        }
        getMessagesStorage().updatePinnedMessages(j, tL_messages_getMessages.id, false, -1, 0, false, null);
    }

    private void savePinnedMessages(final long j, final ArrayList<TLRPC.Message> arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda83
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$savePinnedMessages$167(arrayList, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$savePinnedMessages$167(ArrayList arrayList, long j) {
        try {
            getMessagesStorage().getDatabase().beginTransaction();
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO chat_pinned_v2 VALUES(?, ?, ?)");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                TLRPC.Message message = (TLRPC.Message) arrayList.get(i);
                MessageObject.normalizeFlags(message);
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(message.getObjectSize());
                message.serializeToStream(nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.requery();
                sQLitePreparedStatementExecuteFast.bindLong(1, j);
                sQLitePreparedStatementExecuteFast.bindInteger(2, message.id);
                sQLitePreparedStatementExecuteFast.bindByteBuffer(3, nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.step();
                nativeByteBuffer.reuse();
            }
            sQLitePreparedStatementExecuteFast.dispose();
            getMessagesStorage().getDatabase().commitTransaction();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    private ArrayList<MessageObject> broadcastPinnedMessage(final ArrayList<TLRPC.Message> arrayList, final ArrayList<TLRPC.User> arrayList2, final ArrayList<TLRPC.Chat> arrayList3, final boolean z, boolean z2) {
        if (arrayList.isEmpty()) {
            return null;
        }
        final LongSparseArray longSparseArray = new LongSparseArray();
        for (int i = 0; i < arrayList2.size(); i++) {
            TLRPC.User user = arrayList2.get(i);
            longSparseArray.put(user.id, user);
        }
        final LongSparseArray longSparseArray2 = new LongSparseArray();
        for (int i2 = 0; i2 < arrayList3.size(); i2++) {
            TLRPC.Chat chat = arrayList3.get(i2);
            longSparseArray2.put(chat.id, chat);
        }
        final ArrayList<MessageObject> arrayList4 = new ArrayList<>();
        if (z2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda69
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$broadcastPinnedMessage$168(arrayList2, z, arrayList3);
                }
            });
            int size = arrayList.size();
            int i3 = 0;
            int i4 = 0;
            while (i4 < size) {
                TLRPC.Message message = arrayList.get(i4);
                if ((MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaDocument) || (MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaPhoto)) {
                    i3++;
                }
                int i5 = i3;
                LongSparseArray longSparseArray3 = longSparseArray;
                longSparseArray = longSparseArray3;
                arrayList4.add(new MessageObject(this.currentAccount, message, (LongSparseArray<TLRPC.User>) longSparseArray3, (LongSparseArray<TLRPC.Chat>) longSparseArray2, false, i5 < 30));
                i4++;
                i3 = i5;
            }
            return arrayList4;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda70
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$broadcastPinnedMessage$170(arrayList2, z, arrayList3, arrayList, arrayList4, longSparseArray, longSparseArray2);
            }
        });
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcastPinnedMessage$168(ArrayList arrayList, boolean z, ArrayList arrayList2) {
        getMessagesController().putUsers(arrayList, z);
        getMessagesController().putChats(arrayList2, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcastPinnedMessage$170(ArrayList arrayList, boolean z, ArrayList arrayList2, ArrayList arrayList3, final ArrayList arrayList4, LongSparseArray longSparseArray, LongSparseArray longSparseArray2) {
        getMessagesController().putUsers(arrayList, z);
        getMessagesController().putChats(arrayList2, z);
        int size = arrayList3.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            TLRPC.Message message = (TLRPC.Message) arrayList3.get(i2);
            if ((MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaDocument) || (MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaPhoto)) {
                i++;
            }
            arrayList4.add(new MessageObject(this.currentAccount, message, (LongSparseArray<TLRPC.User>) longSparseArray, (LongSparseArray<TLRPC.Chat>) longSparseArray2, false, i < 30));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda187
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$broadcastPinnedMessage$169(arrayList4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcastPinnedMessage$169(ArrayList arrayList) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didLoadPinnedMessages, Long.valueOf(((MessageObject) arrayList.get(0)).getDialogId()), null, Boolean.TRUE, arrayList, null, 0, -1, Boolean.FALSE);
    }

    private static void removeEmptyMessages(ArrayList<TLRPC.Message> arrayList) {
        int i = 0;
        while (i < arrayList.size()) {
            TLRPC.Message message = arrayList.get(i);
            if (message == null || (message instanceof TLRPC.TL_messageEmpty) || (message.action instanceof TLRPC.TL_messageActionHistoryClear)) {
                arrayList.remove(i);
                i--;
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x021c A[PHI: r18
  0x021c: PHI (r18v5 long) = (r18v0 long), (r18v6 long) binds: [B:114:0x0219, B:111:0x020e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x03d1 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadReplyMessagesForMessages(ArrayList<MessageObject> arrayList, final long j, int i, long j2, final Runnable runnable, final int i2, final Timer timer) {
        LongSparseArray longSparseArray;
        Timer.Task task;
        int i3;
        LongSparseArray longSparseArray2;
        TLRPC.Message message;
        TLRPC.MessageMedia messageMedia;
        TLRPC.WebPage webPage;
        MessageObject messageObject;
        long j3;
        long j4;
        MessageObject messageObject2;
        SparseArray sparseArray;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        TLRPC.Chat chat;
        TLRPC.Message message2;
        TLRPC.Peer peer;
        boolean z;
        boolean z2;
        ArrayList<MessageObject> arrayList5 = arrayList;
        boolean z3 = true;
        final boolean z4 = i == 1;
        if (DialogObject.isEncryptedDialog(j)) {
            Timer.Task taskStart = Timer.start(timer, "loadReplyMessagesForMessages: (encrypted) finding messages to load");
            final ArrayList arrayList6 = new ArrayList();
            final LongSparseArray longSparseArray3 = new LongSparseArray();
            for (int i4 = 0; i4 < arrayList5.size(); i4++) {
                MessageObject messageObject3 = arrayList5.get(i4);
                if (messageObject3 != null && messageObject3.isReply() && messageObject3.replyMessageObject == null) {
                    long j5 = messageObject3.messageOwner.reply_to.reply_to_random_id;
                    ArrayList arrayList7 = (ArrayList) longSparseArray3.get(j5);
                    if (arrayList7 == null) {
                        arrayList7 = new ArrayList();
                        longSparseArray3.put(j5, arrayList7);
                    }
                    arrayList7.add(messageObject3);
                    if (!arrayList6.contains(Long.valueOf(j5))) {
                        arrayList6.add(Long.valueOf(j5));
                    }
                }
            }
            if (arrayList6.isEmpty()) {
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            } else {
                Timer.done(taskStart);
                final Timer.Task taskStart2 = Timer.start(timer, "loadReplyMessagesForMessages (encrypted) storageQueue.postRunnable");
                getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda189
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$loadReplyMessagesForMessages$172(taskStart2, timer, arrayList6, j, longSparseArray3, runnable);
                    }
                });
                return;
            }
        }
        final LongSparseArray longSparseArray4 = new LongSparseArray();
        final LongSparseArray longSparseArray5 = new LongSparseArray();
        Timer.Task taskStart3 = Timer.start(timer, "loadReplyMessagesForMessages: filling replies from the same array");
        int i5 = 0;
        while (true) {
            longSparseArray = null;
            if (i5 >= arrayList5.size()) {
                break;
            }
            MessageObject messageObject4 = arrayList5.get(i5);
            if (messageObject4 != null && !messageObject4.isReplyToStory() && messageObject4.isReply() && messageObject4.getRealId() > 0) {
                TLRPC.MessageReplyHeader messageReplyHeader = messageObject4.messageOwner.reply_to;
                if (messageReplyHeader.reply_to_peer_id != null) {
                    z = z3;
                } else {
                    int i6 = messageReplyHeader.reply_to_msg_id;
                    int i7 = 0;
                    while (true) {
                        if (i7 >= arrayList5.size()) {
                            break;
                        }
                        if (i5 == i7 || arrayList5.get(i7) == null || arrayList5.get(i7).getRealId() != i6) {
                            i7++;
                        } else {
                            messageObject4.replyMessageObject = arrayList5.get(i7);
                            messageObject4.applyTimestampsHighlightForReplyMsg();
                            TLRPC.MessageAction messageAction = messageObject4.messageOwner.action;
                            if (messageAction instanceof TLRPC.TL_messageActionPinMessage) {
                                messageObject4.generatePinMessageText(null, null);
                            } else if (messageAction instanceof TLRPC.TL_messageActionGameScore) {
                                messageObject4.generateGameMessageText(null);
                            } else if (messageAction instanceof TLRPC.TL_messageActionPaymentSent) {
                                messageObject4.generatePaymentSentMessageText(null, false);
                            } else {
                                if (messageAction instanceof TLRPC.TL_messageActionPaymentSentMe) {
                                    z2 = true;
                                    messageObject4.generatePaymentSentMessageText(null, true);
                                } else {
                                    z2 = true;
                                    if (messageAction instanceof TLRPC.TL_messageActionSuggestedPostApproval) {
                                        messageObject4.generateSuggestionApprovalMessageText();
                                    }
                                }
                                z = z2;
                            }
                        }
                    }
                    z = true;
                }
            }
            i5++;
            z3 = z;
        }
        Timer.done(taskStart3);
        Timer.Task taskStart4 = Timer.start(timer, "loadReplyMessagesForMessages: gathering ids of missing reply data");
        int i8 = 0;
        while (i8 < arrayList5.size()) {
            MessageObject messageObject5 = arrayList5.get(i8);
            if (messageObject5 == null) {
                task = taskStart4;
                longSparseArray2 = longSparseArray;
            } else {
                int i9 = messageObject5.type;
                if (i9 == 23 || i9 == 24) {
                    task = taskStart4;
                    i3 = i8;
                    longSparseArray2 = longSparseArray;
                    TLRPC.MessageMedia messageMedia2 = messageObject5.messageOwner.media;
                    if (messageMedia2.storyItem == null) {
                        long peerDialogId = DialogObject.getPeerDialogId(messageMedia2.peer);
                        longSparseArray = longSparseArray2 == null ? new LongSparseArray() : longSparseArray2;
                        ArrayList arrayList8 = (ArrayList) longSparseArray.get(peerDialogId);
                        if (arrayList8 == null) {
                            arrayList8 = new ArrayList();
                            longSparseArray.put(peerDialogId, arrayList8);
                        }
                        StringBuilder sb = new StringBuilder("+story did=");
                        sb.append(peerDialogId);
                        sb.append(" at ");
                        sb.append(messageObject5.type == 23 ? "forwarded" : "mentioned");
                        sb.append(" #");
                        sb.append(messageObject5.getId());
                        Timer.log(timer, sb.toString());
                        arrayList8.add(messageObject5);
                        if (messageObject5.type == 0 && (message = messageObject5.messageOwner) != null && (messageMedia = message.media) != null && (webPage = messageMedia.webpage) != null && webPage.attributes != null) {
                            int i10 = 0;
                            while (i10 < messageObject5.messageOwner.media.webpage.attributes.size()) {
                                TLRPC.WebPageAttribute webPageAttribute = messageObject5.messageOwner.media.webpage.attributes.get(i10);
                                if (webPageAttribute instanceof TLRPC.TL_webPageAttributeStory) {
                                    TLRPC.TL_webPageAttributeStory tL_webPageAttributeStory = (TLRPC.TL_webPageAttributeStory) webPageAttribute;
                                    TL_stories.StoryItem storyItem = tL_webPageAttributeStory.storyItem;
                                    TLRPC.Peer peer2 = tL_webPageAttributeStory.peer;
                                    if (storyItem == null) {
                                        long peerDialogId2 = DialogObject.getPeerDialogId(peer2);
                                        if (longSparseArray == null) {
                                            longSparseArray = new LongSparseArray();
                                        }
                                        ArrayList arrayList9 = (ArrayList) longSparseArray.get(peerDialogId2);
                                        if (arrayList9 == null) {
                                            arrayList9 = new ArrayList();
                                            longSparseArray.put(peerDialogId2, arrayList9);
                                        }
                                        Timer.log(timer, "+story did=" + peerDialogId2 + " at webpage of #" + messageObject5.getId());
                                        arrayList9.add(messageObject5);
                                        messageObject = messageObject5;
                                    } else {
                                        messageObject = messageObject5;
                                        tL_webPageAttributeStory.storyItem = StoriesStorage.checkExpiredStateLocal(this.currentAccount, DialogObject.getPeerDialogId(peer2), tL_webPageAttributeStory.storyItem);
                                    }
                                } else {
                                    messageObject = messageObject5;
                                }
                                i10++;
                                messageObject5 = messageObject;
                            }
                        }
                    } else {
                        long peerDialogId3 = DialogObject.getPeerDialogId(messageMedia2.peer);
                        TLRPC.MessageMedia messageMedia3 = messageObject5.messageOwner.media;
                        messageMedia3.storyItem = StoriesStorage.checkExpiredStateLocal(this.currentAccount, peerDialogId3, messageMedia3.storyItem);
                        longSparseArray = longSparseArray2;
                        if (messageObject5.type == 0) {
                        }
                    }
                } else {
                    if (messageObject5.getRealId() > 0 && messageObject5.isReplyToStory()) {
                        TLRPC.Message message3 = messageObject5.messageOwner;
                        if (message3.replyStory == null) {
                            long peerDialogId4 = DialogObject.getPeerDialogId(message3.reply_to.peer);
                            if (longSparseArray == null) {
                                longSparseArray = new LongSparseArray();
                            }
                            ArrayList arrayList10 = (ArrayList) longSparseArray.get(peerDialogId4);
                            if (arrayList10 == null) {
                                arrayList10 = new ArrayList();
                                longSparseArray.put(peerDialogId4, arrayList10);
                            }
                            task = taskStart4;
                            Timer.log(timer, "+story did=" + peerDialogId4 + " at replied #" + messageObject5.getId());
                            arrayList10.add(messageObject5);
                            i3 = i8;
                            if (messageObject5.type == 0) {
                            }
                        } else {
                            task = taskStart4;
                            long peerDialogId5 = DialogObject.getPeerDialogId(message3.reply_to.peer);
                            TLRPC.Message message4 = messageObject5.messageOwner;
                            message4.replyStory = StoriesStorage.checkExpiredStateLocal(this.currentAccount, peerDialogId5, message4.replyStory);
                        }
                    } else {
                        task = taskStart4;
                        if (messageObject5.getRealId() > 0 && messageObject5.isReply()) {
                            TLRPC.Message message5 = messageObject5.messageOwner;
                            TLRPC.MessageReplyHeader messageReplyHeader2 = message5.reply_to;
                            int i11 = messageReplyHeader2.reply_to_msg_id;
                            longSparseArray2 = longSparseArray;
                            if (i11 != j2) {
                                TLRPC.Peer peer3 = messageReplyHeader2.reply_to_peer_id;
                                if (peer3 != null) {
                                    j3 = 0;
                                    j4 = peer3.channel_id;
                                    if (j4 == 0) {
                                        j4 = j3;
                                    }
                                    messageObject2 = messageObject5.replyMessageObject;
                                    if ((messageObject2 != null || ((message2 = messageObject2.messageOwner) != null && (peer = message2.peer_id) != null && !(message5 instanceof TLRPC.TL_messageEmpty) && peer.channel_id != j4)) && (j == UserObject.REPLY_BOT || j4 == j3 || messageObject5.getDialogId() == (-j4) || (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j4))) == null || ChatObject.isPublic(chat))) {
                                        sparseArray = (SparseArray) longSparseArray4.get(j);
                                        arrayList2 = (ArrayList) longSparseArray5.get(j4);
                                        if (sparseArray == null) {
                                            sparseArray = new SparseArray();
                                            longSparseArray4.put(j, sparseArray);
                                        }
                                        if (arrayList2 == null) {
                                            arrayList2 = new ArrayList();
                                            longSparseArray5.put(j4, arrayList2);
                                        }
                                        arrayList3 = (ArrayList) sparseArray.get(i11);
                                        i3 = i8;
                                        if (arrayList3 == null) {
                                            arrayList4 = new ArrayList();
                                            sparseArray.put(i11, arrayList4);
                                            if (!arrayList2.contains(Integer.valueOf(i11))) {
                                                arrayList2.add(Integer.valueOf(i11));
                                            }
                                        } else {
                                            arrayList4 = arrayList3;
                                        }
                                        arrayList4.add(messageObject5);
                                        Timer.log(timer, "+message did=" + (-j4) + " mid=" + i11 + " at replied #" + messageObject5.getId());
                                    }
                                } else {
                                    j3 = 0;
                                    j4 = message5.peer_id.channel_id;
                                    if (j4 == 0) {
                                    }
                                    messageObject2 = messageObject5.replyMessageObject;
                                    if (messageObject2 != null) {
                                        sparseArray = (SparseArray) longSparseArray4.get(j);
                                        arrayList2 = (ArrayList) longSparseArray5.get(j4);
                                        if (sparseArray == null) {
                                        }
                                        if (arrayList2 == null) {
                                        }
                                        arrayList3 = (ArrayList) sparseArray.get(i11);
                                        i3 = i8;
                                        if (arrayList3 == null) {
                                        }
                                        arrayList4.add(messageObject5);
                                        Timer.log(timer, "+message did=" + (-j4) + " mid=" + i11 + " at replied #" + messageObject5.getId());
                                    } else {
                                        sparseArray = (SparseArray) longSparseArray4.get(j);
                                        arrayList2 = (ArrayList) longSparseArray5.get(j4);
                                        if (sparseArray == null) {
                                        }
                                        if (arrayList2 == null) {
                                        }
                                        arrayList3 = (ArrayList) sparseArray.get(i11);
                                        i3 = i8;
                                        if (arrayList3 == null) {
                                        }
                                        arrayList4.add(messageObject5);
                                        Timer.log(timer, "+message did=" + (-j4) + " mid=" + i11 + " at replied #" + messageObject5.getId());
                                    }
                                }
                            }
                        }
                        longSparseArray = longSparseArray2;
                        if (messageObject5.type == 0) {
                        }
                    }
                    i3 = i8;
                    longSparseArray2 = longSparseArray;
                    longSparseArray = longSparseArray2;
                    if (messageObject5.type == 0) {
                    }
                }
                i8 = i3 + 1;
                arrayList5 = arrayList;
                taskStart4 = task;
            }
            i3 = i8;
            longSparseArray = longSparseArray2;
            i8 = i3 + 1;
            arrayList5 = arrayList;
            taskStart4 = task;
        }
        final LongSparseArray longSparseArray6 = longSparseArray;
        Timer.done(taskStart4);
        if (longSparseArray4.isEmpty() && longSparseArray6 == null) {
            if (runnable != null) {
                runnable.run();
            }
        } else {
            final Timer.Task taskStart5 = Timer.start(timer, "loadReplyMessagesForMessages: storageQueue.postRunnable");
            final AtomicInteger atomicInteger = new AtomicInteger(2);
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda190
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadReplyMessagesForMessages$178(taskStart5, longSparseArray6, atomicInteger, runnable, i2, timer, longSparseArray4, longSparseArray5, z4, j);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$172(Timer.Task task, Timer timer, ArrayList arrayList, final long j, LongSparseArray longSparseArray, Runnable runnable) {
        Timer.done(task);
        Timer.Task taskStart = Timer.start(timer, "loadReplyMessagesForMessages: (encrypted) loading those messages from storage");
        try {
            final ArrayList arrayList2 = new ArrayList();
            SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, m.date, r.random_id FROM randoms_v2 as r INNER JOIN messages_v2 as m ON r.mid = m.mid AND r.uid = m.uid WHERE r.random_id IN(%s)", TextUtils.join(",", arrayList)), new Object[0]);
            while (sQLiteCursorQueryFinalized.next()) {
                NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                if (nativeByteBufferByteBufferValue != null) {
                    TLRPC.Message messageTLdeserialize = TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                    messageTLdeserialize.readAttachPath(nativeByteBufferByteBufferValue, getUserConfig().clientUserId);
                    nativeByteBufferByteBufferValue.reuse();
                    messageTLdeserialize.id = sQLiteCursorQueryFinalized.intValue(1);
                    messageTLdeserialize.date = sQLiteCursorQueryFinalized.intValue(2);
                    messageTLdeserialize.dialog_id = j;
                    long jLongValue = sQLiteCursorQueryFinalized.longValue(3);
                    ArrayList arrayList3 = (ArrayList) longSparseArray.get(jLongValue);
                    longSparseArray.remove(jLongValue);
                    if (arrayList3 != null) {
                        MessageObject messageObject = new MessageObject(this.currentAccount, messageTLdeserialize, false, false);
                        arrayList2.add(messageObject);
                        for (int i = 0; i < arrayList3.size(); i++) {
                            MessageObject messageObject2 = (MessageObject) arrayList3.get(i);
                            messageObject2.replyMessageObject = messageObject;
                            messageObject2.applyTimestampsHighlightForReplyMsg();
                            messageObject2.messageOwner.reply_to = new TLRPC.TL_messageReplyHeader();
                            TLRPC.MessageReplyHeader messageReplyHeader = messageObject2.messageOwner.reply_to;
                            messageReplyHeader.flags |= 16;
                            messageReplyHeader.reply_to_msg_id = messageObject.getRealId();
                        }
                    }
                }
            }
            sQLiteCursorQueryFinalized.dispose();
            if (longSparseArray.size() != 0) {
                for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
                    ArrayList arrayList4 = (ArrayList) longSparseArray.valueAt(i2);
                    for (int i3 = 0; i3 < arrayList4.size(); i3++) {
                        TLRPC.MessageReplyHeader messageReplyHeader2 = ((MessageObject) arrayList4.get(i3)).messageOwner.reply_to;
                        if (messageReplyHeader2 != null) {
                            messageReplyHeader2.reply_to_random_id = 0L;
                        }
                    }
                }
            }
            Timer.done(taskStart);
            final Timer.Task taskStart2 = Timer.start(timer, "loadReplyMessagesForMessages (encrypted) runOnUIThread: posting notification");
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda207
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadReplyMessagesForMessages$171(taskStart2, j, arrayList2);
                }
            });
            if (runnable != null) {
                runnable.run();
            }
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$171(Timer.Task task, long j, ArrayList arrayList) {
        Timer.done(task);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.replyMessagesDidLoad, Long.valueOf(j), arrayList, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v14 */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$178(Timer.Task task, LongSparseArray longSparseArray, final AtomicInteger atomicInteger, final Runnable runnable, int i, final Timer timer, final LongSparseArray longSparseArray2, LongSparseArray longSparseArray3, final boolean z, final long j) {
        Timer.Task task2;
        ArrayList<TLRPC.Chat> arrayList;
        int i2;
        LongSparseArray longSparseArray4;
        ArrayList<TLRPC.Chat> arrayList2;
        int i3;
        int i4;
        ArrayList<TLRPC.EphemeralMessage> ephemeralMessagesInternal;
        int i5;
        int i6;
        int i7;
        ?? r12;
        SQLiteCursor sQLiteCursorQueryFinalized;
        ArrayList<TLRPC.Chat> arrayList3;
        ArrayList<TLRPC.Chat> arrayList4;
        LongSparseArray longSparseArray5 = longSparseArray2;
        LongSparseArray longSparseArray6 = longSparseArray3;
        long j2 = j;
        Timer.done(task);
        try {
            getMessagesController().getStoriesController().fillMessagesWithStories(longSparseArray, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda171
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.$r8$lambda$1LlOZ4aV8WXdNH1UY01IaIaodaY(atomicInteger, runnable);
                }
            }, i, timer);
            if (longSparseArray5.isEmpty()) {
                Timer.log(timer, "loadReplyMessagesForMessages: empty replyMessageOwners");
                if (atomicInteger.decrementAndGet() != 0 || runnable == null) {
                    return;
                }
                AndroidUtilities.runOnUIThread(runnable);
                return;
            }
            Timer.Task taskStart = Timer.start(timer, "loadReplyMessagesForMessages: getting reply messages");
            ArrayList<TLRPC.Message> arrayList5 = new ArrayList<>();
            ArrayList<TLRPC.User> arrayList6 = new ArrayList<>();
            ArrayList<TLRPC.Chat> arrayList7 = new ArrayList<>();
            ArrayList<Long> arrayList8 = new ArrayList<>();
            ArrayList arrayList9 = new ArrayList();
            int size = longSparseArray5.size();
            int i8 = 0;
            while (true) {
                task2 = taskStart;
                if (i8 >= size) {
                    break;
                }
                long jKeyAt = longSparseArray5.keyAt(i8);
                ArrayList arrayList10 = (ArrayList) longSparseArray6.get(-jKeyAt);
                if (arrayList10 == null) {
                    arrayList2 = arrayList7;
                    i3 = size;
                    i4 = i8;
                } else {
                    int i9 = 0;
                    while (i9 < 2) {
                        if (i9 != 1 || z) {
                            if (i9 == 1) {
                                i5 = i9;
                                i6 = size;
                                i7 = i8;
                                r12 = 0;
                                sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid, date, uid FROM scheduled_messages_v2 WHERE mid IN(%s) AND uid = %d", TextUtils.join(",", arrayList10), Long.valueOf(j2)), new Object[0]);
                            } else {
                                i5 = i9;
                                i6 = size;
                                i7 = i8;
                                r12 = 0;
                                sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid, date, uid FROM messages_v2 WHERE mid IN(%s) AND uid = %d", TextUtils.join(",", arrayList10), Long.valueOf(j2)), new Object[0]);
                            }
                            while (sQLiteCursorQueryFinalized.next()) {
                                NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(r12);
                                if (nativeByteBufferByteBufferValue != 0) {
                                    TLRPC.Message messageTLdeserialize = TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(r12), r12);
                                    arrayList4 = arrayList7;
                                    messageTLdeserialize.readAttachPath(nativeByteBufferByteBufferValue, getUserConfig().clientUserId);
                                    nativeByteBufferByteBufferValue.reuse();
                                    messageTLdeserialize.id = sQLiteCursorQueryFinalized.intValue(1);
                                    messageTLdeserialize.date = sQLiteCursorQueryFinalized.intValue(2);
                                    messageTLdeserialize.dialog_id = j2;
                                    MessagesStorage.addUsersAndChatsFromMessage(messageTLdeserialize, arrayList8, arrayList9, null);
                                    arrayList5.add(messageTLdeserialize);
                                    TLRPC.Peer peer = messageTLdeserialize.peer_id;
                                    long j3 = peer != null ? peer.channel_id : 0L;
                                    ArrayList arrayList11 = (ArrayList) longSparseArray6.get(j3);
                                    if (arrayList11 != null) {
                                        arrayList11.remove(Integer.valueOf(messageTLdeserialize.id));
                                        if (arrayList11.isEmpty()) {
                                            longSparseArray6.remove(j3);
                                        }
                                    }
                                } else {
                                    arrayList4 = arrayList7;
                                }
                                arrayList7 = arrayList4;
                            }
                            arrayList3 = arrayList7;
                            sQLiteCursorQueryFinalized.dispose();
                        } else {
                            arrayList3 = arrayList7;
                            i5 = i9;
                            i6 = size;
                            i7 = i8;
                        }
                        i9 = i5 + 1;
                        arrayList7 = arrayList3;
                        size = i6;
                        i8 = i7;
                    }
                    arrayList2 = arrayList7;
                    i3 = size;
                    i4 = i8;
                    ArrayList<Integer> arrayList12 = new ArrayList<>();
                    int size2 = arrayList10.size();
                    int i10 = 0;
                    while (i10 < size2) {
                        Object obj = arrayList10.get(i10);
                        i10++;
                        int iIntValue = ((Integer) obj).intValue();
                        if (MessageObject.isEphemeralMessageId(iIntValue)) {
                            arrayList12.add(Integer.valueOf(MessageObject.ephemeralMessageIdUnpack(iIntValue)));
                        }
                    }
                    if (!arrayList12.isEmpty() && (ephemeralMessagesInternal = getMessagesStorage().getEphemeralMessagesInternal(j2, arrayList12)) != null) {
                        int size3 = ephemeralMessagesInternal.size();
                        int i11 = 0;
                        while (i11 < size3) {
                            TLRPC.EphemeralMessage ephemeralMessage = ephemeralMessagesInternal.get(i11);
                            i11++;
                            TLRPC.Message messageConvertEphemeralToFakeDefault = EphemeralMessagesHelper.convertEphemeralToFakeDefault(ephemeralMessage);
                            MessagesStorage.addUsersAndChatsFromMessage(messageConvertEphemeralToFakeDefault, arrayList8, arrayList9, null);
                            arrayList5.add(messageConvertEphemeralToFakeDefault);
                        }
                    }
                }
                i8 = i4 + 1;
                arrayList7 = arrayList2;
                taskStart = task2;
                longSparseArray5 = longSparseArray2;
                size = i3;
            }
            ArrayList<TLRPC.Chat> arrayList13 = arrayList7;
            if (!arrayList8.isEmpty()) {
                getMessagesStorage().getUsersInternal(arrayList8, arrayList6);
            }
            if (arrayList9.isEmpty()) {
                arrayList = arrayList13;
            } else {
                arrayList = arrayList13;
                getMessagesStorage().getChatsInternal(TextUtils.join(",", arrayList9), arrayList);
            }
            broadcastReplyMessages(arrayList5, longSparseArray2, arrayList6, arrayList, j2, true);
            if (!longSparseArray6.isEmpty()) {
                Timer.done(task2);
                int size4 = longSparseArray6.size();
                int i12 = 0;
                while (i12 < size4) {
                    final long jKeyAt2 = longSparseArray6.keyAt(i12);
                    if (z) {
                        final Timer.Task taskStart2 = Timer.start(timer, "loadReplyMessagesForMessages: load scheduled");
                        final TLRPC.TL_messages_getScheduledMessages tL_messages_getScheduledMessages = new TLRPC.TL_messages_getScheduledMessages();
                        tL_messages_getScheduledMessages.peer = getMessagesController().getInputPeer(j2);
                        tL_messages_getScheduledMessages.id = (ArrayList) longSparseArray6.valueAt(i12);
                        i2 = size4;
                        longSparseArray4 = longSparseArray3;
                        final long j4 = j2;
                        int iSendRequest = getConnectionsManager().sendRequest(tL_messages_getScheduledMessages, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda172
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                this.f$0.lambda$loadReplyMessagesForMessages$175(taskStart2, tL_messages_getScheduledMessages, jKeyAt2, j4, longSparseArray2, z, timer, atomicInteger, runnable, tLObject, tL_error);
                            }
                        });
                        if (i != 0) {
                            getConnectionsManager().bindRequestToGuid(iSendRequest, i);
                        }
                    } else {
                        i2 = size4;
                        LongSparseArray longSparseArray7 = longSparseArray6;
                        if (jKeyAt2 != 0) {
                            final Timer.Task taskStart3 = Timer.start(timer, "loadReplyMessagesForMessages: load channel messages");
                            TLRPC.TL_channels_getMessages tL_channels_getMessages = new TLRPC.TL_channels_getMessages();
                            tL_channels_getMessages.channel = getMessagesController().getInputChannel(jKeyAt2);
                            tL_channels_getMessages.id = (ArrayList) longSparseArray7.valueAt(i12);
                            int iSendRequest2 = getConnectionsManager().sendRequest(tL_channels_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda173
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadReplyMessagesForMessages$176(taskStart3, j, jKeyAt2, longSparseArray2, z, timer, atomicInteger, runnable, tLObject, tL_error);
                                }
                            });
                            if (i != 0) {
                                getConnectionsManager().bindRequestToGuid(iSendRequest2, i);
                            }
                            longSparseArray4 = longSparseArray3;
                        } else {
                            final Timer.Task taskStart4 = Timer.start(timer, "loadReplyMessagesForMessages: load messages");
                            TLRPC.TL_messages_getMessages tL_messages_getMessages = new TLRPC.TL_messages_getMessages();
                            longSparseArray4 = longSparseArray3;
                            tL_messages_getMessages.id = (ArrayList) longSparseArray4.valueAt(i12);
                            int iSendRequest3 = getConnectionsManager().sendRequest(tL_messages_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda174
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadReplyMessagesForMessages$177(taskStart4, j, longSparseArray2, z, timer, atomicInteger, runnable, tLObject, tL_error);
                                }
                            });
                            if (i != 0) {
                                getConnectionsManager().bindRequestToGuid(iSendRequest3, i);
                            }
                        }
                    }
                    i12++;
                    j2 = j;
                    longSparseArray6 = longSparseArray4;
                    size4 = i2;
                }
                return;
            }
            Timer.done(task2);
            if (atomicInteger.decrementAndGet() != 0 || runnable == null) {
                return;
            }
            AndroidUtilities.runOnUIThread(runnable);
        } catch (Exception e) {
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
            FileLog.m898e(e);
        }
    }

    public static /* synthetic */ void $r8$lambda$1LlOZ4aV8WXdNH1UY01IaIaodaY(AtomicInteger atomicInteger, Runnable runnable) {
        if (atomicInteger.decrementAndGet() != 0 || runnable == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$175(Timer.Task task, TLRPC.TL_messages_getScheduledMessages tL_messages_getScheduledMessages, final long j, final long j2, final LongSparseArray longSparseArray, final boolean z, Timer timer, AtomicInteger atomicInteger, Runnable runnable, TLObject tLObject, final TLRPC.TL_error tL_error) {
        ArrayList<TLRPC.Message> arrayList;
        ArrayList<TLRPC.Message> arrayList2;
        TLObject tLObject2;
        Timer.done(task);
        if (tL_error == null) {
            final TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            int i = 0;
            int i2 = 0;
            while (true) {
                int size = messages_messages.messages.size();
                arrayList = messages_messages.messages;
                if (i2 >= size) {
                    break;
                }
                if (arrayList.get(i2) instanceof TLRPC.TL_messageEmpty) {
                    messages_messages.messages.remove(i2);
                    i2--;
                }
                i2++;
            }
            if (arrayList.size() < tL_messages_getScheduledMessages.id.size()) {
                if (j != 0) {
                    TLRPC.TL_channels_getMessages tL_channels_getMessages = new TLRPC.TL_channels_getMessages();
                    tL_channels_getMessages.channel = getMessagesController().getInputChannel(j);
                    tL_channels_getMessages.id = tL_messages_getScheduledMessages.id;
                    tLObject2 = tL_channels_getMessages;
                } else {
                    TLRPC.TL_messages_getMessages tL_messages_getMessages = new TLRPC.TL_messages_getMessages();
                    tL_messages_getMessages.id = tL_messages_getScheduledMessages.id;
                    tLObject2 = tL_messages_getMessages;
                }
                getConnectionsManager().sendRequest(tLObject2, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda49
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject3, TLRPC.TL_error tL_error2) {
                        this.f$0.lambda$loadReplyMessagesForMessages$174(tL_error, messages_messages, j2, j, longSparseArray, z, tLObject3, tL_error2);
                    }
                });
            } else {
                while (true) {
                    int size2 = messages_messages.messages.size();
                    arrayList2 = messages_messages.messages;
                    if (i >= size2) {
                        break;
                    }
                    TLRPC.Message message = arrayList2.get(i);
                    if (message.dialog_id == 0) {
                        message.dialog_id = j2;
                    }
                    i++;
                }
                MessageObject.fixMessagePeer(arrayList2, j);
                ImageLoader.saveMessagesThumbs(messages_messages.messages);
                broadcastReplyMessages(messages_messages.messages, longSparseArray, messages_messages.users, messages_messages.chats, j2, false);
                getMessagesStorage().putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
                saveReplyMessages(longSparseArray, messages_messages.messages, z);
            }
        } else {
            Timer.log(timer, "getScheduledMessages error: " + tL_error.code + " " + tL_error.text);
        }
        if (atomicInteger.decrementAndGet() != 0 || runnable == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$174(TLRPC.TL_error tL_error, TLRPC.messages_Messages messages_messages, long j, long j2, LongSparseArray longSparseArray, boolean z, TLObject tLObject, TLRPC.TL_error tL_error2) {
        if (tL_error != null) {
            return;
        }
        TLRPC.messages_Messages messages_messages2 = (TLRPC.messages_Messages) tLObject;
        messages_messages.messages.addAll(messages_messages2.messages);
        messages_messages.users.addAll(messages_messages2.users);
        messages_messages.chats.addAll(messages_messages2.chats);
        int i = 0;
        while (true) {
            int size = messages_messages.messages.size();
            ArrayList<TLRPC.Message> arrayList = messages_messages.messages;
            if (i < size) {
                TLRPC.Message message = arrayList.get(i);
                if (message.dialog_id == 0) {
                    message.dialog_id = j;
                }
                i++;
            } else {
                MessageObject.fixMessagePeer(arrayList, j2);
                ImageLoader.saveMessagesThumbs(messages_messages.messages);
                broadcastReplyMessages(messages_messages.messages, longSparseArray, messages_messages.users, messages_messages.chats, j, false);
                getMessagesStorage().putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
                saveReplyMessages(longSparseArray, messages_messages.messages, z);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$176(Timer.Task task, long j, long j2, LongSparseArray longSparseArray, boolean z, Timer timer, AtomicInteger atomicInteger, Runnable runnable, TLObject tLObject, TLRPC.TL_error tL_error) {
        ArrayList<TLRPC.Message> arrayList;
        Timer.done(task);
        if (tL_error == null) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            int i = 0;
            while (true) {
                int size = messages_messages.messages.size();
                arrayList = messages_messages.messages;
                if (i >= size) {
                    break;
                }
                TLRPC.Message message = arrayList.get(i);
                if (message.dialog_id == 0) {
                    message.dialog_id = j;
                }
                i++;
            }
            MessageObject.fixMessagePeer(arrayList, j2);
            ImageLoader.saveMessagesThumbs(messages_messages.messages);
            broadcastReplyMessages(messages_messages.messages, longSparseArray, messages_messages.users, messages_messages.chats, j, false);
            getMessagesStorage().putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
            saveReplyMessages(longSparseArray, messages_messages.messages, z);
        } else {
            Timer.log(timer, "channels.getMessages error: " + tL_error.code + " " + tL_error.text);
        }
        if (atomicInteger.decrementAndGet() != 0 || runnable == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$177(Timer.Task task, long j, LongSparseArray longSparseArray, boolean z, Timer timer, AtomicInteger atomicInteger, Runnable runnable, TLObject tLObject, TLRPC.TL_error tL_error) {
        ArrayList<TLRPC.Message> arrayList;
        Timer.done(task);
        if (tL_error == null) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            int i = 0;
            while (true) {
                int size = messages_messages.messages.size();
                arrayList = messages_messages.messages;
                if (i >= size) {
                    break;
                }
                TLRPC.Message message = arrayList.get(i);
                if (message.dialog_id == 0) {
                    message.dialog_id = j;
                }
                i++;
            }
            ImageLoader.saveMessagesThumbs(arrayList);
            broadcastReplyMessages(messages_messages.messages, longSparseArray, messages_messages.users, messages_messages.chats, j, false);
            getMessagesStorage().putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
            saveReplyMessages(longSparseArray, messages_messages.messages, z);
        } else {
            Timer.log(timer, "messages.getMessages error: " + tL_error.code + " " + tL_error.text);
        }
        if (atomicInteger.decrementAndGet() != 0 || runnable == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    private void saveReplyMessages(final LongSparseArray<SparseArray<ArrayList<MessageObject>>> longSparseArray, final ArrayList<TLRPC.Message> arrayList, final boolean z) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda227
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$saveReplyMessages$179(z, arrayList, longSparseArray);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveReplyMessages$179(boolean z, ArrayList arrayList, LongSparseArray longSparseArray) {
        SQLitePreparedStatement sQLitePreparedStatementExecuteFast;
        SQLitePreparedStatement sQLitePreparedStatementExecuteFast2;
        ArrayList arrayList2;
        try {
            getMessagesStorage().getDatabase().beginTransaction();
            if (z) {
                sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("UPDATE scheduled_messages_v2 SET replydata = ?, reply_to_message_id = ? WHERE mid = ? AND uid = ?");
                sQLitePreparedStatementExecuteFast2 = null;
            } else {
                sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("UPDATE messages_v2 SET replydata = ?, reply_to_message_id = ? WHERE mid = ? AND uid = ?");
                sQLitePreparedStatementExecuteFast2 = getMessagesStorage().getDatabase().executeFast("UPDATE messages_topics SET replydata = ?, reply_to_message_id = ? WHERE mid = ? AND uid = ?");
            }
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC.Message message = (TLRPC.Message) arrayList.get(i);
                SparseArray sparseArray = (SparseArray) longSparseArray.get(MessageObject.getDialogId(message));
                if (sparseArray != null && (arrayList2 = (ArrayList) sparseArray.get(message.id)) != null) {
                    MessageObject.normalizeFlags(message);
                    NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(message.getObjectSize());
                    message.serializeToStream(nativeByteBuffer);
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        MessageObject messageObject = (MessageObject) arrayList2.get(i2);
                        int i3 = 0;
                        while (i3 < 2) {
                            SQLitePreparedStatement sQLitePreparedStatement = i3 == 0 ? sQLitePreparedStatementExecuteFast : sQLitePreparedStatementExecuteFast2;
                            if (sQLitePreparedStatement != null) {
                                sQLitePreparedStatement.requery();
                                sQLitePreparedStatement.bindByteBuffer(1, nativeByteBuffer);
                                sQLitePreparedStatement.bindInteger(2, message.id);
                                sQLitePreparedStatement.bindInteger(3, messageObject.getId());
                                sQLitePreparedStatement.bindLong(4, messageObject.getDialogId());
                                sQLitePreparedStatement.step();
                            }
                            i3++;
                        }
                    }
                    nativeByteBuffer.reuse();
                }
            }
            sQLitePreparedStatementExecuteFast.dispose();
            if (sQLitePreparedStatementExecuteFast2 != null) {
                sQLitePreparedStatementExecuteFast2.dispose();
            }
            getMessagesStorage().getDatabase().commitTransaction();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    private void broadcastReplyMessages(ArrayList<TLRPC.Message> arrayList, final LongSparseArray<SparseArray<ArrayList<MessageObject>>> longSparseArray, final ArrayList<TLRPC.User> arrayList2, final ArrayList<TLRPC.Chat> arrayList3, final long j, final boolean z) {
        LongSparseArray longSparseArray2 = new LongSparseArray();
        for (int i = 0; i < arrayList2.size(); i++) {
            TLRPC.User user = arrayList2.get(i);
            longSparseArray2.put(user.id, user);
        }
        LongSparseArray longSparseArray3 = new LongSparseArray();
        for (int i2 = 0; i2 < arrayList3.size(); i2++) {
            TLRPC.Chat chat = arrayList3.get(i2);
            longSparseArray3.put(chat.id, chat);
        }
        final ArrayList arrayList4 = new ArrayList();
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            arrayList4.add(new MessageObject(this.currentAccount, arrayList.get(i3), (LongSparseArray<TLRPC.User>) longSparseArray2, (LongSparseArray<TLRPC.Chat>) longSparseArray3, false, false));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda133
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$broadcastReplyMessages$180(arrayList2, z, arrayList3, arrayList4, longSparseArray, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcastReplyMessages$180(ArrayList arrayList, boolean z, ArrayList arrayList2, ArrayList arrayList3, LongSparseArray longSparseArray, long j) {
        ArrayList arrayList4;
        getMessagesController().putUsers(arrayList, z);
        getMessagesController().putChats(arrayList2, z);
        int size = arrayList3.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            MessageObject messageObject = (MessageObject) arrayList3.get(i);
            SparseArray sparseArray = (SparseArray) longSparseArray.get(messageObject.getDialogId());
            if (sparseArray != null && (arrayList4 = (ArrayList) sparseArray.get(messageObject.getId())) != null) {
                for (int i2 = 0; i2 < arrayList4.size(); i2++) {
                    MessageObject messageObject2 = (MessageObject) arrayList4.get(i2);
                    messageObject2.replyMessageObject = messageObject;
                    messageObject2.applyTimestampsHighlightForReplyMsg();
                    TLRPC.MessageAction messageAction = messageObject2.messageOwner.action;
                    if (messageAction instanceof TLRPC.TL_messageActionPinMessage) {
                        messageObject2.generatePinMessageText(null, null);
                    } else if (messageAction instanceof TLRPC.TL_messageActionGameScore) {
                        messageObject2.generateGameMessageText(null);
                    } else if (messageAction instanceof TLRPC.TL_messageActionPaymentSent) {
                        messageObject2.generatePaymentSentMessageText(null, false);
                    } else if (messageAction instanceof TLRPC.TL_messageActionPaymentSentMe) {
                        messageObject2.generatePaymentSentMessageText(null, true);
                    } else if (messageAction instanceof TLRPC.TL_messageActionSuggestedPostApproval) {
                        messageObject2.generateSuggestionApprovalMessageText();
                    }
                }
                z2 = true;
            }
        }
        if (z2) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.replyMessagesDidLoad, Long.valueOf(j), arrayList3, longSparseArray);
        }
    }

    public static void sortEntities(ArrayList<TLRPC.MessageEntity> arrayList) {
        Collections.sort(arrayList, entityComparator);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean checkInclusion(int i, List<TLRPC.MessageEntity> list, boolean z) {
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                TLRPC.MessageEntity messageEntity = list.get(i2);
                int i3 = messageEntity.offset;
                if (z) {
                    if (i3 >= i) {
                        continue;
                    } else if (messageEntity.offset + messageEntity.length > i) {
                        return true;
                    }
                } else if (i3 > i) {
                    continue;
                }
            }
        }
        return false;
    }

    private static boolean checkIntersection(int i, int i2, List<TLRPC.MessageEntity> list) {
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                TLRPC.MessageEntity messageEntity = list.get(i3);
                int i4 = messageEntity.offset;
                if (i4 > i && i4 + messageEntity.length <= i2) {
                    return true;
                }
            }
        }
        return false;
    }

    public CharSequence substring(CharSequence charSequence, int i, int i2) {
        if (charSequence instanceof SpannableStringBuilder) {
            return charSequence.subSequence(i, i2);
        }
        if (charSequence instanceof SpannedString) {
            return charSequence.subSequence(i, i2);
        }
        return TextUtils.substring(charSequence, i, i2);
    }

    private static CharacterStyle createNewSpan(CharacterStyle characterStyle, TextStyleSpan.TextStyleRun textStyleRun, TextStyleSpan.TextStyleRun textStyleRun2, boolean z) {
        TextStyleSpan.TextStyleRun textStyleRun3 = new TextStyleSpan.TextStyleRun(textStyleRun);
        if (textStyleRun2 != null) {
            if (z) {
                textStyleRun3.merge(textStyleRun2);
            } else {
                textStyleRun3.replace(textStyleRun2);
            }
        }
        if (characterStyle instanceof TextStyleSpan) {
            return new TextStyleSpan(textStyleRun3);
        }
        if (characterStyle instanceof URLSpanReplacement) {
            return new URLSpanReplacement(((URLSpanReplacement) characterStyle).getURL(), textStyleRun3);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void addStyleToText(TextStyleSpan textStyleSpan, int i, int i2, Spannable spannable, boolean z) {
        TextStyleSpan.TextStyleRun textStyleRun;
        int i3;
        try {
            CharacterStyle[] characterStyleArr = (CharacterStyle[]) spannable.getSpans(i, i2, CharacterStyle.class);
            if (characterStyleArr != null && characterStyleArr.length > 0) {
                for (CharacterStyle characterStyle : characterStyleArr) {
                    TextStyleSpan.TextStyleRun textStyleRun2 = textStyleSpan != null ? textStyleSpan.getTextStyleRun() : new TextStyleSpan.TextStyleRun();
                    if (characterStyle instanceof TextStyleSpan) {
                        textStyleRun = ((TextStyleSpan) characterStyle).getTextStyleRun();
                    } else if (characterStyle instanceof URLSpanReplacement) {
                        textStyleRun = ((URLSpanReplacement) characterStyle).getTextStyleRun();
                        if (textStyleRun == null) {
                            textStyleRun = new TextStyleSpan.TextStyleRun();
                        }
                    }
                    if (textStyleRun != null) {
                        int spanStart = spannable.getSpanStart(characterStyle);
                        int spanEnd = spannable.getSpanEnd(characterStyle);
                        spannable.removeSpan(characterStyle);
                        if (spanStart > i && i2 > spanEnd) {
                            spannable.setSpan(createNewSpan(characterStyle, textStyleRun, textStyleRun2, z), spanStart, spanEnd, 33);
                            if (textStyleSpan != null) {
                                spannable.setSpan(new TextStyleSpan(new TextStyleSpan.TextStyleRun(textStyleRun2)), spanEnd, i2, 33);
                            }
                            i2 = spanStart;
                        } else if (spanStart > i) {
                            i3 = i;
                            if (spanEnd >= i2) {
                                if (spanEnd != i2) {
                                    spannable.setSpan(createNewSpan(characterStyle, textStyleRun, null, z), i2, spanEnd, 33);
                                }
                                if (i2 > spanStart && spanEnd <= i) {
                                    if (textStyleSpan != null) {
                                        spannable.setSpan(createNewSpan(characterStyle, textStyleRun, textStyleRun2, z), spanStart, Math.min(spanEnd, i2), 33);
                                    }
                                    i2 = spanStart;
                                }
                            }
                            i = i3;
                        } else {
                            if (spanStart != i) {
                                spannable.setSpan(createNewSpan(characterStyle, textStyleRun, null, z), spanStart, i, 33);
                            }
                            if (spanEnd > i) {
                                if (textStyleSpan != null) {
                                    spannable.setSpan(createNewSpan(characterStyle, textStyleRun, textStyleRun2, z), i, Math.min(spanEnd, i2), 33);
                                }
                                i3 = spanEnd;
                            }
                            if (spanEnd >= i2) {
                            }
                            i = i3;
                        }
                    }
                }
            }
            if (textStyleSpan == null || i >= i2 || i >= spannable.length()) {
                return;
            }
            spannable.setSpan(textStyleSpan, i, Math.min(spannable.length(), i2), 33);
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public static void addTextStyleRuns(MessageObject messageObject, Spannable spannable) {
        addTextStyleRuns(messageObject.messageOwner.entities, messageObject.messageText, spannable, -1);
    }

    public static void addTextStyleRuns(TLRPC.DraftMessage draftMessage, Spannable spannable, int i) {
        addTextStyleRuns(draftMessage.entities, draftMessage.message, spannable, i);
    }

    public static void addTextStyleRuns(MessageObject messageObject, Spannable spannable, int i) {
        addTextStyleRuns(messageObject.messageOwner.entities, messageObject.messageText, spannable, i);
    }

    public static void addTextStyleRuns(ArrayList<TLRPC.MessageEntity> arrayList, CharSequence charSequence, Spannable spannable) {
        addTextStyleRuns(arrayList, charSequence, spannable, -1);
    }

    public static void addTextStyleRuns(ArrayList<TLRPC.MessageEntity> arrayList, CharSequence charSequence, Spannable spannable, int i) {
        for (TextStyleSpan textStyleSpan : (TextStyleSpan[]) spannable.getSpans(0, spannable.length(), TextStyleSpan.class)) {
            spannable.removeSpan(textStyleSpan);
        }
        ArrayList<TextStyleSpan.TextStyleRun> textStyleRuns = getTextStyleRuns(arrayList, charSequence, i);
        for (int i2 = 0; i2 < Math.min(1000, textStyleRuns.size()); i2++) {
            TextStyleSpan.TextStyleRun textStyleRun = textStyleRuns.get(i2);
            addStyleToText(new TextStyleSpan(textStyleRun), textStyleRun.start, textStyleRun.end, spannable, true);
        }
    }

    public static void addAnimatedEmojiSpans(ArrayList<TLRPC.MessageEntity> arrayList, CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt) {
        AnimatedEmojiSpan animatedEmojiSpan;
        if (!(charSequence instanceof Spannable) || arrayList == null) {
            return;
        }
        Spannable spannable = (Spannable) charSequence;
        for (AnimatedEmojiSpan animatedEmojiSpan2 : (AnimatedEmojiSpan[]) spannable.getSpans(0, spannable.length(), AnimatedEmojiSpan.class)) {
            if (animatedEmojiSpan2 != null) {
                spannable.removeSpan(animatedEmojiSpan2);
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC.MessageEntity messageEntity = arrayList.get(i);
            if (messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) {
                TLRPC.TL_messageEntityCustomEmoji tL_messageEntityCustomEmoji = (TLRPC.TL_messageEntityCustomEmoji) messageEntity;
                int i2 = messageEntity.offset;
                int i3 = messageEntity.length + i2;
                if (i2 < i3 && i3 <= spannable.length()) {
                    if (tL_messageEntityCustomEmoji.document != null) {
                        animatedEmojiSpan = new AnimatedEmojiSpan(tL_messageEntityCustomEmoji.document, fontMetricsInt);
                    } else {
                        animatedEmojiSpan = new AnimatedEmojiSpan(tL_messageEntityCustomEmoji.document_id, fontMetricsInt);
                    }
                    animatedEmojiSpan.local = tL_messageEntityCustomEmoji.local;
                    spannable.setSpan(animatedEmojiSpan, i2, i3, 33);
                }
            }
        }
    }

    public static ArrayList<TextStyleSpan.TextStyleRun> getTextStyleRuns(ArrayList<TLRPC.MessageEntity> arrayList, CharSequence charSequence, int i) {
        int i2;
        ArrayList<TextStyleSpan.TextStyleRun> arrayList2 = new ArrayList<>();
        ArrayList arrayList3 = new ArrayList(arrayList);
        Collections.sort(arrayList3, new Comparator() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda22
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaDataController.m5553$r8$lambda$2lmxa5WE0GvzWPP1IwBmaTWrI((TLRPC.MessageEntity) obj, (TLRPC.MessageEntity) obj2);
            }
        });
        int size = arrayList3.size();
        for (int i3 = 0; i3 < size; i3++) {
            TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) arrayList3.get(i3);
            if (messageEntity != null && messageEntity.length > 0 && (i2 = messageEntity.offset) >= 0 && i2 < charSequence.length()) {
                if (messageEntity.offset + messageEntity.length > charSequence.length()) {
                    messageEntity.length = charSequence.length() - messageEntity.offset;
                }
                if (!(messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji)) {
                    TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                    int i4 = messageEntity.offset;
                    textStyleRun.start = i4;
                    textStyleRun.end = i4 + messageEntity.length;
                    if (messageEntity instanceof TLRPC.TL_messageEntitySpoiler) {
                        textStyleRun.flags = 256;
                    } else if (messageEntity instanceof TLRPC.TL_messageEntityStrike) {
                        textStyleRun.flags = 8;
                    } else if (messageEntity instanceof TLRPC.TL_messageEntityUnderline) {
                        textStyleRun.flags = 16;
                    } else if (messageEntity instanceof TLRPC.TL_messageEntityBold) {
                        textStyleRun.flags = 1;
                    } else if (messageEntity instanceof TLRPC.TL_messageEntityItalic) {
                        textStyleRun.flags = 2;
                    } else if ((messageEntity instanceof TLRPC.TL_messageEntityCode) || (messageEntity instanceof TLRPC.TL_messageEntityPre)) {
                        textStyleRun.flags = 4;
                    } else if ((messageEntity instanceof TLRPC.TL_messageEntityMentionName) || (messageEntity instanceof TLRPC.TL_inputMessageEntityMentionName)) {
                        textStyleRun.flags = 64;
                        textStyleRun.urlEntity = messageEntity;
                    } else {
                        textStyleRun.flags = 128;
                        textStyleRun.urlEntity = messageEntity;
                    }
                    if (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) {
                        textStyleRun.flags |= 1024;
                    }
                    textStyleRun.flags &= i;
                    int size2 = arrayList2.size();
                    int i5 = 0;
                    while (i5 < size2) {
                        TextStyleSpan.TextStyleRun textStyleRun2 = arrayList2.get(i5);
                        int i6 = textStyleRun.start;
                        int i7 = textStyleRun2.start;
                        if (i6 > i7) {
                            int i8 = textStyleRun2.end;
                            if (i6 < i8) {
                                if (textStyleRun.end < i8) {
                                    TextStyleSpan.TextStyleRun textStyleRun3 = new TextStyleSpan.TextStyleRun(textStyleRun);
                                    textStyleRun3.merge(textStyleRun2);
                                    arrayList2.add(i5 + 1, textStyleRun3);
                                    TextStyleSpan.TextStyleRun textStyleRun4 = new TextStyleSpan.TextStyleRun(textStyleRun2);
                                    textStyleRun4.start = textStyleRun.end;
                                    i5 += 2;
                                    size2 += 2;
                                    arrayList2.add(i5, textStyleRun4);
                                } else {
                                    TextStyleSpan.TextStyleRun textStyleRun5 = new TextStyleSpan.TextStyleRun(textStyleRun);
                                    textStyleRun5.merge(textStyleRun2);
                                    textStyleRun5.end = textStyleRun2.end;
                                    i5++;
                                    size2++;
                                    arrayList2.add(i5, textStyleRun5);
                                }
                                int i9 = textStyleRun.start;
                                textStyleRun.start = textStyleRun2.end;
                                textStyleRun2.end = i9;
                            }
                        } else {
                            int i10 = textStyleRun.end;
                            if (i7 < i10) {
                                int i11 = textStyleRun2.end;
                                if (i10 == i11) {
                                    textStyleRun2.merge(textStyleRun);
                                } else if (i10 < i11) {
                                    TextStyleSpan.TextStyleRun textStyleRun6 = new TextStyleSpan.TextStyleRun(textStyleRun2);
                                    textStyleRun6.merge(textStyleRun);
                                    textStyleRun6.end = textStyleRun.end;
                                    i5++;
                                    size2++;
                                    arrayList2.add(i5, textStyleRun6);
                                    textStyleRun2.start = textStyleRun.end;
                                } else {
                                    TextStyleSpan.TextStyleRun textStyleRun7 = new TextStyleSpan.TextStyleRun(textStyleRun);
                                    textStyleRun7.start = textStyleRun2.end;
                                    i5++;
                                    size2++;
                                    arrayList2.add(i5, textStyleRun7);
                                    textStyleRun2.merge(textStyleRun);
                                }
                                textStyleRun.end = i7;
                            }
                        }
                        i5++;
                    }
                    if (textStyleRun.start < textStyleRun.end) {
                        arrayList2.add(textStyleRun);
                    }
                }
            }
        }
        return arrayList2;
    }

    /* JADX INFO: renamed from: $r8$lambda$2lmxa5WE0GvzW-PP1I-wBmaTWrI, reason: not valid java name */
    public static /* synthetic */ int m5553$r8$lambda$2lmxa5WE0GvzWPP1IwBmaTWrI(TLRPC.MessageEntity messageEntity, TLRPC.MessageEntity messageEntity2) {
        int i = messageEntity.offset;
        int i2 = messageEntity2.offset;
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    public void addStyle(int i, int i2, int i3, ArrayList<TLRPC.MessageEntity> arrayList) {
        if ((i & 256) != 0) {
            arrayList.add(setEntityStartEnd(new TLRPC.TL_messageEntitySpoiler(), i2, i3));
        }
        if ((i & 1) != 0) {
            arrayList.add(setEntityStartEnd(new TLRPC.TL_messageEntityBold(), i2, i3));
        }
        if ((i & 2) != 0) {
            arrayList.add(setEntityStartEnd(new TLRPC.TL_messageEntityItalic(), i2, i3));
        }
        if ((i & 4) != 0) {
            arrayList.add(setEntityStartEnd(new TLRPC.TL_messageEntityCode(), i2, i3));
        }
        if ((i & 8) != 0) {
            arrayList.add(setEntityStartEnd(new TLRPC.TL_messageEntityStrike(), i2, i3));
        }
        if ((i & 16) != 0) {
            arrayList.add(setEntityStartEnd(new TLRPC.TL_messageEntityUnderline(), i2, i3));
        }
    }

    private TLRPC.MessageEntity setEntityStartEnd(TLRPC.MessageEntity messageEntity, int i, int i2) {
        messageEntity.offset = i;
        messageEntity.length = i2 - i;
        return messageEntity;
    }

    public ArrayList<TLRPC.MessageEntity> getEntities(CharSequence[] charSequenceArr, boolean z) {
        return getEntities(charSequenceArr, z, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v15, types: [boolean] */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8, types: [int] */
    /* JADX WARN: Type inference failed for: r22v0, types: [org.telegram.messenger.BaseController, org.telegram.messenger.MediaDataController] */
    /* JADX WARN: Type inference failed for: r3v16, types: [android.text.Spanned] */
    public ArrayList<TLRPC.MessageEntity> getEntities(CharSequence[] charSequenceArr, boolean z, boolean z2) {
        char c2;
        boolean z3;
        char c3;
        char c4;
        String strSubstring;
        char cCharAt;
        char c5;
        int i;
        int i2;
        char c6;
        ArrayList<TLRPC.MessageEntity> arrayList = null;
        if (charSequenceArr != null) {
            char c7 = 0;
            if (charSequenceArr[0] != null) {
                boolean disableMarkdown = ExteraConfig.getDisableMarkdown();
                boolean z4 = z2 && !disableMarkdown;
                int i3 = -1;
                char c8 = 0;
                int i4 = 0;
                int i5 = -1;
                while (z4) {
                    int iIndexOf = TextUtils.indexOf(charSequenceArr[c7], c8 == 0 ? "`" : "```", i4);
                    if (iIndexOf == i3) {
                        break;
                    }
                    if (i5 == i3) {
                        c8 = (charSequenceArr[c7].length() - iIndexOf > 2 && charSequenceArr[c7].charAt(iIndexOf + 1) == '`' && charSequenceArr[c7].charAt(iIndexOf + 2) == '`') ? (char) 1 : c7;
                        i5 = iIndexOf;
                        i4 = iIndexOf + (c8 != 0 ? 3 : 1);
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList<>();
                        }
                        for (int i6 = iIndexOf + (c8 != 0 ? 3 : 1); i6 < charSequenceArr[c7].length() && charSequenceArr[c7].charAt(i6) == '`'; i6++) {
                            iIndexOf++;
                        }
                        int i7 = (c8 != 0 ? 3 : 1) + iIndexOf;
                        if (c8 != 0) {
                            char cCharAt2 = i5 > 0 ? charSequenceArr[c7].charAt(i5 - 1) : c7;
                            char c9 = (cCharAt2 == ' ' || cCharAt2 == '\n') ? (char) 1 : c7;
                            int i8 = i5 + 3;
                            int iIndexOf2 = TextUtils.indexOf(charSequenceArr[c7], '\n', i8);
                            if (iIndexOf2 >= 0 && iIndexOf2 - i8 > 0) {
                                c4 = 1;
                                strSubstring = charSequenceArr[c7].toString().substring(i8, iIndexOf2);
                            } else {
                                c4 = 1;
                                strSubstring = _UrlKt.FRAGMENT_ENCODE_SET;
                            }
                            CharSequence charSequenceSubstring = substring(charSequenceArr[c7], c7, i5 - c9);
                            int length = i8 + strSubstring.length() + (!strSubstring.isEmpty());
                            if (length < 0 || length >= charSequenceArr[c7].length()) {
                                z3 = disableMarkdown;
                                c3 = c7;
                                i4 = i7;
                                c7 = c3;
                                disableMarkdown = z3;
                                i3 = -1;
                            } else if (length > iIndexOf) {
                                c3 = c7;
                                z3 = disableMarkdown;
                                i4 = i7;
                                c7 = c3;
                                disableMarkdown = z3;
                                i3 = -1;
                            } else {
                                CharSequence charSequenceSubstring2 = substring(charSequenceArr[c7], length, iIndexOf);
                                int i9 = iIndexOf + 3;
                                if (i9 < charSequenceArr[c7].length()) {
                                    cCharAt = charSequenceArr[c7].charAt(i9);
                                    c5 = c7;
                                } else {
                                    cCharAt = c7;
                                    c5 = cCharAt;
                                }
                                CharSequence charSequence = charSequenceArr[c5];
                                CharSequence charSequenceSubstring3 = substring(charSequence, i9 + ((cCharAt == ' ' || cCharAt == '\n') ? c4 : c5), charSequence.length());
                                if (charSequenceSubstring.length() != 0) {
                                    i = 2;
                                    CharSequence[] charSequenceArr2 = new CharSequence[2];
                                    charSequenceArr2[c5] = charSequenceSubstring;
                                    charSequenceArr2[c4] = "\n";
                                    charSequenceSubstring = AndroidUtilities.concat(charSequenceArr2);
                                } else {
                                    i = 2;
                                    c9 = c4;
                                }
                                z3 = disableMarkdown;
                                if (charSequenceSubstring3.length() > 0) {
                                    char c10 = c5;
                                    if (charSequenceSubstring3.charAt(c10) != '\n') {
                                        CharSequence[] charSequenceArr3 = new CharSequence[i];
                                        charSequenceArr3[c10] = "\n";
                                        charSequenceArr3[c4] = charSequenceSubstring3;
                                        charSequenceSubstring3 = AndroidUtilities.concat(charSequenceArr3);
                                    }
                                }
                                if (charSequenceSubstring2.length() <= 0 || charSequenceSubstring2.charAt(charSequenceSubstring2.length() - 1) != '\n') {
                                    i2 = 0;
                                    c6 = 0;
                                } else {
                                    i2 = 0;
                                    charSequenceSubstring2 = substring(charSequenceSubstring2, 0, charSequenceSubstring2.length() - 1);
                                    c6 = c4;
                                }
                                if (!TextUtils.isEmpty(charSequenceSubstring2)) {
                                    char c11 = c4;
                                    if (charSequenceSubstring2.length() > c11 && charSequenceSubstring2.charAt(i2) == '\n') {
                                        charSequenceSubstring2 = charSequenceSubstring2.subSequence(c11, charSequenceSubstring2.length());
                                        iIndexOf--;
                                    }
                                    CharSequence[] charSequenceArr4 = new CharSequence[3];
                                    charSequenceArr4[i2] = charSequenceSubstring;
                                    charSequenceArr4[c11] = charSequenceSubstring2;
                                    charSequenceArr4[2] = charSequenceSubstring3;
                                    charSequenceArr[i2] = AndroidUtilities.concat(charSequenceArr4);
                                    TLRPC.TL_messageEntityPre tL_messageEntityPre = new TLRPC.TL_messageEntityPre();
                                    tL_messageEntityPre.offset = (c9 ^ 1) + i5;
                                    tL_messageEntityPre.length = ((((iIndexOf - i5) - 3) - (strSubstring.length() + (!strSubstring.isEmpty()))) + (c9 ^ 1)) - c6;
                                    tL_messageEntityPre.language = CodeHighlighting.normalizeLanguage(strSubstring);
                                    arrayList.add(tL_messageEntityPre);
                                    i7 -= 6;
                                }
                                i4 = i7;
                                disableMarkdown = z3;
                                c7 = 0;
                                i3 = -1;
                                c8 = 0;
                                i5 = -1;
                            }
                        } else {
                            z3 = disableMarkdown;
                            int i10 = i5 + 1;
                            if (i10 != iIndexOf) {
                                c3 = 0;
                                CharSequence charSequence2 = charSequenceArr[0];
                                if (!(charSequence2 instanceof Spanned) || ((CodeHighlighting.Span[]) ((Spanned) charSequence2).getSpans(Utilities.clamp(i5, charSequence2.length(), 0), Utilities.clamp(i10, charSequenceArr[0].length(), 0), CodeHighlighting.Span.class)).length <= 0) {
                                    CharSequence charSequenceSubstring4 = substring(charSequenceArr[0], 0, i5);
                                    CharSequence charSequenceSubstring5 = substring(charSequenceArr[0], i10, iIndexOf);
                                    CharSequence charSequence3 = charSequenceArr[0];
                                    charSequenceArr[0] = AndroidUtilities.concat(charSequenceSubstring4, charSequenceSubstring5, substring(charSequence3, iIndexOf + 1, charSequence3.length()));
                                    TLRPC.TL_messageEntityCode tL_messageEntityCode = new TLRPC.TL_messageEntityCode();
                                    tL_messageEntityCode.offset = i5;
                                    tL_messageEntityCode.length = (iIndexOf - i5) - 1;
                                    arrayList.add(tL_messageEntityCode);
                                    i7 -= 2;
                                } else {
                                    i4 = i7;
                                    c7 = c3;
                                    disableMarkdown = z3;
                                    i3 = -1;
                                }
                            }
                            i4 = i7;
                            disableMarkdown = z3;
                            c7 = 0;
                            i3 = -1;
                            c8 = 0;
                            i5 = -1;
                        }
                    }
                }
                boolean z5 = disableMarkdown;
                if (i5 != i3 && c8 != 0) {
                    CharSequence charSequenceSubstring6 = substring(charSequenceArr[0], 0, i5);
                    CharSequence charSequence4 = charSequenceArr[0];
                    charSequenceArr[0] = AndroidUtilities.concat(charSequenceSubstring6, substring(charSequence4, i5 + 2, charSequence4.length()));
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    TLRPC.TL_messageEntityCode tL_messageEntityCode2 = new TLRPC.TL_messageEntityCode();
                    tL_messageEntityCode2.offset = i5;
                    tL_messageEntityCode2.length = 1;
                    arrayList.add(tL_messageEntityCode2);
                }
                if (!z5) {
                    LocaleUtils.parseMarkdownLinks(charSequenceArr);
                }
                ?? r15 = 0;
                CharSequence charSequence5 = charSequenceArr[0];
                if (charSequence5 instanceof Spanned) {
                    ?? r3 = (Spanned) charSequence5;
                    TextStyleSpan[] textStyleSpanArr = (TextStyleSpan[]) r3.getSpans(0, charSequence5.length(), TextStyleSpan.class);
                    if (textStyleSpanArr == null || textStyleSpanArr.length <= 0) {
                        r15 = 0;
                    } else {
                        int i11 = 0;
                        while (i11 < textStyleSpanArr.length) {
                            TextStyleSpan textStyleSpan = textStyleSpanArr[i11];
                            int spanStart = r3.getSpanStart(textStyleSpan);
                            int spanEnd = r3.getSpanEnd(textStyleSpan);
                            if (!checkInclusion(spanStart, arrayList, r15) && !checkInclusion(spanEnd, arrayList, true) && !checkIntersection(spanStart, spanEnd, arrayList)) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList<>();
                                }
                                addStyle(textStyleSpan.getStyleFlags(), spanStart, spanEnd, arrayList);
                            }
                            i11++;
                            r15 = 0;
                        }
                    }
                    URLSpanUserMention[] uRLSpanUserMentionArr = (URLSpanUserMention[]) r3.getSpans(r15, charSequenceArr[r15].length(), URLSpanUserMention.class);
                    if (uRLSpanUserMentionArr != null && uRLSpanUserMentionArr.length > 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList<>();
                        }
                        for (int i12 = 0; i12 < uRLSpanUserMentionArr.length; i12++) {
                            TLRPC.TL_inputMessageEntityMentionName tL_inputMessageEntityMentionName = new TLRPC.TL_inputMessageEntityMentionName();
                            TLRPC.InputUser inputUser = getMessagesController().getInputUser(Utilities.parseLong(uRLSpanUserMentionArr[i12].getURL()).longValue());
                            tL_inputMessageEntityMentionName.user_id = inputUser;
                            if (inputUser != null) {
                                tL_inputMessageEntityMentionName.offset = r3.getSpanStart(uRLSpanUserMentionArr[i12]);
                                tL_inputMessageEntityMentionName.length = Math.min(r3.getSpanEnd(uRLSpanUserMentionArr[i12]), charSequenceArr[0].length()) - tL_inputMessageEntityMentionName.offset;
                                if (charSequenceArr[0].charAt((r8 + r7) - 1) == ' ') {
                                    tL_inputMessageEntityMentionName.length--;
                                }
                                arrayList.add(tL_inputMessageEntityMentionName);
                            }
                        }
                    }
                    URLSpanReplacement[] uRLSpanReplacementArr = (URLSpanReplacement[]) r3.getSpans(0, charSequenceArr[0].length(), URLSpanReplacement.class);
                    if (uRLSpanReplacementArr != null && uRLSpanReplacementArr.length > 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList<>();
                        }
                        for (int i13 = 0; i13 < uRLSpanReplacementArr.length; i13++) {
                            TLRPC.TL_messageEntityTextUrl tL_messageEntityTextUrl = new TLRPC.TL_messageEntityTextUrl();
                            tL_messageEntityTextUrl.offset = r3.getSpanStart(uRLSpanReplacementArr[i13]);
                            tL_messageEntityTextUrl.length = Math.min(r3.getSpanEnd(uRLSpanReplacementArr[i13]), charSequenceArr[0].length()) - tL_messageEntityTextUrl.offset;
                            tL_messageEntityTextUrl.url = uRLSpanReplacementArr[i13].getURL();
                            arrayList.add(tL_messageEntityTextUrl);
                            TextStyleSpan.TextStyleRun textStyleRun = uRLSpanReplacementArr[i13].getTextStyleRun();
                            if (textStyleRun != null) {
                                int i14 = textStyleRun.flags;
                                int i15 = tL_messageEntityTextUrl.offset;
                                addStyle(i14, i15, tL_messageEntityTextUrl.length + i15, arrayList);
                            }
                        }
                    }
                    AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) r3.getSpans(0, charSequenceArr[0].length(), AnimatedEmojiSpan.class);
                    if (animatedEmojiSpanArr != null && animatedEmojiSpanArr.length > 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList<>();
                        }
                        ArrayList<TLRPC.MessageEntity> arrayList2 = arrayList;
                        for (AnimatedEmojiSpan animatedEmojiSpan : animatedEmojiSpanArr) {
                            if (animatedEmojiSpan != null) {
                                try {
                                    TLRPC.TL_messageEntityCustomEmoji tL_messageEntityCustomEmoji = new TLRPC.TL_messageEntityCustomEmoji();
                                    tL_messageEntityCustomEmoji.offset = r3.getSpanStart(animatedEmojiSpan);
                                    tL_messageEntityCustomEmoji.length = Math.min(r3.getSpanEnd(animatedEmojiSpan), charSequenceArr[0].length()) - tL_messageEntityCustomEmoji.offset;
                                    tL_messageEntityCustomEmoji.document_id = animatedEmojiSpan.getDocumentId();
                                    tL_messageEntityCustomEmoji.document = animatedEmojiSpan.document;
                                    tL_messageEntityCustomEmoji.local = animatedEmojiSpan.local;
                                    arrayList2.add(tL_messageEntityCustomEmoji);
                                } catch (Exception e) {
                                    FileLog.m898e(e);
                                }
                            }
                        }
                        arrayList = arrayList2;
                    }
                    CodeHighlighting.Span[] spanArr = (CodeHighlighting.Span[]) r3.getSpans(0, charSequenceArr[0].length(), CodeHighlighting.Span.class);
                    if (spanArr != null && spanArr.length > 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList<>();
                        }
                        ArrayList<TLRPC.MessageEntity> arrayList3 = arrayList;
                        for (CodeHighlighting.Span span : spanArr) {
                            if (span != null) {
                                try {
                                    TLRPC.TL_messageEntityPre tL_messageEntityPre2 = new TLRPC.TL_messageEntityPre();
                                    tL_messageEntityPre2.offset = r3.getSpanStart(span);
                                    tL_messageEntityPre2.length = Math.min(r3.getSpanEnd(span), charSequenceArr[0].length()) - tL_messageEntityPre2.offset;
                                    tL_messageEntityPre2.language = CodeHighlighting.normalizeLanguage(span.lng);
                                    arrayList3.add(tL_messageEntityPre2);
                                } catch (Exception e2) {
                                    FileLog.m898e(e2);
                                }
                            }
                        }
                        arrayList = arrayList3;
                    }
                    QuoteSpan[] quoteSpanArr = (QuoteSpan[]) r3.getSpans(0, charSequenceArr[0].length(), QuoteSpan.class);
                    if (quoteSpanArr != null && quoteSpanArr.length > 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList<>();
                        }
                        ArrayList<TLRPC.MessageEntity> arrayList4 = arrayList;
                        for (QuoteSpan quoteSpan : quoteSpanArr) {
                            if (quoteSpan != null) {
                                try {
                                    TLRPC.TL_messageEntityBlockquote tL_messageEntityBlockquote = new TLRPC.TL_messageEntityBlockquote();
                                    tL_messageEntityBlockquote.offset = r3.getSpanStart(quoteSpan);
                                    tL_messageEntityBlockquote.length = Math.min(r3.getSpanEnd(quoteSpan), charSequenceArr[0].length()) - tL_messageEntityBlockquote.offset;
                                    tL_messageEntityBlockquote.collapsed = quoteSpan.isCollapsing;
                                    arrayList4.add(tL_messageEntityBlockquote);
                                } catch (Exception e3) {
                                    FileLog.m898e(e3);
                                }
                            }
                        }
                        arrayList = arrayList4;
                    }
                    FormattedDateSpan[] formattedDateSpanArr = (FormattedDateSpan[]) r3.getSpans(0, charSequenceArr[0].length(), FormattedDateSpan.class);
                    if (formattedDateSpanArr != null && formattedDateSpanArr.length > 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList<>();
                        }
                        ArrayList<TLRPC.MessageEntity> arrayList5 = arrayList;
                        for (FormattedDateSpan formattedDateSpan : formattedDateSpanArr) {
                            if (formattedDateSpan != null) {
                                try {
                                    TLRPC.TL_messageEntityFormattedDate tL_messageEntityFormattedDate = new TLRPC.TL_messageEntityFormattedDate();
                                    tL_messageEntityFormattedDate.offset = r3.getSpanStart(formattedDateSpan);
                                    tL_messageEntityFormattedDate.length = Math.min(r3.getSpanEnd(formattedDateSpan), charSequenceArr[0].length()) - tL_messageEntityFormattedDate.offset;
                                    TLRPC.TL_messageEntityFormattedDate tL_messageEntityFormattedDate2 = formattedDateSpan.entity;
                                    tL_messageEntityFormattedDate.relative = tL_messageEntityFormattedDate2.relative;
                                    tL_messageEntityFormattedDate.short_time = tL_messageEntityFormattedDate2.short_time;
                                    tL_messageEntityFormattedDate.long_time = tL_messageEntityFormattedDate2.long_time;
                                    tL_messageEntityFormattedDate.long_date = tL_messageEntityFormattedDate2.long_date;
                                    tL_messageEntityFormattedDate.short_date = tL_messageEntityFormattedDate2.short_date;
                                    tL_messageEntityFormattedDate.day_of_week = tL_messageEntityFormattedDate2.day_of_week;
                                    tL_messageEntityFormattedDate.date = tL_messageEntityFormattedDate2.date;
                                    arrayList5.add(tL_messageEntityFormattedDate);
                                } catch (Exception e4) {
                                    FileLog.m898e(e4);
                                }
                            }
                        }
                        arrayList = arrayList5;
                    }
                    if (r3 instanceof Spannable) {
                        Spannable spannable = (Spannable) r3;
                        AndroidUtilities.addLinksSafe(spannable, 1, false, false);
                        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, charSequenceArr[0].length(), URLSpan.class);
                        if (uRLSpanArr != null && uRLSpanArr.length > 0) {
                            if (arrayList == null) {
                                arrayList = new ArrayList<>();
                            }
                            for (int i16 = 0; i16 < uRLSpanArr.length; i16++) {
                                URLSpan uRLSpan = uRLSpanArr[i16];
                                if (!(uRLSpan instanceof URLSpanReplacement) && !(uRLSpan instanceof URLSpanUserMention) && !(uRLSpan instanceof FormattedDateSpan)) {
                                    TLRPC.TL_messageEntityUrl tL_messageEntityUrl = new TLRPC.TL_messageEntityUrl();
                                    tL_messageEntityUrl.offset = r3.getSpanStart(uRLSpanArr[i16]);
                                    tL_messageEntityUrl.length = Math.min(r3.getSpanEnd(uRLSpanArr[i16]), charSequenceArr[0].length()) - tL_messageEntityUrl.offset;
                                    tL_messageEntityUrl.url = uRLSpanArr[i16].getURL();
                                    arrayList.add(tL_messageEntityUrl);
                                    spannable.removeSpan(uRLSpanArr[i16]);
                                }
                            }
                        }
                    }
                    c2 = 0;
                } else {
                    c2 = 0;
                }
                CharSequence charSequenceSubSequence = charSequenceArr[c2];
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                if (z4) {
                    charSequenceSubSequence = parsePattern(parsePattern(parsePattern(charSequenceSubSequence, BOLD_PATTERN, arrayList, new GenericProvider() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda203
                        @Override // org.telegram.messenger.GenericProvider
                        public final Object provide(Object obj) {
                            return MediaDataController.$r8$lambda$Gl956n6tI7vIBC37dPMZ_TdMv68((Void) obj);
                        }
                    }), ITALIC_PATTERN, arrayList, new GenericProvider() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda204
                        @Override // org.telegram.messenger.GenericProvider
                        public final Object provide(Object obj) {
                            return MediaDataController.m5606$r8$lambda$WLMLglyjJXmCe4sFUK9RdBvUcM((Void) obj);
                        }
                    }), SPOILER_PATTERN, arrayList, new GenericProvider() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda205
                        @Override // org.telegram.messenger.GenericProvider
                        public final Object provide(Object obj) {
                            return MediaDataController.$r8$lambda$sRVhz0VV932VixK71DorRWVm4Ig((Void) obj);
                        }
                    });
                    if (z) {
                        charSequenceSubSequence = parsePattern(charSequenceSubSequence, STRIKE_PATTERN, arrayList, new GenericProvider() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda206
                            @Override // org.telegram.messenger.GenericProvider
                            public final Object provide(Object obj) {
                                return MediaDataController.m5644$r8$lambda$xwEWwoewV1SdaQ5DuLjN9nCNUY((Void) obj);
                            }
                        });
                    }
                }
                while (charSequenceSubSequence.length() > 0 && (charSequenceSubSequence.charAt(0) == '\n' || charSequenceSubSequence.charAt(0) == ' ')) {
                    int i17 = 1;
                    charSequenceSubSequence = charSequenceSubSequence.subSequence(1, charSequenceSubSequence.length());
                    int i18 = 0;
                    while (i18 < arrayList.size()) {
                        TLRPC.MessageEntity messageEntity = arrayList.get(i18);
                        int i19 = messageEntity.offset;
                        if (i19 == 0) {
                            messageEntity.length -= i17;
                        }
                        messageEntity.offset = Math.max(0, i19 - 1);
                        i18++;
                        i17 = 1;
                    }
                }
                while (charSequenceSubSequence.length() > 0 && (charSequenceSubSequence.charAt(charSequenceSubSequence.length() - 1) == '\n' || charSequenceSubSequence.charAt(charSequenceSubSequence.length() - 1) == ' ')) {
                    charSequenceSubSequence = charSequenceSubSequence.subSequence(0, charSequenceSubSequence.length() - 1);
                    for (int i20 = 0; i20 < arrayList.size(); i20++) {
                        TLRPC.MessageEntity messageEntity2 = arrayList.get(i20);
                        if (messageEntity2.offset + messageEntity2.length > charSequenceSubSequence.length()) {
                            messageEntity2.length--;
                        }
                    }
                }
                charSequenceArr[0] = charSequenceSubSequence;
            }
        }
        return arrayList;
    }

    public static /* synthetic */ TLRPC.MessageEntity $r8$lambda$Gl956n6tI7vIBC37dPMZ_TdMv68(Void r0) {
        return new TLRPC.TL_messageEntityBold();
    }

    /* JADX INFO: renamed from: $r8$lambda$WLMLg-lyjJXmCe4sFUK9RdBvUcM, reason: not valid java name */
    public static /* synthetic */ TLRPC.MessageEntity m5606$r8$lambda$WLMLglyjJXmCe4sFUK9RdBvUcM(Void r0) {
        return new TLRPC.TL_messageEntityItalic();
    }

    public static /* synthetic */ TLRPC.MessageEntity $r8$lambda$sRVhz0VV932VixK71DorRWVm4Ig(Void r0) {
        return new TLRPC.TL_messageEntitySpoiler();
    }

    /* JADX INFO: renamed from: $r8$lambda$xwEWwoewV1SdaQ5DuLjN9nC-NUY, reason: not valid java name */
    public static /* synthetic */ TLRPC.MessageEntity m5644$r8$lambda$xwEWwoewV1SdaQ5DuLjN9nCNUY(Void r0) {
        return new TLRPC.TL_messageEntityStrike();
    }

    public static void offsetEntities(ArrayList<TLRPC.MessageEntity> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            TLRPC.MessageEntity messageEntity = arrayList.get(i2);
            i2++;
            messageEntity.offset += i;
        }
    }

    public static boolean entitiesEqual(TLRPC.MessageEntity messageEntity, TLRPC.MessageEntity messageEntity2) {
        if (messageEntity.getClass() != messageEntity2.getClass() || messageEntity.offset != messageEntity2.offset || messageEntity.length != messageEntity2.length || !TextUtils.equals(messageEntity.url, messageEntity2.url) || !TextUtils.equals(messageEntity.language, messageEntity2.language)) {
            return false;
        }
        if ((messageEntity instanceof TLRPC.TL_inputMessageEntityMentionName) && ((TLRPC.TL_inputMessageEntityMentionName) messageEntity).user_id != ((TLRPC.TL_inputMessageEntityMentionName) messageEntity2).user_id) {
            return false;
        }
        if (!(messageEntity instanceof TLRPC.TL_messageEntityMentionName) || ((TLRPC.TL_messageEntityMentionName) messageEntity).user_id == ((TLRPC.TL_messageEntityMentionName) messageEntity2).user_id) {
            return !(messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) || ((TLRPC.TL_messageEntityCustomEmoji) messageEntity).document_id == ((TLRPC.TL_messageEntityCustomEmoji) messageEntity2).document_id;
        }
        return false;
    }

    public static boolean stringsEqual(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null && charSequence2 == null) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || !TextUtils.equals(charSequence, charSequence2)) {
            return false;
        }
        return entitiesEqual(getInstance(UserConfig.selectedAccount).getEntities(new CharSequence[]{new SpannableStringBuilder(charSequence)}, true), getInstance(UserConfig.selectedAccount).getEntities(new CharSequence[]{new SpannableStringBuilder(charSequence2)}, true));
    }

    public static boolean entitiesEqual(ArrayList<TLRPC.MessageEntity> arrayList, ArrayList<TLRPC.MessageEntity> arrayList2) {
        if (arrayList.size() != arrayList2.size()) {
            return false;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            if (!entitiesEqual(arrayList.get(i), arrayList2.get(i))) {
                return false;
            }
        }
        return true;
    }

    private CharSequence parsePattern(CharSequence charSequence, Pattern pattern, ArrayList<TLRPC.MessageEntity> arrayList, GenericProvider<Void, TLRPC.MessageEntity> genericProvider) {
        URLSpan[] uRLSpanArr;
        Matcher matcher = pattern.matcher(charSequence);
        int iEnd = 0;
        while (matcher.find()) {
            boolean z = true;
            String strGroup = matcher.group(1);
            if ((charSequence instanceof Spannable) && (uRLSpanArr = (URLSpan[]) ((Spannable) charSequence).getSpans(matcher.start() - iEnd, matcher.end() - iEnd, URLSpan.class)) != null && uRLSpanArr.length > 0) {
                z = false;
            }
            if (z) {
                int i = 0;
                while (true) {
                    if (i >= arrayList.size()) {
                        break;
                    }
                    TLRPC.MessageEntity messageEntity = arrayList.get(i);
                    if ((messageEntity instanceof TLRPC.TL_messageEntityPre) || (messageEntity instanceof TLRPC.TL_messageEntityCode)) {
                        int iStart = matcher.start() - iEnd;
                        int iEnd2 = matcher.end() - iEnd;
                        int i2 = messageEntity.offset;
                        if (AndroidUtilities.intersect1d(iStart, iEnd2, i2, messageEntity.length + i2)) {
                            z = false;
                            break;
                        }
                    }
                    i++;
                }
            }
            if (z) {
                charSequence = ((Object) charSequence.subSequence(0, matcher.start() - iEnd)) + strGroup + ((Object) charSequence.subSequence(matcher.end() - iEnd, charSequence.length()));
                TLRPC.MessageEntity messageEntityProvide = genericProvider.provide(null);
                messageEntityProvide.offset = matcher.start() - iEnd;
                int length = strGroup.length();
                messageEntityProvide.length = length;
                int i3 = messageEntityProvide.offset;
                removeOffset4After(i3, length + i3, arrayList);
                arrayList.add(messageEntityProvide);
            }
            iEnd += (matcher.end() - matcher.start()) - strGroup.length();
        }
        return charSequence;
    }

    private static void removeOffset4After(int i, int i2, ArrayList<TLRPC.MessageEntity> arrayList) {
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            TLRPC.MessageEntity messageEntity = arrayList.get(i3);
            int i4 = messageEntity.offset;
            if (i4 > i2) {
                messageEntity.offset = i4 - 4;
            } else if (i4 > i) {
                messageEntity.offset = i4 - 2;
            }
        }
    }

    public void loadDraftsIfNeed() {
        if (getUserConfig().draftsLoaded || this.loadingDrafts) {
            return;
        }
        this.loadingDrafts = true;
        getConnectionsManager().sendRequest(new TLRPC.TL_messages_getAllDrafts(), new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda42
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadDraftsIfNeed$188(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDraftsIfNeed$186() {
        this.loadingDrafts = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDraftsIfNeed$188(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda44
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadDraftsIfNeed$186();
                }
            });
        } else {
            getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda45
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadDraftsIfNeed$187();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDraftsIfNeed$187() {
        this.loadingDrafts = false;
        UserConfig userConfig = getUserConfig();
        userConfig.draftsLoaded = true;
        userConfig.saveConfig(false);
    }

    public int getDraftFolderId(long j) {
        return this.draftsFolderIds.get(j, 0).intValue();
    }

    public void setDraftFolderId(long j, int i) {
        this.draftsFolderIds.put(j, Integer.valueOf(i));
    }

    public void clearDraftsFolderIds() {
        this.draftsFolderIds.clear();
    }

    public LongSparseArray<LongSparseArray<TLRPC.DraftMessage>> getDrafts() {
        return this.drafts;
    }

    public TLRPC.DraftMessage getDraft(long j, long j2) {
        LongSparseArray<TLRPC.DraftMessage> longSparseArray = this.drafts.get(j);
        if (longSparseArray == null) {
            return null;
        }
        return longSparseArray.get(j2);
    }

    public Pair<Long, TLRPC.DraftMessage> getOneThreadDraft(long j) {
        LongSparseArray<TLRPC.DraftMessage> longSparseArray = this.drafts.get(j);
        if (longSparseArray == null || longSparseArray.size() <= 0) {
            return null;
        }
        return new Pair<>(Long.valueOf(longSparseArray.keyAt(0)), longSparseArray.valueAt(0));
    }

    public TLRPC.Message getDraftMessage(long j, long j2) {
        LongSparseArray<TLRPC.Message> longSparseArray = this.draftMessages.get(j);
        if (longSparseArray == null) {
            return null;
        }
        return longSparseArray.get(j2);
    }

    public void saveDraft(long j, int i, CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.Message message, boolean z, long j2) {
        saveDraft(j, i, charSequence, arrayList, message, null, null, j2, z, false);
    }

    public void saveDraft(long j, long j2, CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.Message message, ChatActivity.ReplyQuote replyQuote, TLRPC.SuggestedPost suggestedPost, long j3, boolean z, boolean z2) {
        saveDraft(j, j2, charSequence, arrayList, message, replyQuote, suggestedPost, j3, z, z2, null);
    }

    public void saveDraft(long j, long j2, CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.Message message, ChatActivity.ReplyQuote replyQuote, TLRPC.SuggestedPost suggestedPost, long j3, boolean z, boolean z2, TL_iv.RichMessage richMessage) {
        TLRPC.DraftMessage tL_draftMessage;
        TLRPC.InputReplyTo inputReplyTo;
        TLRPC.Message message2 = (getMessagesController().isForum(j) && j2 == 0) ? null : message;
        if (!TextUtils.isEmpty(charSequence) || message2 != null || richMessage != null) {
            tL_draftMessage = new TLRPC.TL_draftMessage();
        } else {
            tL_draftMessage = new TLRPC.TL_draftMessageEmpty();
        }
        tL_draftMessage.rich_message = richMessage;
        tL_draftMessage.date = (int) (System.currentTimeMillis() / 1000);
        tL_draftMessage.message = charSequence == null ? _UrlKt.FRAGMENT_ENCODE_SET : charSequence.toString();
        tL_draftMessage.no_webpage = z;
        if (j3 != 0) {
            tL_draftMessage.flags |= 128;
            tL_draftMessage.effect = j3;
        }
        if (message2 != null) {
            TLRPC.TL_inputReplyToMessage tL_inputReplyToMessage = new TLRPC.TL_inputReplyToMessage();
            tL_draftMessage.reply_to = tL_inputReplyToMessage;
            tL_draftMessage.flags |= 16;
            tL_inputReplyToMessage.reply_to_msg_id = message2.id;
            if (replyQuote != null) {
                tL_inputReplyToMessage.quote_text = replyQuote.getText();
                TLRPC.InputReplyTo inputReplyTo2 = tL_draftMessage.reply_to;
                if (inputReplyTo2.quote_text != null) {
                    inputReplyTo2.flags |= 20;
                    inputReplyTo2.quote_offset = replyQuote.start;
                }
                inputReplyTo2.quote_entities = replyQuote.getFilteredEntities();
                ArrayList<TLRPC.MessageEntity> arrayList2 = tL_draftMessage.reply_to.quote_entities;
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    tL_draftMessage.reply_to.quote_entities = new ArrayList<>(tL_draftMessage.reply_to.quote_entities);
                    tL_draftMessage.reply_to.flags |= 8;
                }
                MessageObject messageObject = replyQuote.message;
                if (messageObject != null && messageObject.messageOwner != null) {
                    TLRPC.Peer peer = getMessagesController().getPeer(j);
                    TLRPC.Peer peer2 = replyQuote.message.messageOwner.peer_id;
                    if (peer != null && !MessageObject.peersEqual(peer, peer2)) {
                        TLRPC.InputReplyTo inputReplyTo3 = tL_draftMessage.reply_to;
                        inputReplyTo3.flags |= 2;
                        inputReplyTo3.reply_to_peer_id = getMessagesController().getInputPeer(peer2);
                    }
                }
            } else if (j != MessageObject.getDialogId(message2)) {
                TLRPC.InputReplyTo inputReplyTo4 = tL_draftMessage.reply_to;
                inputReplyTo4.flags |= 2;
                inputReplyTo4.reply_to_peer_id = getMessagesController().getInputPeer(getMessagesController().getPeer(MessageObject.getDialogId(message2)));
            }
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            ArrayList<TLRPC.MessageEntity> arrayList3 = new ArrayList<>(arrayList);
            tL_draftMessage.entities = arrayList3;
            LocaleUtils.replaceCustomEmojis(this.currentAccount, j, arrayList3);
            tL_draftMessage.flags |= 8;
        }
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
        if (ChatObject.isMonoForum(chat) && ChatObject.canManageMonoForum(this.currentAccount, chat)) {
            tL_draftMessage.flags |= 16;
            TLRPC.InputReplyTo inputReplyTo5 = tL_draftMessage.reply_to;
            if (inputReplyTo5 == null) {
                TLRPC.TL_inputReplyToMonoForum tL_inputReplyToMonoForum = new TLRPC.TL_inputReplyToMonoForum();
                tL_draftMessage.reply_to = tL_inputReplyToMonoForum;
                tL_inputReplyToMonoForum.monoforum_peer_id = getMessagesController().getInputPeer(j2);
            } else {
                inputReplyTo5.monoforum_peer_id = getMessagesController().getInputPeer(j2);
                tL_draftMessage.reply_to.flags |= 32;
            }
        }
        if (suggestedPost != null) {
            tL_draftMessage.suggested_post = suggestedPost;
        }
        LongSparseArray<TLRPC.DraftMessage> longSparseArray = this.drafts.get(j);
        TLRPC.DraftMessage draftMessage = longSparseArray == null ? null : longSparseArray.get(j2);
        if (!z2) {
            if (draftMessage != null) {
                if (draftMessage.message.equals(tL_draftMessage.message) && replyToEquals(draftMessage.reply_to, tL_draftMessage.reply_to) && suggestedPostEquals(draftMessage.suggested_post, tL_draftMessage.suggested_post) && richMessageEquals(draftMessage.rich_message, tL_draftMessage.rich_message) && draftMessage.no_webpage == tL_draftMessage.no_webpage && draftMessage.effect == tL_draftMessage.effect) {
                    return;
                }
            } else if (TextUtils.isEmpty(tL_draftMessage.message) && (((inputReplyTo = tL_draftMessage.reply_to) == null || inputReplyTo.reply_to_msg_id == 0) && tL_draftMessage.effect == 0 && tL_draftMessage.rich_message == null && tL_draftMessage.suggested_post == null)) {
                return;
            }
        }
        saveDraft(j, j2, tL_draftMessage, message2, false);
        if (j2 == 0 || ChatObject.isForum(chat) || ChatObject.isMonoForum(chat)) {
            if (!DialogObject.isEncryptedDialog(j)) {
                TLRPC.TL_messages_saveDraft tL_messages_saveDraft = new TLRPC.TL_messages_saveDraft();
                TLRPC.InputPeer inputPeer = getMessagesController().getInputPeer(j);
                tL_messages_saveDraft.peer = inputPeer;
                if (inputPeer == null) {
                    return;
                }
                tL_messages_saveDraft.message = tL_draftMessage.message;
                tL_messages_saveDraft.no_webpage = tL_draftMessage.no_webpage;
                tL_messages_saveDraft.reply_to = tL_draftMessage.reply_to;
                tL_messages_saveDraft.suggested_post = tL_draftMessage.suggested_post;
                tL_messages_saveDraft.entities = tL_draftMessage.entities;
                TL_iv.RichMessage richMessage2 = tL_draftMessage.rich_message;
                if (richMessage2 != null) {
                    tL_messages_saveDraft.rich_message = toInputRichMessage(richMessage2);
                }
                if ((tL_draftMessage.flags & 128) != 0) {
                    tL_messages_saveDraft.effect = tL_draftMessage.effect;
                    tL_messages_saveDraft.flags |= 128;
                }
                getConnectionsManager().sendRequest(tL_messages_saveDraft, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda103
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        MediaDataController.$r8$lambda$ArYxL1Gjv_aFzf92FojjOcDdbhU(tLObject, tL_error);
                    }
                });
            }
            getMessagesController().sortDialogs(null);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
        }
    }

    private static boolean suggestedPostEquals(TLRPC.SuggestedPost suggestedPost, TLRPC.SuggestedPost suggestedPost2) {
        if (suggestedPost == suggestedPost2) {
            return true;
        }
        return (suggestedPost == null) == (suggestedPost2 == null) && !AmountUtils$Amount.equals(suggestedPost.price, suggestedPost2.price) && suggestedPost.schedule_date == suggestedPost2.schedule_date && suggestedPost.accepted == suggestedPost2.accepted && suggestedPost.rejected == suggestedPost2.rejected;
    }

    private static boolean richMessageEquals(TL_iv.RichMessage richMessage, TL_iv.RichMessage richMessage2) {
        if (richMessage == richMessage2) {
            return true;
        }
        if ((richMessage == null) != (richMessage2 == null)) {
            return false;
        }
        try {
            SerializedData serializedData = new SerializedData(richMessage.getObjectSize());
            SerializedData serializedData2 = new SerializedData(richMessage2.getObjectSize());
            richMessage.serializeToStream(serializedData);
            richMessage2.serializeToStream(serializedData2);
            return Arrays.equals(serializedData.toByteArray(), serializedData2.toByteArray());
        } catch (Exception e) {
            FileLog.m898e(e);
            return false;
        }
    }

    private TL_iv.TL_inputRichMessage toInputRichMessage(TL_iv.RichMessage richMessage) {
        TL_iv.TL_inputRichMessage tL_inputRichMessage = new TL_iv.TL_inputRichMessage();
        tL_inputRichMessage.rtl = richMessage.rtl;
        tL_inputRichMessage.blocks = new ArrayList<>(richMessage.blocks.size());
        for (int i = 0; i < richMessage.blocks.size(); i++) {
            tL_inputRichMessage.blocks.add(SendMessagesHelper.toInputPageBlock(richMessage.blocks.get(i)));
        }
        ArrayList<TLRPC.Photo> arrayList = richMessage.photos;
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i2 = 0; i2 < richMessage.photos.size(); i2++) {
                TLRPC.Photo photo = richMessage.photos.get(i2);
                TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
                tL_inputPhoto.id = photo.id;
                tL_inputPhoto.access_hash = photo.access_hash;
                byte[] bArr = photo.file_reference;
                if (bArr == null) {
                    bArr = new byte[0];
                }
                tL_inputPhoto.file_reference = bArr;
                tL_inputRichMessage.photos.add(tL_inputPhoto);
            }
            tL_inputRichMessage.flags |= 4;
        }
        ArrayList<TLRPC.Document> arrayList2 = richMessage.documents;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            for (int i3 = 0; i3 < richMessage.documents.size(); i3++) {
                TLRPC.Document document = richMessage.documents.get(i3);
                TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
                tL_inputDocument.id = document.id;
                tL_inputDocument.access_hash = document.access_hash;
                byte[] bArr2 = document.file_reference;
                if (bArr2 == null) {
                    bArr2 = new byte[0];
                }
                tL_inputDocument.file_reference = bArr2;
                tL_inputRichMessage.documents.add(tL_inputDocument);
            }
            tL_inputRichMessage.flags |= 8;
        }
        return tL_inputRichMessage;
    }

    private static boolean replyToEquals(TLRPC.InputReplyTo inputReplyTo, TLRPC.InputReplyTo inputReplyTo2) {
        if (inputReplyTo == inputReplyTo2) {
            return true;
        }
        boolean z = inputReplyTo instanceof TLRPC.TL_inputReplyToMessage;
        if (z != (inputReplyTo2 instanceof TLRPC.TL_inputReplyToMessage)) {
            return false;
        }
        if (z) {
            return MessageObject.peersEqual(inputReplyTo.reply_to_peer_id, inputReplyTo2.reply_to_peer_id) && TextUtils.equals(inputReplyTo.quote_text, inputReplyTo2.quote_text) && inputReplyTo.reply_to_msg_id == inputReplyTo2.reply_to_msg_id;
        }
        if (inputReplyTo instanceof TLRPC.TL_inputReplyToStory) {
            return MessageObject.peersEqual(inputReplyTo.peer, inputReplyTo2.peer) && inputReplyTo.story_id == inputReplyTo2.story_id;
        }
        return true;
    }

    private static TLRPC.InputReplyTo toInputReplyTo(int i, TLRPC.MessageReplyHeader messageReplyHeader) {
        if (messageReplyHeader instanceof TLRPC.TL_messageReplyStoryHeader) {
            TLRPC.TL_inputReplyToStory tL_inputReplyToStory = new TLRPC.TL_inputReplyToStory();
            tL_inputReplyToStory.peer = MessagesController.getInstance(i).getInputPeer(messageReplyHeader.peer);
            tL_inputReplyToStory.story_id = messageReplyHeader.story_id;
            return tL_inputReplyToStory;
        }
        if (!(messageReplyHeader instanceof TLRPC.TL_messageReplyHeader)) {
            return null;
        }
        TLRPC.TL_inputReplyToMessage tL_inputReplyToMessage = new TLRPC.TL_inputReplyToMessage();
        tL_inputReplyToMessage.reply_to_msg_id = messageReplyHeader.reply_to_msg_id;
        if ((messageReplyHeader.flags & 1) != 0) {
            TLRPC.InputPeer inputPeer = MessagesController.getInstance(i).getInputPeer(messageReplyHeader.reply_to_peer_id);
            tL_inputReplyToMessage.reply_to_peer_id = inputPeer;
            if (inputPeer != null) {
                tL_inputReplyToMessage.flags |= 2;
            }
        }
        int i2 = messageReplyHeader.flags;
        if ((i2 & 2) != 0) {
            tL_inputReplyToMessage.flags |= 1;
            tL_inputReplyToMessage.top_msg_id = messageReplyHeader.reply_to_top_id;
        }
        if ((i2 & 64) != 0) {
            tL_inputReplyToMessage.flags |= 4;
            tL_inputReplyToMessage.quote_text = messageReplyHeader.quote_text;
        }
        if ((i2 & 128) != 0) {
            tL_inputReplyToMessage.flags |= 8;
            tL_inputReplyToMessage.quote_entities = messageReplyHeader.quote_entities;
        }
        return tL_inputReplyToMessage;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0165  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void saveDraft(final long j, final long j2, TLRPC.DraftMessage draftMessage, TLRPC.Message message, boolean z) {
        long j3;
        TLRPC.Message message2;
        String str;
        TLRPC.InputReplyTo inputReplyTo;
        TLRPC.Chat chat;
        StringBuilder sb;
        if (getMessagesController().isForum(j) && j2 == 0 && TextUtils.isEmpty(draftMessage.message)) {
            TLRPC.InputReplyTo inputReplyTo2 = draftMessage.reply_to;
            if (inputReplyTo2 instanceof TLRPC.TL_inputReplyToMessage) {
                ((TLRPC.TL_inputReplyToMessage) inputReplyTo2).reply_to_msg_id = 0;
            }
        }
        SharedPreferences.Editor editorEdit = this.draftPreferences.edit();
        MessagesController messagesController = getMessagesController();
        if (draftMessage == null || (draftMessage instanceof TLRPC.TL_draftMessageEmpty)) {
            j3 = 0;
            LongSparseArray<TLRPC.DraftMessage> longSparseArray = this.drafts.get(j);
            if (longSparseArray != null) {
                longSparseArray.remove(j2);
                if (longSparseArray.size() == 0) {
                    this.drafts.remove(j);
                }
            }
            LongSparseArray<TLRPC.Message> longSparseArray2 = this.draftMessages.get(j);
            if (longSparseArray2 != null) {
                longSparseArray2.remove(j2);
                if (longSparseArray2.size() == 0) {
                    this.draftMessages.remove(j);
                }
            }
            SharedPreferences sharedPreferences = this.draftPreferences;
            if (j2 == 0) {
                sharedPreferences.edit().remove(_UrlKt.FRAGMENT_ENCODE_SET + j).remove("r_" + j).apply();
            } else {
                sharedPreferences.edit().remove("t_" + j + "_" + j2).remove("rt_" + j + "_" + j2).apply();
            }
            messagesController.removeDraftDialogIfNeed(j);
        } else {
            LongSparseArray<TLRPC.DraftMessage> longSparseArray3 = this.drafts.get(j);
            if (longSparseArray3 == null) {
                longSparseArray3 = new LongSparseArray<>();
                j3 = 0;
                this.drafts.put(j, longSparseArray3);
            } else {
                j3 = 0;
            }
            longSparseArray3.put(j2, draftMessage);
            if (j2 == j3) {
                messagesController.putDraftDialogIfNeed(j, draftMessage);
            }
            try {
                SerializedData serializedData = new SerializedData(draftMessage.getObjectSize());
                draftMessage.serializeToStream(serializedData);
                if (j2 != j3) {
                    sb = new StringBuilder("t_");
                    sb.append(j);
                    sb.append("_");
                    sb.append(j2);
                } else {
                    sb = new StringBuilder(_UrlKt.FRAGMENT_ENCODE_SET);
                    sb.append(j);
                }
                editorEdit.putString(sb.toString(), Utilities.bytesToHex(serializedData.toByteArray()));
                serializedData.cleanup();
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        }
        LongSparseArray<TLRPC.Message> longSparseArray4 = this.draftMessages.get(j);
        TLRPC.User user = null;
        if (message != null || draftMessage == null || draftMessage.reply_to == null) {
            message2 = (draftMessage == null || draftMessage.reply_to != null) ? message : null;
        } else if (longSparseArray4 != null) {
            message2 = longSparseArray4.get(j2);
        }
        if (message2 == null) {
            if (longSparseArray4 != null) {
                longSparseArray4.remove(j2);
                if (longSparseArray4.size() == 0) {
                    this.draftMessages.remove(j);
                }
            }
            if (j2 == j3) {
                editorEdit.remove("r_" + j);
            } else {
                editorEdit.remove("rt_" + j + "_" + j2);
            }
        } else {
            if (longSparseArray4 == null) {
                longSparseArray4 = new LongSparseArray<>();
                this.draftMessages.put(j, longSparseArray4);
            }
            longSparseArray4.put(j2, message2);
            try {
                SerializedData serializedData2 = new SerializedData(message2.getObjectSize());
                message2.serializeToStream(serializedData2);
                if (j2 != j3) {
                    str = "rt_" + j + "_" + j2;
                } else {
                    str = "r_" + j;
                }
                editorEdit.putString(str, Utilities.bytesToHex(serializedData2.toByteArray()));
                serializedData2.cleanup();
            } catch (Exception e2) {
                FileLog.m898e(e2);
            }
        }
        editorEdit.apply();
        if (z) {
            if (j2 == j3 || getMessagesController().isForum(j)) {
                if (draftMessage != null && (inputReplyTo = draftMessage.reply_to) != null && inputReplyTo.reply_to_msg_id != 0 && (message2 == null || ((message2.reply_to instanceof TLRPC.TL_messageReplyHeader) && message2.replyMessage == null))) {
                    long peerDialogId = (inputReplyTo.flags & 2) != 0 ? DialogObject.getPeerDialogId(inputReplyTo.reply_to_peer_id) : j;
                    if (DialogObject.isUserDialog(peerDialogId)) {
                        user = getMessagesController().getUser(Long.valueOf(peerDialogId));
                        chat = null;
                    } else {
                        chat = getMessagesController().getChat(Long.valueOf(-peerDialogId));
                    }
                    if (user != null || chat != null) {
                        long j4 = ChatObject.isChannel(chat) ? chat.id : j3;
                        final int i = draftMessage.reply_to.reply_to_msg_id;
                        final long j5 = peerDialogId;
                        final long j6 = j4;
                        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda8
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$saveDraft$192(i, j5, j6, j, j2);
                            }
                        });
                    }
                }
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.newDraftReceived, Long.valueOf(j));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveDraft$192(int i, long j, long j2, final long j3, final long j4) {
        TLRPC.Message messageTLdeserialize;
        NativeByteBuffer nativeByteBufferByteBufferValue;
        try {
            SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, replydata FROM messages_v2 WHERE mid = %d and uid = %d", Integer.valueOf(i), Long.valueOf(j)), new Object[0]);
            if (sQLiteCursorQueryFinalized.next()) {
                NativeByteBuffer nativeByteBufferByteBufferValue2 = sQLiteCursorQueryFinalized.byteBufferValue(0);
                if (nativeByteBufferByteBufferValue2 != null) {
                    messageTLdeserialize = TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue2, nativeByteBufferByteBufferValue2.readInt32(false), false);
                    messageTLdeserialize.readAttachPath(nativeByteBufferByteBufferValue2, getUserConfig().clientUserId);
                    nativeByteBufferByteBufferValue2.reuse();
                } else {
                    messageTLdeserialize = null;
                }
                if (messageTLdeserialize != null) {
                    ArrayList<Long> arrayList = new ArrayList<>();
                    ArrayList<Long> arrayList2 = new ArrayList<>();
                    LongSparseArray<SparseArray<ArrayList<TLRPC.Message>>> longSparseArray = new LongSparseArray<>();
                    LongSparseArray<ArrayList<Integer>> longSparseArray2 = new LongSparseArray<>();
                    try {
                        TLRPC.MessageReplyHeader messageReplyHeader = messageTLdeserialize.reply_to;
                        if (messageReplyHeader != null && messageReplyHeader.reply_to_msg_id != 0) {
                            if (!sQLiteCursorQueryFinalized.isNull(1) && (nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(1)) != null) {
                                TLRPC.Message messageTLdeserialize2 = TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                                messageTLdeserialize.replyMessage = messageTLdeserialize2;
                                messageTLdeserialize2.readAttachPath(nativeByteBufferByteBufferValue, getUserConfig().clientUserId);
                                nativeByteBufferByteBufferValue.reuse();
                                TLRPC.Message message = messageTLdeserialize.replyMessage;
                                if (message != null) {
                                    MessagesStorage.addUsersAndChatsFromMessage(message, arrayList, arrayList2, null);
                                }
                            }
                            if (messageTLdeserialize.replyMessage == null) {
                                MessagesStorage.addReplyMessages(messageTLdeserialize, longSparseArray, longSparseArray2);
                            }
                        }
                    } catch (Exception e) {
                        getMessagesStorage().checkSQLException(e);
                    }
                    getMessagesStorage().loadReplyMessages(longSparseArray, longSparseArray2, arrayList, arrayList2, 0);
                }
            } else {
                messageTLdeserialize = null;
            }
            sQLiteCursorQueryFinalized.dispose();
            if (messageTLdeserialize != null) {
                saveDraftReplyMessage(j3, j4, messageTLdeserialize);
                return;
            }
            if (j2 != 0) {
                TLRPC.TL_channels_getMessages tL_channels_getMessages = new TLRPC.TL_channels_getMessages();
                tL_channels_getMessages.channel = getMessagesController().getInputChannel(j2);
                tL_channels_getMessages.id.add(Integer.valueOf(i));
                getConnectionsManager().sendRequest(tL_channels_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda225
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$saveDraft$190(j3, j4, tLObject, tL_error);
                    }
                });
                return;
            }
            TLRPC.TL_messages_getMessages tL_messages_getMessages = new TLRPC.TL_messages_getMessages();
            tL_messages_getMessages.id.add(Integer.valueOf(i));
            getConnectionsManager().sendRequest(tL_messages_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda226
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$saveDraft$191(j3, j4, tLObject, tL_error);
                }
            });
        } catch (Exception e2) {
            FileLog.m898e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveDraft$190(long j, long j2, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            if (messages_messages.messages.isEmpty()) {
                return;
            }
            saveDraftReplyMessage(j, j2, messages_messages.messages.get(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveDraft$191(long j, long j2, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            if (messages_messages.messages.isEmpty()) {
                return;
            }
            saveDraftReplyMessage(j, j2, messages_messages.messages.get(0));
        }
    }

    private void saveDraftReplyMessage(final long j, final long j2, final TLRPC.Message message) {
        if (message == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda64
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$saveDraftReplyMessage$193(j, j2, message);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveDraftReplyMessage$193(long j, long j2, TLRPC.Message message) {
        TLRPC.InputReplyTo inputReplyTo;
        String str;
        LongSparseArray<TLRPC.DraftMessage> longSparseArray = this.drafts.get(j);
        TLRPC.DraftMessage draftMessage = longSparseArray != null ? longSparseArray.get(j2) : null;
        if (draftMessage == null || (inputReplyTo = draftMessage.reply_to) == null || inputReplyTo.reply_to_msg_id != message.id) {
            return;
        }
        LongSparseArray<TLRPC.Message> longSparseArray2 = this.draftMessages.get(j);
        if (longSparseArray2 == null) {
            longSparseArray2 = new LongSparseArray<>();
            this.draftMessages.put(j, longSparseArray2);
        }
        longSparseArray2.put(j2, message);
        SerializedData serializedData = new SerializedData(message.getObjectSize());
        message.serializeToStream(serializedData);
        SharedPreferences.Editor editorEdit = this.draftPreferences.edit();
        if (j2 == 0) {
            str = "r_" + j;
        } else {
            str = "rt_" + j + "_" + j2;
        }
        editorEdit.putString(str, Utilities.bytesToHex(serializedData.toByteArray())).apply();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.newDraftReceived, Long.valueOf(j));
        serializedData.cleanup();
    }

    public void clearAllDrafts(boolean z) {
        this.drafts.clear();
        this.draftMessages.clear();
        this.draftsFolderIds.clear();
        this.draftPreferences.edit().clear().apply();
        if (z) {
            getMessagesController().sortDialogs(null);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
        }
    }

    public void cleanDraft(long j, long j2, boolean z) {
        LongSparseArray<TLRPC.DraftMessage> longSparseArray = this.drafts.get(j);
        TLRPC.DraftMessage draftMessage = longSparseArray != null ? longSparseArray.get(j2) : null;
        if (draftMessage == null) {
            return;
        }
        if (!z) {
            LongSparseArray<TLRPC.DraftMessage> longSparseArray2 = this.drafts.get(j);
            if (longSparseArray2 != null) {
                longSparseArray2.remove(j2);
                if (longSparseArray2.size() == 0) {
                    this.drafts.remove(j);
                }
            }
            LongSparseArray<TLRPC.Message> longSparseArray3 = this.draftMessages.get(j);
            if (longSparseArray3 != null) {
                longSparseArray3.remove(j2);
                if (longSparseArray3.size() == 0) {
                    this.draftMessages.remove(j);
                }
            }
            SharedPreferences sharedPreferences = this.draftPreferences;
            if (j2 == 0) {
                sharedPreferences.edit().remove(_UrlKt.FRAGMENT_ENCODE_SET + j).remove("r_" + j).apply();
                getMessagesController().sortDialogs(null);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
                return;
            }
            sharedPreferences.edit().remove("t_" + j + "_" + j2).remove("rt_" + j + "_" + j2).apply();
            return;
        }
        TLRPC.InputReplyTo inputReplyTo = draftMessage.reply_to;
        if (inputReplyTo == null || inputReplyTo.reply_to_msg_id != 0) {
            if (inputReplyTo != null) {
                inputReplyTo.reply_to_msg_id = 0;
            }
            draftMessage.flags &= -2;
            saveDraft(j, j2, draftMessage.message, draftMessage.entities, null, null, null, 0L, draftMessage.no_webpage, true);
        }
    }

    public void beginTransaction() {
        this.inTransaction = true;
    }

    public void endTransaction() {
        this.inTransaction = false;
    }

    public void clearBotKeyboard(final MessagesStorage.TopicKey topicKey, final ArrayList<Integer> arrayList) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda249
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clearBotKeyboard$194(arrayList, topicKey);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearBotKeyboard$194(ArrayList arrayList, MessagesStorage.TopicKey topicKey) {
        if (arrayList == null) {
            if (topicKey != null) {
                this.botKeyboards.remove(topicKey);
                this.botDialogKeyboards.remove(topicKey.dialogId);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botKeyboardDidLoad, null, topicKey);
                return;
            }
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            int iIntValue = ((Integer) arrayList.get(i)).intValue();
            long j = iIntValue;
            MessagesStorage.TopicKey topicKey2 = this.botKeyboardsByMids.get(j);
            if (topicKey2 != null) {
                this.botKeyboards.remove(topicKey2);
                ArrayList<TLRPC.Message> arrayList2 = this.botDialogKeyboards.get(topicKey2.dialogId);
                if (arrayList2 != null) {
                    int i2 = 0;
                    while (i2 < arrayList2.size()) {
                        TLRPC.Message message = arrayList2.get(i2);
                        if (message == null || message.id == iIntValue) {
                            arrayList2.remove(i2);
                            i2--;
                        }
                        i2++;
                    }
                    if (arrayList2.isEmpty()) {
                        this.botDialogKeyboards.remove(topicKey2.dialogId);
                    }
                }
                this.botKeyboardsByMids.remove(j);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botKeyboardDidLoad, null, topicKey2);
            }
        }
    }

    public void clearBotKeyboard(final long j) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda55
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clearBotKeyboard$195(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearBotKeyboard$195(long j) {
        ArrayList<TLRPC.Message> arrayList = this.botDialogKeyboards.get(j);
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC.Message message = arrayList.get(i);
                int i2 = this.currentAccount;
                MessagesStorage.TopicKey topicKeyOf = MessagesStorage.TopicKey.of(j, MessageObject.getTopicId(i2, message, ChatObject.isForum(i2, j)));
                this.botKeyboards.remove(topicKeyOf);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botKeyboardDidLoad, null, topicKeyOf);
            }
        }
        this.botDialogKeyboards.remove(j);
    }

    public void loadBotKeyboard(MessagesStorage.TopicKey topicKey) {
        loadBotKeyboard(topicKey, false);
    }

    public void loadBotKeyboard(final MessagesStorage.TopicKey topicKey, final boolean z) {
        TLRPC.Message message = this.botKeyboards.get(topicKey);
        if (message != null) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botKeyboardDidLoad, message, topicKey);
        } else {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda199
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadBotKeyboard$197(topicKey, z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBotKeyboard$197(final MessagesStorage.TopicKey topicKey, boolean z) {
        SQLiteCursor sQLiteCursorQueryFinalized;
        final TLRPC.Message messageTLdeserialize;
        NativeByteBuffer nativeByteBufferByteBufferValue;
        try {
            if (topicKey.topicId != 0) {
                sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT info FROM bot_keyboard_topics WHERE uid = %d AND tid = %d", Long.valueOf(topicKey.dialogId), Long.valueOf(topicKey.topicId)), new Object[0]);
            } else {
                sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT info FROM bot_keyboard WHERE uid = %d", Long.valueOf(topicKey.dialogId)), new Object[0]);
            }
            if (!sQLiteCursorQueryFinalized.next() || sQLiteCursorQueryFinalized.isNull(0) || (nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0)) == null) {
                messageTLdeserialize = null;
            } else {
                messageTLdeserialize = TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                nativeByteBufferByteBufferValue.reuse();
            }
            sQLiteCursorQueryFinalized.dispose();
            if (messageTLdeserialize == null && !z) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda235
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadBotKeyboard$196(messageTLdeserialize, topicKey);
                }
            });
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBotKeyboard$196(TLRPC.Message message, MessagesStorage.TopicKey topicKey) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botKeyboardDidLoad, message, topicKey);
    }

    private TL_bots.BotInfo loadBotInfoInternal(long j, long j2) {
        TL_bots.BotInfo botInfoTLdeserialize;
        NativeByteBuffer nativeByteBufferByteBufferValue;
        SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT info FROM bot_info_v2 WHERE uid = %d AND dialogId = %d", Long.valueOf(j), Long.valueOf(j2)), new Object[0]);
        if (!sQLiteCursorQueryFinalized.next() || sQLiteCursorQueryFinalized.isNull(0) || (nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0)) == null) {
            botInfoTLdeserialize = null;
        } else {
            botInfoTLdeserialize = TL_bots.BotInfo.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
            nativeByteBufferByteBufferValue.reuse();
        }
        sQLiteCursorQueryFinalized.dispose();
        return botInfoTLdeserialize;
    }

    public TL_bots.BotInfo getBotInfoCached(long j, long j2) {
        return this.botInfos.get(j + "_" + j2);
    }

    public void loadBotInfo(long j, long j2, boolean z, int i) {
        loadBotInfo(j, j2, z, i, null);
    }

    public void loadBotInfo(final long j, final long j2, boolean z, final int i, final Utilities.Callback<TL_bots.BotInfo> callback) {
        if (z) {
            TL_bots.BotInfo botInfo = this.botInfos.get(j + "_" + j2);
            if (botInfo != null) {
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botInfoDidLoad, botInfo, Integer.valueOf(i));
                return;
            }
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda82
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadBotInfo$200(j, j2, callback, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBotInfo$200(long j, long j2, final Utilities.Callback callback, final int i) {
        try {
            final TL_bots.BotInfo botInfoLoadBotInfoInternal = loadBotInfoInternal(j, j2);
            if (botInfoLoadBotInfoInternal != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda58
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$loadBotInfo$198(callback, botInfoLoadBotInfoInternal, i);
                    }
                });
            } else if (callback != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda59
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaDataController.$r8$lambda$yYJVRSmiKE3njhHWwAAfxBD4gxs(callback);
                    }
                });
            }
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBotInfo$198(Utilities.Callback callback, TL_bots.BotInfo botInfo, int i) {
        if (callback != null) {
            callback.run(botInfo);
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botInfoDidLoad, botInfo, Integer.valueOf(i));
    }

    public static /* synthetic */ void $r8$lambda$yYJVRSmiKE3njhHWwAAfxBD4gxs(Utilities.Callback callback) {
        if (callback != null) {
            callback.run(null);
        }
    }

    public void putBotKeyboard(final MessagesStorage.TopicKey topicKey, final TLRPC.Message message) {
        SQLiteCursor sQLiteCursorQueryFinalized;
        SQLitePreparedStatement sQLitePreparedStatementExecuteFast;
        if (topicKey == null) {
            return;
        }
        try {
            if (topicKey.topicId != 0) {
                sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT mid FROM bot_keyboard_topics WHERE uid = %d AND tid = %d", Long.valueOf(topicKey.dialogId), Long.valueOf(topicKey.topicId)), new Object[0]);
            } else {
                sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT mid FROM bot_keyboard WHERE uid = %d", Long.valueOf(topicKey.dialogId)), new Object[0]);
            }
            int iIntValue = sQLiteCursorQueryFinalized.next() ? sQLiteCursorQueryFinalized.intValue(0) : 0;
            sQLiteCursorQueryFinalized.dispose();
            if (iIntValue >= message.id) {
                return;
            }
            if (topicKey.topicId != 0) {
                sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO bot_keyboard_topics VALUES(?, ?, ?, ?)");
            } else {
                sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO bot_keyboard VALUES(?, ?, ?)");
            }
            sQLitePreparedStatementExecuteFast.requery();
            MessageObject.normalizeFlags(message);
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(message.getObjectSize());
            message.serializeToStream(nativeByteBuffer);
            long j = topicKey.topicId;
            long j2 = topicKey.dialogId;
            if (j != 0) {
                sQLitePreparedStatementExecuteFast.bindLong(1, j2);
                sQLitePreparedStatementExecuteFast.bindLong(2, topicKey.topicId);
                sQLitePreparedStatementExecuteFast.bindInteger(3, message.id);
                sQLitePreparedStatementExecuteFast.bindByteBuffer(4, nativeByteBuffer);
            } else {
                sQLitePreparedStatementExecuteFast.bindLong(1, j2);
                sQLitePreparedStatementExecuteFast.bindInteger(2, message.id);
                sQLitePreparedStatementExecuteFast.bindByteBuffer(3, nativeByteBuffer);
            }
            sQLitePreparedStatementExecuteFast.step();
            nativeByteBuffer.reuse();
            sQLitePreparedStatementExecuteFast.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda93
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$putBotKeyboard$201(topicKey, message);
                }
            });
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putBotKeyboard$201(MessagesStorage.TopicKey topicKey, TLRPC.Message message) {
        TLRPC.Message message2 = this.botKeyboards.get(topicKey);
        this.botKeyboards.put(topicKey, message);
        ArrayList<TLRPC.Message> arrayList = this.botDialogKeyboards.get(topicKey.dialogId);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        arrayList.add(message);
        this.botDialogKeyboards.put(topicKey.dialogId, arrayList);
        if (MessageObject.getChannelId(message) == 0) {
            if (message2 != null) {
                this.botKeyboardsByMids.delete(message2.id);
            }
            this.botKeyboardsByMids.put(message.id, topicKey);
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botKeyboardDidLoad, message, topicKey);
    }

    public void putBotInfo(final long j, final TL_bots.BotInfo botInfo) {
        if (botInfo == null) {
            return;
        }
        this.botInfos.put(botInfo.user_id + "_" + j, botInfo);
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda175
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$putBotInfo$202(botInfo, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putBotInfo$202(TL_bots.BotInfo botInfo, long j) {
        try {
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO bot_info_v2 VALUES(?, ?, ?)");
            sQLitePreparedStatementExecuteFast.requery();
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(botInfo.getObjectSize());
            botInfo.serializeToStream(nativeByteBuffer);
            sQLitePreparedStatementExecuteFast.bindLong(1, botInfo.user_id);
            sQLitePreparedStatementExecuteFast.bindLong(2, j);
            sQLitePreparedStatementExecuteFast.bindByteBuffer(3, nativeByteBuffer);
            sQLitePreparedStatementExecuteFast.step();
            nativeByteBuffer.reuse();
            sQLitePreparedStatementExecuteFast.dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public void updateBotInfo(final long j, final TL_update.TL_updateBotCommands tL_updateBotCommands) {
        TL_bots.BotInfo botInfo = this.botInfos.get(tL_updateBotCommands.bot_id + "_" + j);
        if (botInfo != null) {
            botInfo.commands = tL_updateBotCommands.commands;
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botInfoDidLoad, botInfo, 0);
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateBotInfo$203(tL_updateBotCommands, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateBotInfo$203(TL_update.TL_updateBotCommands tL_updateBotCommands, long j) {
        try {
            TL_bots.BotInfo botInfoLoadBotInfoInternal = loadBotInfoInternal(tL_updateBotCommands.bot_id, j);
            if (botInfoLoadBotInfoInternal != null) {
                botInfoLoadBotInfoInternal.commands = tL_updateBotCommands.commands;
            }
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO bot_info_v2 VALUES(?, ?, ?)");
            sQLitePreparedStatementExecuteFast.requery();
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(botInfoLoadBotInfoInternal.getObjectSize());
            botInfoLoadBotInfoInternal.serializeToStream(nativeByteBuffer);
            sQLitePreparedStatementExecuteFast.bindLong(1, botInfoLoadBotInfoInternal.user_id);
            sQLitePreparedStatementExecuteFast.bindLong(2, j);
            sQLitePreparedStatementExecuteFast.bindByteBuffer(3, nativeByteBuffer);
            sQLitePreparedStatementExecuteFast.step();
            nativeByteBuffer.reuse();
            sQLitePreparedStatementExecuteFast.dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public HashMap<String, TLRPC.TL_availableReaction> getReactionsMap() {
        return this.reactionsMap;
    }

    public String getDoubleTapReaction() {
        String str = this.doubleTapReaction;
        if (str != null) {
            return str;
        }
        if (getReactionsList().isEmpty()) {
            return null;
        }
        String string = MessagesController.getEmojiSettings(this.currentAccount).getString("reaction_on_double_tap", null);
        if (string != null && (getReactionsMap().get(string) != null || string.startsWith("animated_"))) {
            this.doubleTapReaction = string;
            return string;
        }
        return getReactionsList().get(0).reaction;
    }

    public void setDoubleTapReaction(String str) {
        MessagesController.getEmojiSettings(this.currentAccount).edit().putString("reaction_on_double_tap", str).apply();
        this.doubleTapReaction = str;
    }

    public List<TLRPC.TL_availableReaction> getEnabledReactionsList() {
        return this.enabledReactionsList;
    }

    public void uploadRingtone(String str) {
        if (this.ringtoneUploaderHashMap.containsKey(str)) {
            return;
        }
        this.ringtoneUploaderHashMap.put(str, new RingtoneUploader(str, this.currentAccount));
        this.ringtoneDataStore.addUploadingTone(str);
    }

    public void onRingtoneUploaded(String str, TLRPC.Document document, boolean z) {
        this.ringtoneUploaderHashMap.remove(str);
        this.ringtoneDataStore.onRingtoneUploaded(str, document, z);
    }

    public void checkRingtones(boolean z) {
        this.ringtoneDataStore.loadUserRingtones(z);
    }

    public boolean saveToRingtones(final TLRPC.Document document) {
        if (document == null) {
            return false;
        }
        if (this.ringtoneDataStore.contains(document.id)) {
            return true;
        }
        if (document.size > MessagesController.getInstance(this.currentAccount).ringtoneSizeMax) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 4, LocaleController.formatString("TooLargeError", C2573R.string.TooLargeError, new Object[0]), LocaleController.formatString("ErrorRingtoneSizeTooBig", C2573R.string.ErrorRingtoneSizeTooBig, Integer.valueOf(MessagesController.getInstance(UserConfig.selectedAccount).ringtoneSizeMax / 1024)));
            return false;
        }
        for (int i = 0; i < document.attributes.size(); i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if ((documentAttribute instanceof TLRPC.TL_documentAttributeAudio) && documentAttribute.duration > MessagesController.getInstance(this.currentAccount).ringtoneDurationMax) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 4, LocaleController.formatString("TooLongError", C2573R.string.TooLongError, new Object[0]), LocaleController.formatString("ErrorRingtoneDurationTooLong", C2573R.string.ErrorRingtoneDurationTooLong, Integer.valueOf(MessagesController.getInstance(UserConfig.selectedAccount).ringtoneDurationMax)));
                return false;
            }
        }
        TL_account.saveRingtone saveringtone = new TL_account.saveRingtone();
        TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
        saveringtone.id = tL_inputDocument;
        tL_inputDocument.id = document.id;
        tL_inputDocument.file_reference = document.file_reference;
        tL_inputDocument.access_hash = document.access_hash;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(saveringtone, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda176
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$saveToRingtones$205(document, tLObject, tL_error);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToRingtones$205(final TLRPC.Document document, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda109
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$saveToRingtones$204(tLObject, document);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToRingtones$204(TLObject tLObject, TLRPC.Document document) {
        if (tLObject != null) {
            boolean z = tLObject instanceof TL_account.TL_savedRingtoneConverted;
            RingtoneDataStore ringtoneDataStore = this.ringtoneDataStore;
            if (z) {
                ringtoneDataStore.addTone(((TL_account.TL_savedRingtoneConverted) tLObject).document);
            } else {
                ringtoneDataStore.addTone(document);
            }
        }
    }

    public void preloadPremiumPreviewStickers() {
        if (this.previewStickersLoading || !this.premiumPreviewStickers.isEmpty()) {
            int i = 0;
            while (i < Math.min(this.premiumPreviewStickers.size(), 3)) {
                ArrayList<TLRPC.Document> arrayList = this.premiumPreviewStickers;
                TLRPC.Document document = arrayList.get(i == 2 ? arrayList.size() - 1 : i);
                if (MessageObject.isPremiumSticker(document)) {
                    ImageReceiver imageReceiver = new ImageReceiver();
                    imageReceiver.setAllowLoadingOnAttachedOnly(false);
                    imageReceiver.setImage(ImageLocation.getForDocument(document), null, null, "webp", null, 1);
                    ImageLoader.getInstance().loadImageForImageReceiver(imageReceiver);
                    ImageReceiver imageReceiver2 = new ImageReceiver();
                    imageReceiver2.setAllowLoadingOnAttachedOnly(false);
                    imageReceiver2.setImage(ImageLocation.getForDocument(MessageObject.getPremiumStickerAnimation(document), document), (String) null, (ImageLocation) null, (String) null, "tgs", (Object) null, 1);
                    ImageLoader.getInstance().loadImageForImageReceiver(imageReceiver2);
                }
                i++;
            }
            return;
        }
        TLRPC.TL_messages_getStickers tL_messages_getStickers = new TLRPC.TL_messages_getStickers();
        tL_messages_getStickers.emoticon = Emoji.fixEmoji("⭐") + Emoji.fixEmoji("⭐");
        tL_messages_getStickers.hash = 0L;
        this.previewStickersLoading = true;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getStickers, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda12
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$preloadPremiumPreviewStickers$207(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preloadPremiumPreviewStickers$207(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda198
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$preloadPremiumPreviewStickers$206(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preloadPremiumPreviewStickers$206(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error != null) {
            return;
        }
        this.previewStickersLoading = false;
        this.premiumPreviewStickers.clear();
        this.premiumPreviewStickers.addAll(((TLRPC.TL_messages_stickers) tLObject).stickers);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.premiumStickersPreviewLoaded, new Object[0]);
    }

    public void checkAllMedia(boolean z) {
        if (z) {
            this.reactionsUpdateDate = 0;
            int[] iArr = this.loadFeaturedDate;
            iArr[0] = 0;
            iArr[1] = 0;
        }
        loadRecents(2, false, true, false);
        loadRecents(3, false, true, false);
        loadRecents(7, false, false, true);
        checkFeaturedStickers();
        checkFeaturedEmoji();
        checkReactions();
        checkMenuBots(true);
        checkPremiumPromo();
        checkPremiumGiftStickers();
        checkTonGiftStickers();
        checkGenericAnimations();
        getMessagesController().getAvailableEffects();
    }

    public void moveStickerSetToTop(long j, boolean z, boolean z2) {
        int i = z ? 5 : z2 ? 1 : 0;
        ArrayList<TLRPC.TL_messages_stickerSet> stickerSets = getStickerSets(i);
        if (stickerSets != null) {
            for (int i2 = 0; i2 < stickerSets.size(); i2++) {
                if (stickerSets.get(i2).set.id == j) {
                    TLRPC.TL_messages_stickerSet tL_messages_stickerSet = stickerSets.get(i2);
                    stickerSets.remove(i2);
                    stickerSets.add(0, tL_messages_stickerSet);
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.FALSE);
                    return;
                }
            }
        }
    }

    public void applyAttachMenuBot(TLRPC.TL_attachMenuBotsBot tL_attachMenuBotsBot) {
        this.attachMenuBots.bots.add(tL_attachMenuBotsBot.bot);
        loadAttachMenuBots(false, true);
    }

    public boolean botInAttachMenu(long j) {
        for (int i = 0; i < this.attachMenuBots.bots.size(); i++) {
            if (this.attachMenuBots.bots.get(i).bot_id == j) {
                return true;
            }
        }
        return false;
    }

    public TLRPC.TL_attachMenuBot findBotInAttachMenu(long j) {
        for (int i = 0; i < this.attachMenuBots.bots.size(); i++) {
            if (this.attachMenuBots.bots.get(i).bot_id == j) {
                return this.attachMenuBots.bots.get(i);
            }
        }
        return null;
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class KeywordResult {
        public String emoji;
        public String keyword;

        public KeywordResult() {
        }

        public KeywordResult(String str, String str2) {
            this.emoji = str;
            this.keyword = str2;
        }
    }

    public void fetchNewEmojiKeywords(String[] strArr) {
        fetchNewEmojiKeywords(strArr, false);
    }

    public void fetchNewEmojiKeywords(String[] strArr, boolean z) {
        if (strArr == null) {
            return;
        }
        for (final String str : strArr) {
            if (TextUtils.isEmpty(str) || this.currentFetchingEmoji.get(str) != null) {
                return;
            }
            if (z && this.fetchedEmoji.contains(str)) {
                return;
            }
            this.currentFetchingEmoji.put(str, Boolean.TRUE);
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fetchNewEmojiKeywords$214(str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchNewEmojiKeywords$214(final String str) {
        final int iIntValue;
        TLObject tLObject;
        final String strStringValue = null;
        long jLongValue = 0;
        try {
            SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT alias, version, date FROM emoji_keywords_info_v2 WHERE lang = ?", str);
            if (sQLiteCursorQueryFinalized.next()) {
                strStringValue = sQLiteCursorQueryFinalized.stringValue(0);
                iIntValue = sQLiteCursorQueryFinalized.intValue(1);
                try {
                    jLongValue = sQLiteCursorQueryFinalized.longValue(2);
                } catch (Exception e) {
                    e = e;
                    FileLog.m898e(e);
                }
            } else {
                iIntValue = -1;
            }
            sQLiteCursorQueryFinalized.dispose();
        } catch (Exception e2) {
            e = e2;
            iIntValue = -1;
        }
        if (!BuildVars.DEBUG_VERSION && Math.abs(System.currentTimeMillis() - jLongValue) < DurationKt.MILLIS_IN_HOUR) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda104
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fetchNewEmojiKeywords$208(str);
                }
            });
            return;
        }
        if (iIntValue == -1) {
            TLRPC.TL_messages_getEmojiKeywords tL_messages_getEmojiKeywords = new TLRPC.TL_messages_getEmojiKeywords();
            tL_messages_getEmojiKeywords.lang_code = str;
            tLObject = tL_messages_getEmojiKeywords;
        } else {
            TLRPC.TL_messages_getEmojiKeywordsDifference tL_messages_getEmojiKeywordsDifference = new TLRPC.TL_messages_getEmojiKeywordsDifference();
            tL_messages_getEmojiKeywordsDifference.lang_code = str;
            tL_messages_getEmojiKeywordsDifference.from_version = iIntValue;
            tLObject = tL_messages_getEmojiKeywordsDifference;
        }
        getConnectionsManager().sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda105
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                this.f$0.lambda$fetchNewEmojiKeywords$213(iIntValue, strStringValue, str, tLObject2, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchNewEmojiKeywords$208(String str) {
        this.currentFetchingEmoji.remove(str);
        this.fetchedEmoji.add(str);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiKeywordsLoaded, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchNewEmojiKeywords$213(int i, String str, final String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            TLRPC.TL_emojiKeywordsDifference tL_emojiKeywordsDifference = (TLRPC.TL_emojiKeywordsDifference) tLObject;
            if (i != -1 && !tL_emojiKeywordsDifference.lang_code.equals(str)) {
                getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda153
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$fetchNewEmojiKeywords$210(str2);
                    }
                });
                return;
            } else {
                putEmojiKeywords(str2, tL_emojiKeywordsDifference);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda154
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$fetchNewEmojiKeywords$211();
                    }
                });
                return;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda155
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fetchNewEmojiKeywords$212(str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchNewEmojiKeywords$210(final String str) {
        try {
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("DELETE FROM emoji_keywords_info_v2 WHERE lang = ?");
            sQLitePreparedStatementExecuteFast.bindString(1, str);
            sQLitePreparedStatementExecuteFast.step();
            sQLitePreparedStatementExecuteFast.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda166
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fetchNewEmojiKeywords$209(str);
                }
            });
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchNewEmojiKeywords$209(String str) {
        this.currentFetchingEmoji.remove(str);
        this.fetchedEmoji.add(str);
        fetchNewEmojiKeywords(new String[]{str});
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiKeywordsLoaded, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchNewEmojiKeywords$211() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiKeywordsLoaded, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchNewEmojiKeywords$212(String str) {
        this.currentFetchingEmoji.remove(str);
        this.fetchedEmoji.add(str);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiKeywordsLoaded, new Object[0]);
    }

    private void putEmojiKeywords(final String str, final TLRPC.TL_emojiKeywordsDifference tL_emojiKeywordsDifference) {
        if (tL_emojiKeywordsDifference == null) {
            return;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda191
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$putEmojiKeywords$216(tL_emojiKeywordsDifference, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putEmojiKeywords$216(TLRPC.TL_emojiKeywordsDifference tL_emojiKeywordsDifference, final String str) {
        try {
            if (!tL_emojiKeywordsDifference.keywords.isEmpty()) {
                SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO emoji_keywords_v2 VALUES(?, ?, ?)");
                SQLitePreparedStatement sQLitePreparedStatementExecuteFast2 = getMessagesStorage().getDatabase().executeFast("DELETE FROM emoji_keywords_v2 WHERE lang = ? AND keyword = ? AND emoji = ?");
                getMessagesStorage().getDatabase().beginTransaction();
                int size = tL_emojiKeywordsDifference.keywords.size();
                for (int i = 0; i < size; i++) {
                    TLRPC.EmojiKeyword emojiKeyword = tL_emojiKeywordsDifference.keywords.get(i);
                    if (emojiKeyword instanceof TLRPC.TL_emojiKeyword) {
                        TLRPC.TL_emojiKeyword tL_emojiKeyword = (TLRPC.TL_emojiKeyword) emojiKeyword;
                        String lowerCase = tL_emojiKeyword.keyword.toLowerCase();
                        int size2 = tL_emojiKeyword.emoticons.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            sQLitePreparedStatementExecuteFast.requery();
                            sQLitePreparedStatementExecuteFast.bindString(1, tL_emojiKeywordsDifference.lang_code);
                            sQLitePreparedStatementExecuteFast.bindString(2, lowerCase);
                            sQLitePreparedStatementExecuteFast.bindString(3, tL_emojiKeyword.emoticons.get(i2));
                            sQLitePreparedStatementExecuteFast.step();
                        }
                    } else if (emojiKeyword instanceof TLRPC.TL_emojiKeywordDeleted) {
                        TLRPC.TL_emojiKeywordDeleted tL_emojiKeywordDeleted = (TLRPC.TL_emojiKeywordDeleted) emojiKeyword;
                        String lowerCase2 = tL_emojiKeywordDeleted.keyword.toLowerCase();
                        int size3 = tL_emojiKeywordDeleted.emoticons.size();
                        for (int i3 = 0; i3 < size3; i3++) {
                            sQLitePreparedStatementExecuteFast2.requery();
                            sQLitePreparedStatementExecuteFast2.bindString(1, tL_emojiKeywordsDifference.lang_code);
                            sQLitePreparedStatementExecuteFast2.bindString(2, lowerCase2);
                            sQLitePreparedStatementExecuteFast2.bindString(3, tL_emojiKeywordDeleted.emoticons.get(i3));
                            sQLitePreparedStatementExecuteFast2.step();
                        }
                    }
                }
                getMessagesStorage().getDatabase().commitTransaction();
                sQLitePreparedStatementExecuteFast.dispose();
                sQLitePreparedStatementExecuteFast2.dispose();
            }
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast3 = getMessagesStorage().getDatabase().executeFast("REPLACE INTO emoji_keywords_info_v2 VALUES(?, ?, ?, ?)");
            sQLitePreparedStatementExecuteFast3.bindString(1, str);
            sQLitePreparedStatementExecuteFast3.bindString(2, tL_emojiKeywordsDifference.lang_code);
            sQLitePreparedStatementExecuteFast3.bindInteger(3, tL_emojiKeywordsDifference.version);
            sQLitePreparedStatementExecuteFast3.bindLong(4, System.currentTimeMillis());
            sQLitePreparedStatementExecuteFast3.step();
            sQLitePreparedStatementExecuteFast3.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda209
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$putEmojiKeywords$215(str);
                }
            });
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putEmojiKeywords$215(String str) {
        this.currentFetchingEmoji.remove(str);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.newEmojiSuggestionsAvailable, str);
    }

    public void getAnimatedEmojiByKeywords(final String str, final Utilities.Callback<ArrayList<Long>> callback) {
        if (str == null) {
            if (callback != null) {
                callback.run(new ArrayList<>());
            }
        } else {
            final ArrayList<TLRPC.TL_messages_stickerSet> stickerSets = getStickerSets(5);
            final ArrayList<TLRPC.StickerSetCovered> featuredEmojiSets = getFeaturedEmojiSets();
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda129
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.$r8$lambda$qDzHmdr9pHZijGylMTEPGykgyj8(str, stickerSets, featuredEmojiSets, callback);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$qDzHmdr9pHZijGylMTEPGykgyj8(String str, ArrayList arrayList, ArrayList arrayList2, Utilities.Callback callback) {
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        String lowerCase = str.toLowerCase();
        for (int i = 0; i < arrayList.size(); i++) {
            if (((TLRPC.TL_messages_stickerSet) arrayList.get(i)).keywords != null) {
                ArrayList<TLRPC.TL_stickerKeyword> arrayList5 = ((TLRPC.TL_messages_stickerSet) arrayList.get(i)).keywords;
                for (int i2 = 0; i2 < arrayList5.size(); i2++) {
                    for (int i3 = 0; i3 < arrayList5.get(i2).keyword.size(); i3++) {
                        String str2 = arrayList5.get(i2).keyword.get(i3);
                        if (lowerCase.equals(str2)) {
                            arrayList3.add(Long.valueOf(arrayList5.get(i2).document_id));
                        } else if (lowerCase.contains(str2) || str2.contains(lowerCase)) {
                            arrayList4.add(Long.valueOf(arrayList5.get(i2).document_id));
                        }
                    }
                }
            }
        }
        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
            if ((arrayList2.get(i4) instanceof TLRPC.TL_stickerSetFullCovered) && ((TLRPC.TL_stickerSetFullCovered) arrayList2.get(i4)).keywords != null) {
                ArrayList<TLRPC.TL_stickerKeyword> arrayList6 = ((TLRPC.TL_stickerSetFullCovered) arrayList2.get(i4)).keywords;
                for (int i5 = 0; i5 < arrayList6.size(); i5++) {
                    for (int i6 = 0; i6 < arrayList6.get(i5).keyword.size(); i6++) {
                        String str3 = arrayList6.get(i5).keyword.get(i6);
                        if (lowerCase.equals(str3)) {
                            arrayList3.add(Long.valueOf(arrayList6.get(i5).document_id));
                        } else if (lowerCase.contains(str3) || str3.contains(lowerCase)) {
                            arrayList4.add(Long.valueOf(arrayList6.get(i5).document_id));
                        }
                    }
                }
            }
        }
        arrayList3.addAll(arrayList4);
        if (callback != null) {
            callback.run(arrayList3);
        }
    }

    public void getEmojiNames(final String[] strArr, final String str, final Utilities.Callback<ArrayList<String>> callback) {
        if (callback == null || str == null) {
            return;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda170
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getEmojiNames$219(strArr, str, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getEmojiNames$219(String[] strArr, String str, final Utilities.Callback callback) {
        SQLiteCursor sQLiteCursorQuery = null;
        try {
            try {
                Object[] objArr = new Object[strArr.length + 1];
                objArr[0] = str;
                String str2 = "1 = 1";
                int i = 0;
                while (i < strArr.length) {
                    if (i == 0) {
                        str2 = "lang = ?";
                    } else {
                        str2 = str2 + " OR lang = ?";
                    }
                    SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT alias FROM emoji_keywords_info_v2 WHERE lang = ?", strArr[i]);
                    if (sQLiteCursorQueryFinalized.next()) {
                        strArr[i] = sQLiteCursorQueryFinalized.stringValue(0);
                    }
                    sQLiteCursorQueryFinalized.dispose();
                    int i2 = i + 1;
                    objArr[i2] = strArr[i];
                    i = i2;
                }
                sQLiteCursorQuery = getMessagesStorage().getDatabase().executeFast("SELECT keyword FROM emoji_keywords_v2 WHERE emoji = ? AND (" + str2 + ")").query(objArr);
                final ArrayList arrayList = new ArrayList();
                while (sQLiteCursorQuery.next()) {
                    arrayList.add(sQLiteCursorQuery.stringValue(0));
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda156
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.run(arrayList);
                    }
                });
                sQLiteCursorQuery.dispose();
            } catch (Exception e) {
                FileLog.m898e(e);
                if (sQLiteCursorQuery != null) {
                    sQLiteCursorQuery.dispose();
                }
            }
        } catch (Throwable th) {
            if (sQLiteCursorQuery != null) {
                sQLiteCursorQuery.dispose();
            }
            throw th;
        }
    }

    public void getEmojiSuggestions(String[] strArr, String str, boolean z, KeywordResultCallback keywordResultCallback, boolean z2) {
        getEmojiSuggestions(strArr, str, z, keywordResultCallback, null, z2, false, false, null);
    }

    public void getEmojiSuggestions(String[] strArr, String str, boolean z, KeywordResultCallback keywordResultCallback, CountDownLatch countDownLatch, boolean z2) {
        getEmojiSuggestions(strArr, str, z, keywordResultCallback, countDownLatch, z2, false, false, null);
    }

    public void getEmojiSuggestions(String[] strArr, String str, boolean z, KeywordResultCallback keywordResultCallback, CountDownLatch countDownLatch, boolean z2, boolean z3, boolean z4, Integer num) {
        getEmojiSuggestions(strArr, str, z, keywordResultCallback, countDownLatch, z2, z3, z4, false, num, false);
    }

    public void getEmojiSuggestions(final String[] strArr, final String str, final boolean z, final KeywordResultCallback keywordResultCallback, final CountDownLatch countDownLatch, final boolean z2, final boolean z3, final boolean z4, final boolean z5, final Integer num, final boolean z6) {
        if (keywordResultCallback == null) {
            return;
        }
        if (TextUtils.isEmpty(str) || strArr == null) {
            keywordResultCallback.run(new ArrayList<>(), null);
            return;
        }
        final ArrayList arrayList = new ArrayList(Emoji.recentEmoji);
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda220
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getEmojiSuggestions$225(strArr, keywordResultCallback, z4, str, z, arrayList, z2, num, z3, z5, z6, countDownLatch);
            }
        });
        if (countDownLatch != null) {
            try {
                countDownLatch.await();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cb A[Catch: Exception -> 0x0053, TryCatch #1 {Exception -> 0x0053, blocks: (B:17:0x004c, B:23:0x005c, B:26:0x0069, B:28:0x006f, B:29:0x007c, B:31:0x0082, B:36:0x00a0, B:34:0x0091, B:35:0x0094, B:38:0x00a5, B:42:0x00af, B:46:0x00c0, B:48:0x00cb, B:50:0x00d8, B:53:0x00e0, B:57:0x012b, B:59:0x0131, B:62:0x0143, B:63:0x0159, B:55:0x00f5, B:56:0x0108), top: B:75:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e0 A[Catch: Exception -> 0x0053, TryCatch #1 {Exception -> 0x0053, blocks: (B:17:0x004c, B:23:0x005c, B:26:0x0069, B:28:0x006f, B:29:0x007c, B:31:0x0082, B:36:0x00a0, B:34:0x0091, B:35:0x0094, B:38:0x00a5, B:42:0x00af, B:46:0x00c0, B:48:0x00cb, B:50:0x00d8, B:53:0x00e0, B:57:0x012b, B:59:0x0131, B:62:0x0143, B:63:0x0159, B:55:0x00f5, B:56:0x0108), top: B:75:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0131 A[Catch: Exception -> 0x0053, TryCatch #1 {Exception -> 0x0053, blocks: (B:17:0x004c, B:23:0x005c, B:26:0x0069, B:28:0x006f, B:29:0x007c, B:31:0x0082, B:36:0x00a0, B:34:0x0091, B:35:0x0094, B:38:0x00a5, B:42:0x00af, B:46:0x00c0, B:48:0x00cb, B:50:0x00d8, B:53:0x00e0, B:57:0x012b, B:59:0x0131, B:62:0x0143, B:63:0x0159, B:55:0x00f5, B:56:0x0108), top: B:75:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00dd A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r17v1, types: [org.telegram.messenger.MediaDataController] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [int] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [org.telegram.messenger.BaseController] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$getEmojiSuggestions$225(final String[] strArr, final KeywordResultCallback keywordResultCallback, boolean z, String str, boolean z2, final ArrayList arrayList, boolean z3, Integer num, boolean z4, boolean z5, boolean z6, final CountDownLatch countDownLatch) {
        String str2;
        int length;
        String string;
        SQLiteCursor sQLiteCursorQueryFinalized;
        final ArrayList<KeywordResult> arrayList2 = new ArrayList<>();
        HashMap map = new HashMap();
        final String strStringValue = null;
        ?? r7 = 0;
        boolean z7 = false;
        while (r7 < strArr.length) {
            try {
                SQLiteCursor sQLiteCursorQueryFinalized2 = getMessagesStorage().getDatabase().queryFinalized("SELECT alias FROM emoji_keywords_info_v2 WHERE lang = ?", strArr[r7]);
                if (sQLiteCursorQueryFinalized2.next()) {
                    strStringValue = sQLiteCursorQueryFinalized2.stringValue(0);
                }
                sQLiteCursorQueryFinalized2.dispose();
                if (strStringValue != null) {
                    z7 = true;
                }
                r7++;
            } catch (Exception e) {
                e = e;
                r7 = this;
            }
        }
        try {
        } catch (Exception e2) {
            e = e2;
            FileLog.m898e(e);
        }
        if (!z7) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda116
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$getEmojiSuggestions$220(strArr, keywordResultCallback, arrayList2);
                }
            });
            return;
        }
        r7 = this;
        if (z) {
            int[] iArr = new int[1];
            str2 = str;
            ArrayList<Emoji.EmojiSpanRange> emojis = Emoji.parseEmojis(str2, iArr);
            if (iArr[0] > 0) {
                for (int i = 0; i < emojis.size(); i++) {
                    String string2 = emojis.get(i).code.toString();
                    int i2 = 0;
                    while (true) {
                        if (i2 < arrayList2.size()) {
                            if (TextUtils.equals(arrayList2.get(i2).emoji, string2)) {
                                break;
                            } else {
                                i2++;
                            }
                        } else {
                            KeywordResult keywordResult = new KeywordResult();
                            keywordResult.emoji = string2;
                            keywordResult.keyword = _UrlKt.FRAGMENT_ENCODE_SET;
                            arrayList2.add(keywordResult);
                            break;
                        }
                    }
                }
            }
        } else {
            str2 = str;
        }
        String lowerCase = str2.toLowerCase();
        for (int i3 = 0; i3 < 2; i3++) {
            if (i3 == 1) {
                String translitString = LocaleController.getInstance().getTranslitString(lowerCase, false, false);
                if (!translitString.equals(lowerCase)) {
                    lowerCase = translitString;
                    StringBuilder sb = new StringBuilder(lowerCase);
                    length = sb.length();
                    while (true) {
                        if (length > 0) {
                            string = null;
                            break;
                        }
                        length--;
                        char cCharAt = (char) (sb.charAt(length) + 1);
                        sb.setCharAt(length, cCharAt);
                        if (cCharAt != 0) {
                            string = sb.toString();
                            break;
                        }
                    }
                    if (!z2) {
                        sQLiteCursorQueryFinalized = r7.getMessagesStorage().getDatabase().queryFinalized("SELECT emoji, keyword FROM emoji_keywords_v2 WHERE keyword = ?", lowerCase);
                    } else if (string != null) {
                        sQLiteCursorQueryFinalized = r7.getMessagesStorage().getDatabase().queryFinalized("SELECT emoji, keyword FROM emoji_keywords_v2 WHERE keyword >= ? AND keyword < ?", lowerCase, string);
                    } else {
                        lowerCase = lowerCase + "%";
                        sQLiteCursorQueryFinalized = r7.getMessagesStorage().getDatabase().queryFinalized("SELECT emoji, keyword FROM emoji_keywords_v2 WHERE keyword LIKE ?", lowerCase);
                    }
                    while (sQLiteCursorQueryFinalized.next()) {
                        String strReplace = sQLiteCursorQueryFinalized.stringValue(0).replace("️", _UrlKt.FRAGMENT_ENCODE_SET);
                        if (map.get(strReplace) == null) {
                            map.put(strReplace, Boolean.TRUE);
                            KeywordResult keywordResult2 = new KeywordResult();
                            keywordResult2.emoji = strReplace;
                            keywordResult2.keyword = sQLiteCursorQueryFinalized.stringValue(1);
                            arrayList2.add(keywordResult2);
                        }
                    }
                    sQLiteCursorQueryFinalized.dispose();
                }
            } else {
                StringBuilder sb2 = new StringBuilder(lowerCase);
                length = sb2.length();
                while (true) {
                    if (length > 0) {
                    }
                }
                if (!z2) {
                }
                while (sQLiteCursorQueryFinalized.next()) {
                }
                sQLiteCursorQueryFinalized.dispose();
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda117
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaDataController.$r8$lambda$wx0d9sZXpPCBuevYebOzXZfilz4(arrayList, (MediaDataController.KeywordResult) obj, (MediaDataController.KeywordResult) obj2);
            }
        });
        if (!z3) {
            r7.fillWithAnimatedEmoji(arrayList2, num, z4, z5, z6, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda118
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.$r8$lambda$RTeUwSiYfiMlA8TB0LjwKsEKnwI(countDownLatch, keywordResultCallback, arrayList2, strStringValue);
                }
            });
            return;
        } else if (countDownLatch != null) {
            keywordResultCallback.run(arrayList2, strStringValue);
            countDownLatch.countDown();
            return;
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda119
                @Override // java.lang.Runnable
                public final void run() {
                    keywordResultCallback.run(arrayList2, strStringValue);
                }
            });
            return;
        }
        FileLog.m898e(e);
        Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda117
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaDataController.$r8$lambda$wx0d9sZXpPCBuevYebOzXZfilz4(arrayList, (MediaDataController.KeywordResult) obj, (MediaDataController.KeywordResult) obj2);
            }
        });
        if (!z3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getEmojiSuggestions$220(String[] strArr, KeywordResultCallback keywordResultCallback, ArrayList arrayList) {
        for (String str : strArr) {
            if (this.currentFetchingEmoji.get(str) != null) {
                return;
            }
        }
        keywordResultCallback.run(arrayList, null);
    }

    public static /* synthetic */ int $r8$lambda$wx0d9sZXpPCBuevYebOzXZfilz4(ArrayList arrayList, KeywordResult keywordResult, KeywordResult keywordResult2) {
        int iIndexOf = arrayList.indexOf(keywordResult.emoji);
        if (iIndexOf < 0) {
            iIndexOf = Integer.MAX_VALUE;
        }
        int iIndexOf2 = arrayList.indexOf(keywordResult2.emoji);
        int i = iIndexOf2 >= 0 ? iIndexOf2 : Integer.MAX_VALUE;
        if (iIndexOf < i) {
            return -1;
        }
        if (iIndexOf > i) {
            return 1;
        }
        int length = keywordResult.keyword.length();
        int length2 = keywordResult2.keyword.length();
        if (length < length2) {
            return -1;
        }
        return length > length2 ? 1 : 0;
    }

    public static /* synthetic */ void $r8$lambda$RTeUwSiYfiMlA8TB0LjwKsEKnwI(CountDownLatch countDownLatch, final KeywordResultCallback keywordResultCallback, final ArrayList arrayList, final String str) {
        if (countDownLatch != null) {
            keywordResultCallback.run(arrayList, str);
            countDownLatch.countDown();
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda111
                @Override // java.lang.Runnable
                public final void run() {
                    keywordResultCallback.run(arrayList, str);
                }
            });
        }
    }

    public void fillWithAnimatedEmoji(final ArrayList<KeywordResult> arrayList, final Integer num, final boolean z, final boolean z2, boolean z3, final Runnable runnable) {
        if (arrayList == null || arrayList.isEmpty()) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        final ArrayList[] arrayListArr = {getStickerSets(5)};
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda178
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fillWithAnimatedEmoji$226(num, arrayList, z2, z, arrayListArr, runnable);
            }
        };
        ArrayList arrayList2 = arrayListArr[0];
        if ((arrayList2 == null || arrayList2.isEmpty()) && !this.triedLoadingEmojipacks) {
            this.triedLoadingEmojipacks = true;
            final boolean[] zArr = new boolean[1];
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda179
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fillWithAnimatedEmoji$228(zArr, arrayListArr, runnable2);
                }
            });
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda180
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.$r8$lambda$exsQ2HnVi3dH0Dh7CLjrrkOjbaY(zArr, runnable2);
                }
            }, 900L);
            return;
        }
        runnable2.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0362 A[PHI: r2
  0x0362: PHI (r2v2 java.util.ArrayList<org.telegram.tgnet.TLRPC$StickerSetCovered>) = 
  (r2v1 java.util.ArrayList<org.telegram.tgnet.TLRPC$StickerSetCovered>)
  (r2v1 java.util.ArrayList<org.telegram.tgnet.TLRPC$StickerSetCovered>)
  (r2v6 java.util.ArrayList<org.telegram.tgnet.TLRPC$StickerSetCovered>)
 binds: [B:161:0x028c, B:162:0x028e, B:262:0x0362] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x039f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:246:0x011d A[EDGE_INSN: B:246:0x011d->B:64:0x011d BREAK  A[LOOP:1: B:39:0x00ac->B:61:0x0111], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0111 A[LOOP:1: B:39:0x00ac->B:61:0x0111, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$fillWithAnimatedEmoji$226(Integer num, ArrayList arrayList, boolean z, boolean z2, ArrayList[] arrayListArr, Runnable runnable) {
        int iIntValue;
        String str;
        boolean z3;
        int i;
        int i2;
        ArrayList<TLRPC.StickerSetCovered> arrayList2;
        int i3;
        TLRPC.StickerSetCovered stickerSetCovered;
        ArrayList<TLRPC.Document> arrayList3;
        TLRPC.TL_documentAttributeCustomEmoji tL_documentAttributeCustomEmoji;
        TLRPC.StickerSet stickerSet;
        String str2;
        int i4;
        TLRPC.TL_messages_stickerSet tL_messages_stickerSet;
        TLRPC.TL_documentAttributeCustomEmoji tL_documentAttributeCustomEmoji2;
        TLRPC.StickerSet stickerSet2;
        String str3;
        int i5;
        int i6;
        String str4;
        TLRPC.Document document;
        TLRPC.TL_messages_stickerSet stickerSetByName;
        MediaDataController mediaDataController = this;
        ArrayList<TLRPC.StickerSetCovered> featuredEmojiSets = mediaDataController.getFeaturedEmojiSets();
        ArrayList arrayList4 = new ArrayList();
        HashSet hashSet = new HashSet();
        ArrayList arrayList5 = new ArrayList();
        boolean z4 = true;
        if (num != null) {
            iIntValue = num.intValue();
        } else if (arrayList.size() > 5) {
            iIntValue = 1;
        } else {
            iIntValue = 2;
            if (arrayList.size() <= 2) {
                iIntValue = 3;
            }
        }
        int iMin = num == null ? Math.min(15, arrayList.size()) : arrayList.size();
        int i7 = 0;
        if (!UserConfig.getInstance(mediaDataController.currentAccount).isPremium() && !z) {
            z4 = false;
        }
        if (z2) {
            str = UserConfig.getInstance(mediaDataController.currentAccount).defaultTopicIcons;
            if (arrayListArr[0] != null) {
                if (str != null) {
                    stickerSetByName = getInstance(mediaDataController.currentAccount).getStickerSetByName(str);
                    if (stickerSetByName == null) {
                        stickerSetByName = getInstance(mediaDataController.currentAccount).getStickerSetByEmojiOrName(str);
                    }
                } else {
                    stickerSetByName = null;
                }
                if (stickerSetByName != null) {
                    arrayListArr[0].add(stickerSetByName);
                }
            }
        } else {
            str = null;
        }
        int i8 = 0;
        while (i8 < iMin) {
            String str5 = ((KeywordResult) arrayList.get(i8)).emoji;
            if (TextUtils.isEmpty(str5)) {
                arrayList2 = featuredEmojiSets;
                z3 = z4;
                i2 = iMin;
                i = i7;
            } else {
                arrayList5.clear();
                if (Emoji.recentEmoji != null) {
                    i = i7;
                    int i9 = i;
                    while (true) {
                        ArrayList<String> arrayList6 = Emoji.recentEmoji;
                        if (i9 >= arrayList6.size()) {
                            z3 = z4;
                            break;
                        }
                        if (arrayList6.get(i9).startsWith("animated_")) {
                            try {
                                z3 = z4;
                                try {
                                    TLRPC.Document documentFindDocument = AnimatedEmojiDrawable.findDocument(mediaDataController.currentAccount, Long.parseLong(arrayList6.get(i9).substring(9)));
                                    String strFindAnimatedEmojiEmoticon = MessageObject.findAnimatedEmojiEmoticon(documentFindDocument, null);
                                    if (documentFindDocument != null && strFindAnimatedEmojiEmoticon != null && strFindAnimatedEmojiEmoticon.contains(str5) && ((z3 || MessageObject.isFreeEmoji(documentFindDocument)) && !hashSet.contains(Long.valueOf(documentFindDocument.id)))) {
                                        hashSet.add(Long.valueOf(documentFindDocument.id));
                                        arrayList5.add(documentFindDocument);
                                    }
                                } catch (Exception unused) {
                                }
                            } catch (Exception unused2) {
                                z3 = z4;
                            }
                            if (arrayList5.size() < iIntValue) {
                                break;
                            }
                            i9++;
                            z4 = z3;
                        } else {
                            z3 = z4;
                            if (arrayList5.size() < iIntValue) {
                            }
                        }
                    }
                } else {
                    z3 = z4;
                    i = i7;
                }
                if (arrayList5.size() < iIntValue && arrayListArr[i] != null) {
                    int i10 = i;
                    while (i10 < arrayListArr[i].size()) {
                        TLRPC.TL_messages_stickerSet tL_messages_stickerSet2 = (TLRPC.TL_messages_stickerSet) arrayListArr[i].get(i10);
                        if (tL_messages_stickerSet2 != null && tL_messages_stickerSet2.packs != null) {
                            int i11 = i;
                            while (i11 < tL_messages_stickerSet2.packs.size()) {
                                TLRPC.TL_stickerPack tL_stickerPack = tL_messages_stickerSet2.packs.get(i11);
                                if (tL_stickerPack == null || (str4 = tL_stickerPack.emoticon) == null || !str4.contains(str5)) {
                                    i5 = i10;
                                } else {
                                    int i12 = i;
                                    i5 = i10;
                                    while (i12 < tL_stickerPack.documents.size()) {
                                        long jLongValue = tL_stickerPack.documents.get(i12).longValue();
                                        int i13 = i;
                                        int i14 = i12;
                                        while (true) {
                                            if (i13 >= tL_messages_stickerSet2.documents.size()) {
                                                i6 = iMin;
                                                document = null;
                                                break;
                                            }
                                            document = tL_messages_stickerSet2.documents.get(i13);
                                            int i15 = i13;
                                            i6 = iMin;
                                            if (document != null && document.id == jLongValue) {
                                                break;
                                            }
                                            i13 = i15 + 1;
                                            iMin = i6;
                                        }
                                        if (document != null && document.attributes != null && !arrayList5.contains(document) && !hashSet.contains(Long.valueOf(document.id))) {
                                            hashSet.add(Long.valueOf(document.id));
                                            arrayList5.add(document);
                                            if (arrayList5.size() >= iIntValue) {
                                                break;
                                            }
                                        }
                                        i12 = i14 + 1;
                                        iMin = i6;
                                    }
                                }
                                i6 = iMin;
                                i11++;
                                i10 = i5;
                                iMin = i6;
                            }
                            i4 = i10;
                            i2 = iMin;
                        } else {
                            i4 = i10;
                            i2 = iMin;
                            if (tL_messages_stickerSet2 != null && tL_messages_stickerSet2.documents != null) {
                                int i16 = i;
                                while (i16 < tL_messages_stickerSet2.documents.size()) {
                                    TLRPC.Document document2 = tL_messages_stickerSet2.documents.get(i16);
                                    if (document2 == null || document2.attributes == null || arrayList5.contains(document2)) {
                                        tL_messages_stickerSet = tL_messages_stickerSet2;
                                    } else {
                                        int i17 = i;
                                        while (true) {
                                            if (i17 >= document2.attributes.size()) {
                                                tL_documentAttributeCustomEmoji2 = null;
                                                break;
                                            }
                                            TLRPC.DocumentAttribute documentAttribute = document2.attributes.get(i17);
                                            if (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji) {
                                                tL_documentAttributeCustomEmoji2 = (TLRPC.TL_documentAttributeCustomEmoji) documentAttribute;
                                                break;
                                            }
                                            i17++;
                                        }
                                        if (tL_documentAttributeCustomEmoji2 != null && !TextUtils.isEmpty(tL_documentAttributeCustomEmoji2.alt) && tL_documentAttributeCustomEmoji2.alt.contains(str5) && (z3 || tL_documentAttributeCustomEmoji2.free || ((stickerSet2 = tL_messages_stickerSet2.set) != null && (str3 = stickerSet2.short_name) != null && str3.equals(str)))) {
                                            tL_messages_stickerSet = tL_messages_stickerSet2;
                                            if (!hashSet.contains(Long.valueOf(document2.id))) {
                                                hashSet.add(Long.valueOf(document2.id));
                                                arrayList5.add(document2);
                                                if (arrayList5.size() >= iIntValue) {
                                                    break;
                                                }
                                            } else {
                                                continue;
                                            }
                                        }
                                    }
                                    i16++;
                                    tL_messages_stickerSet2 = tL_messages_stickerSet;
                                }
                            }
                        }
                        if (arrayList5.size() >= iIntValue) {
                            break;
                        }
                        i10 = i4 + 1;
                        iMin = i2;
                    }
                    i2 = iMin;
                    if (arrayList5.size() >= iIntValue) {
                        arrayList2 = featuredEmojiSets;
                        if (!arrayList5.isEmpty()) {
                        }
                    }
                } else {
                    i2 = iMin;
                    if (arrayList5.size() >= iIntValue && featuredEmojiSets != null) {
                        int i18 = i;
                        while (i18 < featuredEmojiSets.size()) {
                            TLRPC.StickerSetCovered stickerSetCovered2 = featuredEmojiSets.get(i18);
                            if (stickerSetCovered2 != null) {
                                ArrayList<TLRPC.Document> arrayList7 = stickerSetCovered2 instanceof TLRPC.TL_stickerSetFullCovered ? ((TLRPC.TL_stickerSetFullCovered) stickerSetCovered2).documents : stickerSetCovered2.covers;
                                if (arrayList7 != null) {
                                    int i19 = i;
                                    while (true) {
                                        if (i19 >= arrayList7.size()) {
                                            i3 = i18;
                                            arrayList2 = featuredEmojiSets;
                                            break;
                                        }
                                        TLRPC.Document document3 = arrayList7.get(i19);
                                        if (document3 == null || document3.attributes == null || arrayList5.contains(document3)) {
                                            i3 = i18;
                                            arrayList2 = featuredEmojiSets;
                                        } else {
                                            int i20 = i;
                                            i3 = i18;
                                            while (true) {
                                                if (i20 >= document3.attributes.size()) {
                                                    arrayList2 = featuredEmojiSets;
                                                    tL_documentAttributeCustomEmoji = null;
                                                    break;
                                                }
                                                TLRPC.DocumentAttribute documentAttribute2 = document3.attributes.get(i20);
                                                arrayList2 = featuredEmojiSets;
                                                if (documentAttribute2 instanceof TLRPC.TL_documentAttributeCustomEmoji) {
                                                    tL_documentAttributeCustomEmoji = (TLRPC.TL_documentAttributeCustomEmoji) documentAttribute2;
                                                    break;
                                                } else {
                                                    i20++;
                                                    featuredEmojiSets = arrayList2;
                                                }
                                            }
                                            if (tL_documentAttributeCustomEmoji != null && !TextUtils.isEmpty(tL_documentAttributeCustomEmoji.alt) && tL_documentAttributeCustomEmoji.alt.contains(str5) && (z3 || tL_documentAttributeCustomEmoji.free || ((stickerSet = stickerSetCovered2.set) != null && (str2 = stickerSet.short_name) != null && str2.equals(str)))) {
                                                stickerSetCovered = stickerSetCovered2;
                                                arrayList3 = arrayList7;
                                                if (!hashSet.contains(Long.valueOf(document3.id))) {
                                                    hashSet.add(Long.valueOf(document3.id));
                                                    arrayList5.add(document3);
                                                    if (arrayList5.size() >= iIntValue) {
                                                        break;
                                                    }
                                                } else {
                                                    continue;
                                                }
                                            }
                                            i19++;
                                            stickerSetCovered2 = stickerSetCovered;
                                            arrayList7 = arrayList3;
                                            i18 = i3;
                                            featuredEmojiSets = arrayList2;
                                        }
                                        stickerSetCovered = stickerSetCovered2;
                                        arrayList3 = arrayList7;
                                        i19++;
                                        stickerSetCovered2 = stickerSetCovered;
                                        arrayList7 = arrayList3;
                                        i18 = i3;
                                        featuredEmojiSets = arrayList2;
                                    }
                                    if (arrayList5.size() >= iIntValue) {
                                        break;
                                    }
                                } else {
                                    i3 = i18;
                                    arrayList2 = featuredEmojiSets;
                                }
                            }
                            i18 = i3 + 1;
                            featuredEmojiSets = arrayList2;
                        }
                        arrayList2 = featuredEmojiSets;
                        if (!arrayList5.isEmpty()) {
                        }
                    } else {
                        arrayList2 = featuredEmojiSets;
                        if (!arrayList5.isEmpty()) {
                            String str6 = ((KeywordResult) arrayList.get(i8)).keyword;
                            for (int i21 = i; i21 < arrayList5.size(); i21++) {
                                TLRPC.Document document4 = (TLRPC.Document) arrayList5.get(i21);
                                if (document4 != null) {
                                    KeywordResult keywordResult = new KeywordResult();
                                    keywordResult.emoji = "animated_" + document4.id;
                                    keywordResult.keyword = str6;
                                    arrayList4.add(keywordResult);
                                }
                            }
                        }
                    }
                }
            }
            i8++;
            mediaDataController = this;
            i7 = i;
            z4 = z3;
            featuredEmojiSets = arrayList2;
            iMin = i2;
        }
        arrayList.addAll(i7, arrayList4);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillWithAnimatedEmoji$228(final boolean[] zArr, final ArrayList[] arrayListArr, final Runnable runnable) {
        loadStickers(5, true, false, false, new Utilities.Callback() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda79
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                MediaDataController.$r8$lambda$yXsSK4RIhSgXzPCca9JmL32n3WU(zArr, arrayListArr, runnable, (ArrayList) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$yXsSK4RIhSgXzPCca9JmL32n3WU(boolean[] zArr, ArrayList[] arrayListArr, Runnable runnable, ArrayList arrayList) {
        if (zArr[0]) {
            return;
        }
        arrayListArr[0] = arrayList;
        runnable.run();
        zArr[0] = true;
    }

    public static /* synthetic */ void $r8$lambda$exsQ2HnVi3dH0Dh7CLjrrkOjbaY(boolean[] zArr, Runnable runnable) {
        if (zArr[0]) {
            return;
        }
        runnable.run();
        zArr[0] = true;
    }

    public void loadEmojiThemes() {
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("emojithemes_config_" + this.currentAccount, 0);
        int i = sharedPreferences.getInt(NotificationBadge.NewHtcHomeBadger.COUNT, 0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ChatThemeBottomSheet.ChatThemeItem(EmojiThemes.createHomePreviewTheme(this.currentAccount)));
        for (int i2 = 0; i2 < i; i2++) {
            SerializedData serializedData = new SerializedData(Utilities.hexToBytes(sharedPreferences.getString("theme_" + i2, _UrlKt.FRAGMENT_ENCODE_SET)));
            try {
                EmojiThemes emojiThemesCreatePreviewFullTheme = EmojiThemes.createPreviewFullTheme(this.currentAccount, TLRPC.Theme.TLdeserialize(serializedData, serializedData.readInt32(true), true));
                if (emojiThemesCreatePreviewFullTheme.items.size() >= 4) {
                    arrayList.add(new ChatThemeBottomSheet.ChatThemeItem(emojiThemesCreatePreviewFullTheme));
                }
                ChatThemeController.chatThemeQueue.postRunnable(new RunnableC25522(arrayList));
            } catch (Throwable th) {
                FileLog.m898e(th);
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.MediaDataController$2 */
    public class RunnableC25522 implements Runnable {
        final /* synthetic */ ArrayList val$previewItems;

        public RunnableC25522(ArrayList arrayList) {
            this.val$previewItems = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = 0;
            while (true) {
                int size = this.val$previewItems.size();
                final ArrayList arrayList = this.val$previewItems;
                if (i < size) {
                    if (arrayList.get(i) != null && ((ChatThemeBottomSheet.ChatThemeItem) this.val$previewItems.get(i)).chatTheme != null) {
                        ((ChatThemeBottomSheet.ChatThemeItem) this.val$previewItems.get(i)).chatTheme.loadPreviewColors(0);
                    }
                    i++;
                } else {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$2$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$run$0(arrayList);
                        }
                    });
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(ArrayList arrayList) {
            MediaDataController.this.defaultEmojiThemes.clear();
            MediaDataController.this.defaultEmojiThemes.addAll(arrayList);
        }
    }

    public void generateEmojiPreviewThemes(ArrayList<TLRPC.TL_theme> arrayList, int i) {
        SharedPreferences.Editor editorEdit = ApplicationLoader.applicationContext.getSharedPreferences("emojithemes_config_" + i, 0).edit();
        editorEdit.putInt(NotificationBadge.NewHtcHomeBadger.COUNT, arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC.TL_theme tL_theme = arrayList.get(i2);
            SerializedData serializedData = new SerializedData(tL_theme.getObjectSize());
            tL_theme.serializeToStream(serializedData);
            editorEdit.putString("theme_" + i2, Utilities.bytesToHex(serializedData.toByteArray()));
        }
        editorEdit.apply();
        if (!arrayList.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new ChatThemeBottomSheet.ChatThemeItem(EmojiThemes.createHomePreviewTheme(i)));
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                EmojiThemes emojiThemesCreatePreviewFullTheme = EmojiThemes.createPreviewFullTheme(i, arrayList.get(i3));
                ChatThemeBottomSheet.ChatThemeItem chatThemeItem = new ChatThemeBottomSheet.ChatThemeItem(emojiThemesCreatePreviewFullTheme);
                if (emojiThemesCreatePreviewFullTheme.items.size() >= 4) {
                    arrayList2.add(chatThemeItem);
                }
            }
            ChatThemeController.chatThemeQueue.postRunnable(new RunnableC25533(arrayList2, i));
            return;
        }
        this.defaultEmojiThemes.clear();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiPreviewThemesChanged, new Object[0]);
    }

    /* JADX INFO: renamed from: org.telegram.messenger.MediaDataController$3 */
    /* JADX INFO: loaded from: classes5.dex */
    public class RunnableC25533 implements Runnable {
        final /* synthetic */ int val$currentAccount;
        final /* synthetic */ ArrayList val$previewItems;

        public RunnableC25533(ArrayList arrayList, int i) {
            this.val$previewItems = arrayList;
            this.val$currentAccount = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = 0;
            while (true) {
                int size = this.val$previewItems.size();
                final ArrayList arrayList = this.val$previewItems;
                if (i < size) {
                    ((ChatThemeBottomSheet.ChatThemeItem) arrayList.get(i)).chatTheme.loadPreviewColors(this.val$currentAccount);
                    i++;
                } else {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$3$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$run$0(arrayList);
                        }
                    });
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(ArrayList arrayList) {
            MediaDataController.this.defaultEmojiThemes.clear();
            MediaDataController.this.defaultEmojiThemes.addAll(arrayList);
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiPreviewThemesChanged, new Object[0]);
        }
    }

    public ArrayList<TLRPC.EmojiStatus> getDefaultEmojiStatuses() {
        if (!this.emojiStatusesFromCacheFetched[1]) {
            fetchEmojiStatuses(1, true);
        } else if (this.emojiStatuses[1] == null || (this.emojiStatusesFetchDate[1] != null && (System.currentTimeMillis() / 1000) - this.emojiStatusesFetchDate[1].longValue() > 1800)) {
            fetchEmojiStatuses(1, false);
        }
        return this.emojiStatuses[1];
    }

    public ArrayList<TLRPC.EmojiStatus> getDefaultChannelEmojiStatuses() {
        if (!this.emojiStatusesFromCacheFetched[2]) {
            fetchEmojiStatuses(2, true);
        } else if (this.emojiStatuses[2] == null || (this.emojiStatusesFetchDate[2] != null && (System.currentTimeMillis() / 1000) - this.emojiStatusesFetchDate[2].longValue() > 1800)) {
            fetchEmojiStatuses(2, false);
        }
        return this.emojiStatuses[2];
    }

    public ArrayList<TLRPC.EmojiStatus> getRecentEmojiStatuses() {
        if (!this.emojiStatusesFromCacheFetched[0]) {
            fetchEmojiStatuses(0, true);
        } else if (this.emojiStatuses[0] == null || (this.emojiStatusesFetchDate[0] != null && (System.currentTimeMillis() / 1000) - this.emojiStatusesFetchDate[0].longValue() > 1800)) {
            fetchEmojiStatuses(0, false);
        }
        return this.emojiStatuses[0];
    }

    public ArrayList<TLRPC.EmojiStatus> clearRecentEmojiStatuses() {
        ArrayList<TLRPC.EmojiStatus> arrayList = this.emojiStatuses[0];
        if (arrayList != null) {
            arrayList.clear();
        }
        this.emojiStatusesHash[0] = 0;
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda167
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clearRecentEmojiStatuses$230();
            }
        });
        return this.emojiStatuses[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearRecentEmojiStatuses$230() {
        try {
            getMessagesStorage().getDatabase().executeFast("DELETE FROM emoji_statuses WHERE type = 0").stepThis().dispose();
        } catch (Exception unused) {
        }
    }

    public void pushRecentEmojiStatus(TLRPC.EmojiStatus emojiStatus) {
        if (this.emojiStatuses[0] != null) {
            if (emojiStatus instanceof TLRPC.TL_emojiStatus) {
                long j = ((TLRPC.TL_emojiStatus) emojiStatus).document_id;
                int i = 0;
                while (i < this.emojiStatuses[0].size()) {
                    if ((this.emojiStatuses[0].get(i) instanceof TLRPC.TL_emojiStatus) && ((TLRPC.TL_emojiStatus) this.emojiStatuses[0].get(i)).document_id == j) {
                        this.emojiStatuses[0].remove(i);
                        i--;
                    }
                    i++;
                }
            }
            this.emojiStatuses[0].add(0, emojiStatus);
            while (this.emojiStatuses[0].size() > 50) {
                this.emojiStatuses[0].remove(r7.size() - 1);
            }
            TL_account.TL_emojiStatuses tL_emojiStatuses = new TL_account.TL_emojiStatuses();
            tL_emojiStatuses.hash = this.emojiStatusesHash[0];
            tL_emojiStatuses.statuses = this.emojiStatuses[0];
            updateEmojiStatuses(0, tL_emojiStatuses);
        }
    }

    public void fetchEmojiStatuses(final int i, boolean z) {
        TLObject tLObject;
        boolean[] zArr = this.emojiStatusesFetching;
        if (zArr[i]) {
            return;
        }
        zArr[i] = true;
        if (z) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fetchEmojiStatuses$232(i);
                }
            });
            return;
        }
        if (i == 0) {
            TL_account.getRecentEmojiStatuses getrecentemojistatuses = new TL_account.getRecentEmojiStatuses();
            getrecentemojistatuses.hash = this.emojiStatusesHash[i];
            tLObject = getrecentemojistatuses;
        } else if (i == 1) {
            TL_account.getDefaultEmojiStatuses getdefaultemojistatuses = new TL_account.getDefaultEmojiStatuses();
            getdefaultemojistatuses.hash = this.emojiStatusesHash[i];
            tLObject = getdefaultemojistatuses;
        } else {
            TL_account.getChannelDefaultEmojiStatuses getchanneldefaultemojistatuses = new TL_account.getChannelDefaultEmojiStatuses();
            getchanneldefaultemojistatuses.hash = this.emojiStatusesHash[i];
            tLObject = getchanneldefaultemojistatuses;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda17
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                this.f$0.lambda$fetchEmojiStatuses$234(i, tLObject2, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchEmojiStatuses$232(int i) {
        boolean z;
        NativeByteBuffer nativeByteBufferByteBufferValue;
        try {
            SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT data FROM emoji_statuses WHERE type = " + i + " LIMIT 1", new Object[0]);
            if (!sQLiteCursorQueryFinalized.next() || sQLiteCursorQueryFinalized.getColumnCount() <= 0 || sQLiteCursorQueryFinalized.isNull(0) || (nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0)) == null) {
                z = false;
            } else {
                TL_account.EmojiStatuses emojiStatusesTLdeserialize = TL_account.EmojiStatuses.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                if (emojiStatusesTLdeserialize instanceof TL_account.TL_emojiStatuses) {
                    this.emojiStatusesHash[i] = emojiStatusesTLdeserialize.hash;
                    this.emojiStatuses[i] = emojiStatusesTLdeserialize.statuses;
                    z = true;
                } else {
                    z = false;
                }
                try {
                    nativeByteBufferByteBufferValue.reuse();
                } catch (Exception e) {
                    e = e;
                    FileLog.m898e(e);
                }
            }
            sQLiteCursorQueryFinalized.dispose();
        } catch (Exception e2) {
            e = e2;
            z = false;
        }
        this.emojiStatusesFromCacheFetched[i] = true;
        this.emojiStatusesFetching[i] = false;
        if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fetchEmojiStatuses$231();
                }
            });
        } else {
            fetchEmojiStatuses(i, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchEmojiStatuses$231() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentEmojiStatusesUpdate, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchEmojiStatuses$234(int i, TLObject tLObject, TLRPC.TL_error tL_error) {
        this.emojiStatusesFetchDate[i] = Long.valueOf(System.currentTimeMillis() / 1000);
        if (tLObject instanceof TL_account.TL_emojiStatusesNotModified) {
            this.emojiStatusesFetching[i] = false;
            return;
        }
        if (tLObject instanceof TL_account.TL_emojiStatuses) {
            TL_account.TL_emojiStatuses tL_emojiStatuses = (TL_account.TL_emojiStatuses) tLObject;
            this.emojiStatusesHash[i] = tL_emojiStatuses.hash;
            this.emojiStatuses[i] = tL_emojiStatuses.statuses;
            updateEmojiStatuses(i, tL_emojiStatuses);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda95
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fetchEmojiStatuses$233();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchEmojiStatuses$233() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentEmojiStatusesUpdate, new Object[0]);
    }

    private void updateEmojiStatuses(final int i, final TL_account.TL_emojiStatuses tL_emojiStatuses) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda147
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateEmojiStatuses$235(i, tL_emojiStatuses);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateEmojiStatuses$235(int i, TL_account.TL_emojiStatuses tL_emojiStatuses) {
        try {
            getMessagesStorage().getDatabase().executeFast("DELETE FROM emoji_statuses WHERE type = " + i).stepThis().dispose();
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("INSERT INTO emoji_statuses VALUES(?, ?)");
            sQLitePreparedStatementExecuteFast.requery();
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tL_emojiStatuses.getObjectSize());
            tL_emojiStatuses.serializeToStream(nativeByteBuffer);
            sQLitePreparedStatementExecuteFast.bindByteBuffer(1, nativeByteBuffer);
            sQLitePreparedStatementExecuteFast.bindInteger(2, i);
            sQLitePreparedStatementExecuteFast.step();
            nativeByteBuffer.reuse();
            sQLitePreparedStatementExecuteFast.dispose();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        this.emojiStatusesFetching[i] = false;
    }

    public ArrayList<TLRPC.Reaction> getRecentReactions() {
        return this.recentReactions;
    }

    public void clearRecentReactions() {
        this.recentReactions.clear();
        ApplicationLoader.applicationContext.getSharedPreferences("recent_reactions_" + this.currentAccount, 0).edit().clear().apply();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC.TL_messages_clearRecentReactions(), new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController.4
            @Override // org.telegram.tgnet.RequestDelegate
            public void run(TLObject tLObject, TLRPC.TL_error tL_error) {
            }
        });
    }

    public ArrayList<TLRPC.Reaction> getTopReactions() {
        return this.topReactions;
    }

    public void loadRecentAndTopReactions(boolean z) {
        if (this.loadingRecentReactions) {
            return;
        }
        if (!this.loadedRecentReactions || z) {
            final SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("recent_reactions_" + this.currentAccount, 0);
            final SharedPreferences sharedPreferences2 = ApplicationLoader.applicationContext.getSharedPreferences("top_reactions_" + this.currentAccount, 0);
            this.recentReactions.clear();
            this.topReactions.clear();
            this.recentReactions.addAll(loadReactionsFromPref(sharedPreferences));
            this.topReactions.addAll(loadReactionsFromPref(sharedPreferences2));
            this.loadingRecentReactions = true;
            this.loadedRecentReactions = true;
            final boolean[] zArr = new boolean[2];
            TLRPC.TL_messages_getRecentReactions tL_messages_getRecentReactions = new TLRPC.TL_messages_getRecentReactions();
            tL_messages_getRecentReactions.hash = sharedPreferences.getLong("hash", 0L);
            tL_messages_getRecentReactions.limit = 50;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getRecentReactions, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda46
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadRecentAndTopReactions$237(sharedPreferences, zArr, tLObject, tL_error);
                }
            });
            TLRPC.TL_messages_getTopReactions tL_messages_getTopReactions = new TLRPC.TL_messages_getTopReactions();
            tL_messages_getTopReactions.hash = sharedPreferences2.getLong("hash", 0L);
            tL_messages_getTopReactions.limit = 100;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getTopReactions, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda47
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadRecentAndTopReactions$239(sharedPreferences2, zArr, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRecentAndTopReactions$237(final SharedPreferences sharedPreferences, final boolean[] zArr, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda80
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadRecentAndTopReactions$236(tL_error, tLObject, sharedPreferences, zArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRecentAndTopReactions$236(TLRPC.TL_error tL_error, TLObject tLObject, SharedPreferences sharedPreferences, boolean[] zArr) {
        if (tL_error == null && (tLObject instanceof TLRPC.TL_messages_reactions)) {
            TLRPC.TL_messages_reactions tL_messages_reactions = (TLRPC.TL_messages_reactions) tLObject;
            this.recentReactions.clear();
            this.recentReactions.addAll(tL_messages_reactions.reactions);
            saveReactionsToPref(sharedPreferences, tL_messages_reactions.hash, tL_messages_reactions.reactions);
        }
        zArr[0] = true;
        if (zArr[1]) {
            this.loadingRecentReactions = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRecentAndTopReactions$239(final SharedPreferences sharedPreferences, final boolean[] zArr, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadRecentAndTopReactions$238(tL_error, tLObject, sharedPreferences, zArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRecentAndTopReactions$238(TLRPC.TL_error tL_error, TLObject tLObject, SharedPreferences sharedPreferences, boolean[] zArr) {
        if (tL_error == null && (tLObject instanceof TLRPC.TL_messages_reactions)) {
            TLRPC.TL_messages_reactions tL_messages_reactions = (TLRPC.TL_messages_reactions) tLObject;
            this.topReactions.clear();
            this.topReactions.addAll(tL_messages_reactions.reactions);
            saveReactionsToPref(sharedPreferences, tL_messages_reactions.hash, tL_messages_reactions.reactions);
        }
        zArr[1] = true;
        if (zArr[0]) {
            this.loadingRecentReactions = false;
        }
    }

    public ArrayList<TLRPC.Reaction> getSavedReactions() {
        return this.savedReactions;
    }

    public void loadSavedReactions(boolean z) {
        if (this.loadingSavedReactions) {
            return;
        }
        if (!this.loadedSavedReactions || z) {
            final SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("saved_reactions_" + this.currentAccount, 0);
            this.savedReactions.clear();
            this.savedReactions.addAll(loadReactionsFromPref(sharedPreferences));
            this.loadingSavedReactions = true;
            this.loadedSavedReactions = true;
            TLRPC.TL_messages_getDefaultTagReactions tL_messages_getDefaultTagReactions = new TLRPC.TL_messages_getDefaultTagReactions();
            tL_messages_getDefaultTagReactions.hash = sharedPreferences.getLong("hash", 0L);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getDefaultTagReactions, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda126
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadSavedReactions$241(sharedPreferences, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSavedReactions$241(final SharedPreferences sharedPreferences, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda84
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSavedReactions$240(tL_error, tLObject, sharedPreferences);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSavedReactions$240(TLRPC.TL_error tL_error, TLObject tLObject, SharedPreferences sharedPreferences) {
        if (tL_error == null && (tLObject instanceof TLRPC.TL_messages_reactions)) {
            TLRPC.TL_messages_reactions tL_messages_reactions = (TLRPC.TL_messages_reactions) tLObject;
            this.savedReactions.clear();
            this.savedReactions.addAll(tL_messages_reactions.reactions);
            saveReactionsToPref(sharedPreferences, tL_messages_reactions.hash, tL_messages_reactions.reactions);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.savedReactionTagsUpdate, 0L);
        }
        this.loadingSavedReactions = false;
    }

    public static void saveReactionsToPref(SharedPreferences sharedPreferences, long j, ArrayList<? extends TLObject> arrayList) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putInt(NotificationBadge.NewHtcHomeBadger.COUNT, arrayList.size());
        editorEdit.putLong("hash", j);
        for (int i = 0; i < arrayList.size(); i++) {
            TLObject tLObject = arrayList.get(i);
            SerializedData serializedData = new SerializedData(tLObject.getObjectSize());
            tLObject.serializeToStream(serializedData);
            editorEdit.putString("object_" + i, Utilities.bytesToHex(serializedData.toByteArray()));
        }
        editorEdit.apply();
    }

    public static ArrayList<TLRPC.Reaction> loadReactionsFromPref(SharedPreferences sharedPreferences) {
        int i = sharedPreferences.getInt(NotificationBadge.NewHtcHomeBadger.COUNT, 0);
        ArrayList<TLRPC.Reaction> arrayList = new ArrayList<>(i);
        if (i > 0) {
            for (int i2 = 0; i2 < i; i2++) {
                SerializedData serializedData = new SerializedData(Utilities.hexToBytes(sharedPreferences.getString("object_" + i2, _UrlKt.FRAGMENT_ENCODE_SET)));
                try {
                    arrayList.add(TLRPC.Reaction.TLdeserialize(serializedData, serializedData.readInt32(true), true));
                } catch (Throwable th) {
                    FileLog.m898e(th);
                }
            }
        }
        return arrayList;
    }

    private void loadAvatarConstructor(final boolean z) {
        String string;
        long j;
        TLRPC.TL_emojiList tL_emojiList;
        Throwable th;
        final SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("avatar_constructor" + this.currentAccount, 0);
        TLRPC.TL_emojiList tL_emojiList2 = null;
        if (z) {
            string = sharedPreferences.getString("profile", null);
            j = sharedPreferences.getLong("profile_last_check", 0L);
        } else {
            string = sharedPreferences.getString("group", null);
            j = sharedPreferences.getLong("group_last_check", 0L);
        }
        if (string != null) {
            SerializedData serializedData = new SerializedData(Utilities.hexToBytes(string));
            try {
                tL_emojiList = (TLRPC.TL_emojiList) TLRPC.EmojiList.TLdeserialize(serializedData, serializedData.readInt32(true), true);
                try {
                    if (z) {
                        this.profileAvatarConstructorDefault = tL_emojiList;
                    } else {
                        this.groupAvatarConstructorDefault = tL_emojiList;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    FileLog.m898e(th);
                }
            } catch (Throwable th3) {
                tL_emojiList = null;
                th = th3;
            }
            tL_emojiList2 = tL_emojiList;
        }
        if (tL_emojiList2 == null || System.currentTimeMillis() - j > DurationKt.MILLIS_IN_DAY || BuildVars.DEBUG_PRIVATE_VERSION) {
            TL_account.getDefaultProfilePhotoEmojis getdefaultprofilephotoemojis = new TL_account.getDefaultProfilePhotoEmojis();
            if (tL_emojiList2 != null) {
                getdefaultprofilephotoemojis.hash = tL_emojiList2.hash;
            }
            getConnectionsManager().sendRequest(getdefaultprofilephotoemojis, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda162
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadAvatarConstructor$243(sharedPreferences, z, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAvatarConstructor$243(final SharedPreferences sharedPreferences, final boolean z, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAvatarConstructor$242(tLObject, sharedPreferences, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAvatarConstructor$242(TLObject tLObject, SharedPreferences sharedPreferences, boolean z) {
        if (tLObject instanceof TLRPC.TL_emojiList) {
            SerializedData serializedData = new SerializedData(tLObject.getObjectSize());
            tLObject.serializeToStream(serializedData);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            if (z) {
                this.profileAvatarConstructorDefault = (TLRPC.TL_emojiList) tLObject;
                editorEdit.putString("profile", Utilities.bytesToHex(serializedData.toByteArray()));
                editorEdit.putLong("profile_last_check", System.currentTimeMillis());
            } else {
                this.groupAvatarConstructorDefault = (TLRPC.TL_emojiList) tLObject;
                editorEdit.putString("group", Utilities.bytesToHex(serializedData.toByteArray()));
                editorEdit.putLong("group_last_check", System.currentTimeMillis());
            }
            editorEdit.apply();
        }
    }

    public void loadReplyIcons() {
        Throwable th;
        TLRPC.TL_emojiList tL_emojiList;
        final SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("replyicons_" + this.currentAccount, 0);
        TLRPC.TL_emojiList tL_emojiList2 = null;
        String string = sharedPreferences.getString("replyicons", null);
        long j = sharedPreferences.getLong("replyicons_last_check", 0L);
        if (string != null) {
            SerializedData serializedData = new SerializedData(Utilities.hexToBytes(string));
            try {
                tL_emojiList = (TLRPC.TL_emojiList) TLRPC.EmojiList.TLdeserialize(serializedData, serializedData.readInt32(true), true);
                try {
                    this.replyIconsDefault = tL_emojiList;
                } catch (Throwable th2) {
                    th = th2;
                    FileLog.m898e(th);
                }
            } catch (Throwable th3) {
                th = th3;
                tL_emojiList = null;
            }
            tL_emojiList2 = tL_emojiList;
        }
        if (tL_emojiList2 == null || System.currentTimeMillis() - j > DurationKt.MILLIS_IN_DAY || BuildVars.DEBUG_PRIVATE_VERSION) {
            TL_account.getDefaultBackgroundEmojis getdefaultbackgroundemojis = new TL_account.getDefaultBackgroundEmojis();
            if (tL_emojiList2 != null) {
                getdefaultbackgroundemojis.hash = tL_emojiList2.hash;
            }
            getConnectionsManager().sendRequest(getdefaultbackgroundemojis, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda36
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadReplyIcons$245(sharedPreferences, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyIcons$245(final SharedPreferences sharedPreferences, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda230
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadReplyIcons$244(tLObject, sharedPreferences);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyIcons$244(TLObject tLObject, SharedPreferences sharedPreferences) {
        if (tLObject instanceof TLRPC.TL_emojiList) {
            SerializedData serializedData = new SerializedData(tLObject.getObjectSize());
            tLObject.serializeToStream(serializedData);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            this.replyIconsDefault = (TLRPC.TL_emojiList) tLObject;
            editorEdit.putString("replyicons", Utilities.bytesToHex(serializedData.toByteArray()));
            editorEdit.putLong("replyicons_last_check", System.currentTimeMillis());
            editorEdit.apply();
        }
    }

    public void loadRestrictedStatusEmojis() {
        Throwable th;
        TLRPC.TL_emojiList tL_emojiList;
        final SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("restrictedstatuses_" + this.currentAccount, 0);
        TLRPC.TL_emojiList tL_emojiList2 = null;
        String string = sharedPreferences.getString("restrictedstatuses", null);
        long j = sharedPreferences.getLong("restrictedstatuses_last_check", 0L);
        if (string != null) {
            SerializedData serializedData = new SerializedData(Utilities.hexToBytes(string));
            try {
                tL_emojiList = (TLRPC.TL_emojiList) TLRPC.EmojiList.TLdeserialize(serializedData, serializedData.readInt32(true), true);
                try {
                    this.restrictedStatusEmojis = tL_emojiList;
                } catch (Throwable th2) {
                    th = th2;
                    FileLog.m898e(th);
                }
            } catch (Throwable th3) {
                th = th3;
                tL_emojiList = null;
            }
            tL_emojiList2 = tL_emojiList;
        }
        if (tL_emojiList2 == null || System.currentTimeMillis() - j > DurationKt.MILLIS_IN_DAY) {
            TL_account.getChannelRestrictedStatusEmojis getchannelrestrictedstatusemojis = new TL_account.getChannelRestrictedStatusEmojis();
            if (tL_emojiList2 != null) {
                getchannelrestrictedstatusemojis.hash = tL_emojiList2.hash;
            }
            getConnectionsManager().sendRequest(getchannelrestrictedstatusemojis, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda92
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadRestrictedStatusEmojis$247(sharedPreferences, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRestrictedStatusEmojis$247(final SharedPreferences sharedPreferences, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda145
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadRestrictedStatusEmojis$246(tLObject, sharedPreferences);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRestrictedStatusEmojis$246(TLObject tLObject, SharedPreferences sharedPreferences) {
        if (tLObject instanceof TLRPC.TL_emojiList) {
            SerializedData serializedData = new SerializedData(tLObject.getObjectSize());
            tLObject.serializeToStream(serializedData);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            this.restrictedStatusEmojis = (TLRPC.TL_emojiList) tLObject;
            editorEdit.putString("restrictedstatuses", Utilities.bytesToHex(serializedData.toByteArray()));
            editorEdit.putLong("restrictedstatuses_last_check", System.currentTimeMillis());
            editorEdit.apply();
        }
    }

    private void loadDraftVoiceMessages() {
        if (this.draftVoicesLoaded) {
            return;
        }
        Set<Map.Entry<String, ?>> setEntrySet = ApplicationLoader.applicationContext.getSharedPreferences("2voicedrafts_" + this.currentAccount, 0).getAll().entrySet();
        this.draftVoices.clear();
        for (Map.Entry<String, ?> entry : setEntrySet) {
            String key = entry.getKey();
            DraftVoice draftVoiceFromString = DraftVoice.fromString((String) entry.getValue());
            if (draftVoiceFromString != null) {
                this.draftVoices.put(Long.parseLong(key), draftVoiceFromString);
            }
        }
        this.draftVoicesLoaded = true;
    }

    public void toggleDraftVoiceOnce(long j, long j2, boolean z) {
        DraftVoice draftVoice = getDraftVoice(j, j2);
        if (draftVoice == null || draftVoice.once == z) {
            return;
        }
        draftVoice.once = z;
        ApplicationLoader.applicationContext.getSharedPreferences("2voicedrafts_" + this.currentAccount, 0).edit().putString(Objects.hash(Long.valueOf(j), Long.valueOf(j2)) + _UrlKt.FRAGMENT_ENCODE_SET, draftVoice.toString()).apply();
    }

    public void setDraftVoiceRegion(long j, long j2, float f, float f2) {
        DraftVoice draftVoice = getDraftVoice(j, j2);
        if (draftVoice != null) {
            if (Math.abs(draftVoice.left - f) >= 0.001f || Math.abs(draftVoice.right - f2) >= 0.001f) {
                draftVoice.left = f;
                draftVoice.right = f2;
                ApplicationLoader.applicationContext.getSharedPreferences("2voicedrafts_" + this.currentAccount, 0).edit().putString(Objects.hash(Long.valueOf(j), Long.valueOf(j2)) + _UrlKt.FRAGMENT_ENCODE_SET, draftVoice.toString()).apply();
            }
        }
    }

    public void pushDraftVoiceMessage(long j, long j2, DraftVoice draftVoice) {
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("2voicedrafts_" + this.currentAccount, 0);
        long jHash = Objects.hash(Long.valueOf(j), Long.valueOf(j2));
        String str = jHash + _UrlKt.FRAGMENT_ENCODE_SET;
        if (draftVoice == null) {
            sharedPreferences.edit().remove(str).apply();
            this.draftVoices.remove(jHash);
        } else {
            sharedPreferences.edit().putString(str, draftVoice.toString()).apply();
            this.draftVoices.put(jHash, draftVoice);
        }
    }

    public DraftVoice getDraftVoice(long j, long j2) {
        loadDraftVoiceMessages();
        return this.draftVoices.get(Objects.hash(Long.valueOf(j), Long.valueOf(j2)));
    }

    public static class DraftVoice {
        public long id;
        public boolean once;
        public String path;
        public short[] recordSamples;
        public long recordTimeCount;
        public long samplesCount;
        public int writedFrame;
        public float left = 0.0f;
        public float right = 1.0f;

        public static DraftVoice of(MediaController mediaController, String str, boolean z, float f, float f2) {
            if (mediaController.recordingAudio == null) {
                return null;
            }
            DraftVoice draftVoice = new DraftVoice();
            draftVoice.path = str;
            draftVoice.samplesCount = mediaController.samplesCount;
            draftVoice.writedFrame = mediaController.writtenFrame;
            draftVoice.recordTimeCount = mediaController.recordTimeCount;
            draftVoice.id = mediaController.recordingAudio.id;
            draftVoice.recordSamples = mediaController.recordSamples;
            draftVoice.once = z;
            draftVoice.left = f;
            draftVoice.right = f2;
            return draftVoice;
        }

        public String toString() {
            char[] cArr = new char[this.recordSamples.length];
            int i = 0;
            while (true) {
                short[] sArr = this.recordSamples;
                if (i < sArr.length) {
                    cArr[i] = (char) sArr[i];
                    i++;
                } else {
                    return "@" + this.path + "\n" + this.samplesCount + "\n" + this.writedFrame + "\n" + this.recordTimeCount + "\n" + (this.once ? 1 : 0) + ";" + this.left + ";" + this.right + "\n" + new String(cArr);
                }
            }
        }

        public static DraftVoice fromString(String str) {
            if (str == null) {
                return null;
            }
            try {
                if (!str.startsWith("@")) {
                    return null;
                }
                boolean z = true;
                String[] strArrSplit = str.substring(1).split("\n");
                if (strArrSplit.length < 6) {
                    return null;
                }
                DraftVoice draftVoice = new DraftVoice();
                int i = 0;
                draftVoice.path = strArrSplit[0];
                draftVoice.samplesCount = Long.parseLong(strArrSplit[1]);
                draftVoice.writedFrame = Integer.parseInt(strArrSplit[2]);
                draftVoice.recordTimeCount = Long.parseLong(strArrSplit[3]);
                if (strArrSplit[4].contains(";")) {
                    String[] strArrSplit2 = strArrSplit[4].split(";");
                    draftVoice.once = Integer.parseInt(strArrSplit2[0]) != 0;
                    draftVoice.left = Float.parseFloat(strArrSplit2[1]);
                    draftVoice.right = Float.parseFloat(strArrSplit2[2]);
                } else {
                    if (Integer.parseInt(strArrSplit[4]) == 0) {
                        z = false;
                    }
                    draftVoice.once = z;
                    draftVoice.left = 0.0f;
                    draftVoice.right = 1.0f;
                }
                int length = strArrSplit.length - 5;
                String[] strArr = new String[length];
                for (int i2 = 0; i2 < length; i2++) {
                    strArr[i2] = strArrSplit[i2 + 5];
                }
                String strJoin = TextUtils.join("\n", strArr);
                draftVoice.recordSamples = new short[strJoin.length()];
                while (true) {
                    short[] sArr = draftVoice.recordSamples;
                    if (i >= sArr.length) {
                        return draftVoice;
                    }
                    sArr[i] = (short) strJoin.charAt(i);
                    i++;
                }
            } catch (Exception e) {
                FileLog.m898e(e);
                return null;
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class SearchStickersKey {
        public final boolean emojis;
        public final String lang_code;

        /* JADX INFO: renamed from: q */
        public final String f809q;

        public SearchStickersKey(boolean z, String str, String str2) {
            this.emojis = z;
            this.lang_code = str;
            this.f809q = str2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                SearchStickersKey searchStickersKey = (SearchStickersKey) obj;
                if (this.emojis == searchStickersKey.emojis && Objects.equals(this.lang_code, searchStickersKey.lang_code) && Objects.equals(this.f809q, searchStickersKey.f809q)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(this.emojis), this.lang_code, this.f809q);
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class SearchStickersResult {
        public final ArrayList<TLRPC.Document> documents;
        public Integer next_offset;

        private SearchStickersResult() {
            this.documents = new ArrayList<>();
        }

        public void apply(TLRPC.TL_messages_foundStickers tL_messages_foundStickers) {
            this.documents.addAll(tL_messages_foundStickers.stickers);
            this.next_offset = (tL_messages_foundStickers.flags & 1) != 0 ? Integer.valueOf(tL_messages_foundStickers.next_offset) : null;
        }
    }

    public SearchStickersKey searchStickers(boolean z, String str, String str2, Utilities.Callback<ArrayList<TLRPC.Document>> callback) {
        return searchStickers(z, str, str2, callback, false);
    }

    public SearchStickersKey searchStickers(boolean z, String str, String str2, final Utilities.Callback<ArrayList<TLRPC.Document>> callback, boolean z2) {
        if (callback == null) {
            return null;
        }
        final SearchStickersKey searchStickersKey = new SearchStickersKey(z, str, str2);
        final SearchStickersResult searchStickersResult = this.searchStickerResults.get(searchStickersKey);
        if ((searchStickersResult == null || (searchStickersResult.next_offset != null && z2)) && !this.loadingSearchStickersKeys.containsKey(searchStickersKey)) {
            this.loadingSearchStickersKeys.put(searchStickersKey, 0);
            getInstance(this.currentAccount).getEmojiSuggestions(new String[]{str}, str2, true, new KeywordResultCallback() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda161
                @Override // org.telegram.messenger.MediaDataController.KeywordResultCallback
                public final void run(ArrayList arrayList, String str3) {
                    this.f$0.lambda$searchStickers$249(searchStickersKey, searchStickersResult, callback, arrayList, str3);
                }
            }, false);
            return searchStickersKey;
        }
        if (searchStickersResult != null) {
            callback.run(searchStickersResult.documents);
            return searchStickersKey;
        }
        callback.run(new ArrayList<>());
        return searchStickersKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchStickers$249(final SearchStickersKey searchStickersKey, final SearchStickersResult searchStickersResult, final Utilities.Callback callback, ArrayList arrayList, String str) {
        if (this.loadingSearchStickersKeys.containsKey(searchStickersKey)) {
            StringBuilder sb = new StringBuilder();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                KeywordResult keywordResult = (KeywordResult) obj;
                if (!TextUtils.isEmpty(keywordResult.emoji) && !keywordResult.emoji.startsWith("animated_")) {
                    sb.append(keywordResult.emoji);
                }
            }
            TLRPC.TL_messages_searchStickers tL_messages_searchStickers = new TLRPC.TL_messages_searchStickers();
            tL_messages_searchStickers.emojis = searchStickersKey.emojis;
            if (!TextUtils.isEmpty(searchStickersKey.lang_code)) {
                tL_messages_searchStickers.lang_code.add(searchStickersKey.lang_code);
            }
            tL_messages_searchStickers.emoticon = sb.toString();
            tL_messages_searchStickers.f875q = searchStickersKey.f809q;
            tL_messages_searchStickers.limit = 100;
            tL_messages_searchStickers.offset = searchStickersResult != null ? searchStickersResult.next_offset.intValue() : 0;
            this.loadingSearchStickersKeys.put(searchStickersKey, Integer.valueOf(getConnectionsManager().sendRequestTyped(tL_messages_searchStickers, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda131
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj2, Object obj3) {
                    this.f$0.lambda$searchStickers$248(searchStickersKey, searchStickersResult, callback, (TLRPC.messages_FoundStickers) obj2, (TLRPC.TL_error) obj3);
                }
            })));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchStickers$248(SearchStickersKey searchStickersKey, SearchStickersResult searchStickersResult, Utilities.Callback callback, TLRPC.messages_FoundStickers messages_foundstickers, TLRPC.TL_error tL_error) {
        this.loadingSearchStickersKeys.remove(searchStickersKey);
        if (searchStickersResult == null) {
            searchStickersResult = new SearchStickersResult();
        }
        if (messages_foundstickers instanceof TLRPC.TL_messages_foundStickers) {
            searchStickersResult.apply((TLRPC.TL_messages_foundStickers) messages_foundstickers);
        }
        this.searchStickerResults.put(searchStickersKey, searchStickersResult);
        callback.run(searchStickersResult.documents);
    }

    public void cancelSearchStickers(SearchStickersKey searchStickersKey) {
        Integer numRemove;
        if (searchStickersKey == null || (numRemove = this.loadingSearchStickersKeys.remove(searchStickersKey)) == null || numRemove.intValue() == 0) {
            return;
        }
        getConnectionsManager().cancelRequest(numRemove.intValue(), true);
    }

    public void searchStickerSets(boolean z, String str, final Utilities.Callback<ArrayList<TLRPC.StickerSetCovered>> callback) {
        Object obj;
        if (z) {
            TLRPC.TL_messages_searchEmojiStickerSets tL_messages_searchEmojiStickerSets = new TLRPC.TL_messages_searchEmojiStickerSets();
            tL_messages_searchEmojiStickerSets.f872q = str;
            obj = tL_messages_searchEmojiStickerSets;
        } else {
            TLRPC.TL_messages_searchStickerSets tL_messages_searchStickerSets = new TLRPC.TL_messages_searchStickerSets();
            tL_messages_searchStickerSets.f874q = str;
            obj = tL_messages_searchStickerSets;
        }
        getConnectionsManager().sendRequestTyped(obj, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda28
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj2, Object obj3) {
                MediaDataController.m5641$r8$lambda$wTht0GThGZYUtUzyA6z1O8ctro(callback, (TLRPC.messages_FoundStickerSets) obj2, (TLRPC.TL_error) obj3);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$wTht0GThGZY-UtUzyA6z1O8ctro, reason: not valid java name */
    public static /* synthetic */ void m5641$r8$lambda$wTht0GThGZYUtUzyA6z1O8ctro(Utilities.Callback callback, TLRPC.messages_FoundStickerSets messages_foundstickersets, TLRPC.TL_error tL_error) {
        if (messages_foundstickersets instanceof TLRPC.TL_messages_foundStickerSets) {
            callback.run(((TLRPC.TL_messages_foundStickerSets) messages_foundstickersets).sets);
        } else {
            callback.run(new ArrayList());
        }
    }
}
