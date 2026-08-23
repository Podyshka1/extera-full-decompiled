package org.telegram.ui.Adapters;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.text.Spanned;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_bots;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Adapters.SearchAdapterHelper;
import org.telegram.ui.Business.QuickRepliesActivity;
import org.telegram.ui.Business.QuickRepliesController;
import org.telegram.ui.Cells.BotSwitchCell;
import org.telegram.ui.Cells.ContextLinkCell;
import org.telegram.ui.Cells.MentionCell;
import org.telegram.ui.Cells.StickerCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.EmojiView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.PremiumPreviewFragment;

/* JADX INFO: loaded from: classes6.dex */
public class MentionsAdapter extends RecyclerListView.SelectionAdapter implements NotificationCenter.NotificationCenterDelegate {
    private LongSparseArray<TL_bots.BotInfo> botInfo;
    private int botsCount;
    private HashtagHint bottomHint;
    private Runnable cancelDelayRunnable;
    private int channelLastReqId;
    private int channelReqId;
    public TLRPC.Chat chat;
    private Runnable checkAgainRunnable;
    private boolean contextMedia;
    private int contextQueryReqid;
    private Runnable contextQueryRunnable;
    private int contextUsernameReqid;
    private boolean delayLocalResults;
    private MentionsAdapterDelegate delegate;
    private long dialog_id;
    private TLRPC.User foundContextBot;
    private String hintHashtag;
    private boolean hintHashtagDivider;
    private TLRPC.ChatFull info;
    private boolean isDarkTheme;
    private boolean isSearchingMentions;
    private Object[] lastData;
    private boolean lastForSearch;
    private Location lastKnownLocation;
    private int lastPosition;
    private int lastReqId;
    private String[] lastSearchKeyboardLanguage;
    private String lastSticker;
    private String lastText;
    private boolean lastUsernameOnly;
    private final Context mContext;
    private EmojiView.ChooseStickerActionTracker mentionsStickersActionTracker;
    private ArrayList<MessageObject> messages;
    private String nextQueryOffset;
    private boolean noUserName;
    public ChatActivity parentFragment;
    private ArrayList<QuickRepliesController.QuickReply> quickReplies;
    private String quickRepliesQuery;
    private final Theme.ResourcesProvider resourcesProvider;
    private int resultLength;
    private int resultStartPosition;
    private SearchAdapterHelper searchAdapterHelper;
    private Runnable searchGlobalRunnable;
    private ArrayList<TLRPC.BotInlineResult> searchResultBotContext;
    private TLRPC.TL_inlineBotSwitchPM searchResultBotContextSwitch;
    private long searchResultBotContextSwitchUserId;
    private TLRPC.TL_inlineBotWebView searchResultBotWebViewSwitch;
    private ArrayList<String> searchResultCommands;
    private ArrayList<Boolean> searchResultCommandsEphemeral;
    private ArrayList<String> searchResultCommandsHelp;
    private ArrayList<TLRPC.User> searchResultCommandsUsers;
    private ArrayList<String> searchResultHashtags;
    private ArrayList<MediaDataController.KeywordResult> searchResultSuggestions;
    private ArrayList<TLObject> searchResultUsernames;
    private LongSparseArray<TLObject> searchResultUsernamesMap;
    private String searchingContextQuery;
    private String searchingContextUsername;
    private ArrayList<StickerResult> stickers;
    private HashMap<String, TLRPC.Document> stickersMap;
    private final boolean stories;
    private long threadMessageId;
    private HashtagHint topHint;
    private TLRPC.User user;
    private boolean visibleByStickersSearch;
    private boolean allowStickers = true;
    private boolean allowBots = true;
    private boolean allowChats = true;
    private final boolean USE_DIVIDERS = false;
    private int currentAccount = UserConfig.selectedAccount;
    private boolean needUsernames = true;
    private boolean needBotContext = true;
    private boolean inlineMediaEnabled = true;
    private boolean searchInDialogs = false;
    private ArrayList<String> stickersToLoad = new ArrayList<>();
    private SendMessagesHelper.LocationProvider locationProvider = new SendMessagesHelper.LocationProvider(new SendMessagesHelper.LocationProvider.LocationProviderDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter.1
        @Override // org.telegram.messenger.SendMessagesHelper.LocationProvider.LocationProviderDelegate
        public void onLocationAcquired(Location location) {
            if (MentionsAdapter.this.foundContextBot == null || !MentionsAdapter.this.foundContextBot.bot_inline_geo) {
                return;
            }
            MentionsAdapter.this.lastKnownLocation = location;
            MentionsAdapter mentionsAdapter = MentionsAdapter.this;
            mentionsAdapter.searchForContextBotResults(true, mentionsAdapter.foundContextBot, MentionsAdapter.this.searchingContextQuery, _UrlKt.FRAGMENT_ENCODE_SET);
        }

        @Override // org.telegram.messenger.SendMessagesHelper.LocationProvider.LocationProviderDelegate
        public void onUnableLocationAcquire() {
            MentionsAdapter.this.onLocationUnavailable();
        }
    }) { // from class: org.telegram.ui.Adapters.MentionsAdapter.2
        @Override // org.telegram.messenger.SendMessagesHelper.LocationProvider
        public void stop() {
            super.stop();
            MentionsAdapter.this.lastKnownLocation = null;
        }
    };
    private boolean isReversed = false;
    private int lastItemCount = -1;

    public interface MentionsAdapterDelegate {
        void needChangePanelVisibility(boolean z);

        void onContextClick(TLRPC.BotInlineResult botInlineResult);

        void onContextSearch(boolean z);

        void onItemCountUpdate(int i, int i2);
    }

    public static class StickerResult {
        public Object parent;
        public TLRPC.Document sticker;

        public StickerResult(TLRPC.Document document, Object obj) {
            this.sticker = document;
            this.parent = obj;
        }
    }

    public MentionsAdapter(Context context, boolean z, long j, long j2, MentionsAdapterDelegate mentionsAdapterDelegate, Theme.ResourcesProvider resourcesProvider, boolean z2) {
        this.resourcesProvider = resourcesProvider;
        this.mContext = context;
        this.delegate = mentionsAdapterDelegate;
        this.isDarkTheme = z;
        this.dialog_id = j;
        this.stories = z2;
        this.threadMessageId = j2;
        SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(true);
        this.searchAdapterHelper = searchAdapterHelper;
        searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter.3
            @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public void onDataSetChanged(int i) {
                MentionsAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public void onSetHashtags(ArrayList<SearchAdapterHelper.HashtagObject> arrayList, HashMap<String, SearchAdapterHelper.HashtagObject> map) {
                if (MentionsAdapter.this.lastText != null) {
                    MentionsAdapter mentionsAdapter = MentionsAdapter.this;
                    mentionsAdapter.lambda$searchUsernameOrHashtag$8(mentionsAdapter.lastText, MentionsAdapter.this.lastPosition, MentionsAdapter.this.messages, MentionsAdapter.this.lastUsernameOnly, MentionsAdapter.this.lastForSearch);
                }
            }
        });
        if (!z) {
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoadFailed);
        }
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recentDocumentsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.stickersDidLoad);
    }

    public TLRPC.User getFoundContextBot() {
        return this.foundContextBot;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        Runnable runnable;
        if (i == NotificationCenter.fileLoaded || i == NotificationCenter.fileLoadFailed) {
            ArrayList<StickerResult> arrayList = this.stickers;
            if (arrayList == null || arrayList.isEmpty() || this.stickersToLoad.isEmpty() || !this.visibleByStickersSearch) {
                return;
            }
            this.stickersToLoad.remove((String) objArr[0]);
            if (this.stickersToLoad.isEmpty()) {
                this.delegate.needChangePanelVisibility(getItemCountInternal() > 0);
                return;
            }
            return;
        }
        if (i == NotificationCenter.recentDocumentsDidLoad) {
            Runnable runnable2 = this.checkAgainRunnable;
            if (runnable2 != null) {
                AndroidUtilities.runOnUIThread(runnable2);
                this.checkAgainRunnable = null;
                return;
            }
            return;
        }
        if (i == NotificationCenter.stickersDidLoad && ((Integer) objArr[0]).intValue() == 0 && (runnable = this.checkAgainRunnable) != null) {
            AndroidUtilities.runOnUIThread(runnable);
            this.checkAgainRunnable = null;
        }
    }

    private void addStickerToResult(TLRPC.Document document, Object obj) {
        if (document == null) {
            return;
        }
        String str = document.dc_id + "_" + document.id;
        HashMap<String, TLRPC.Document> map = this.stickersMap;
        if (map == null || !map.containsKey(str)) {
            if (UserConfig.getInstance(this.currentAccount).isPremium() || !MessageObject.isPremiumSticker(document)) {
                if (this.stickers == null) {
                    this.stickers = new ArrayList<>();
                    this.stickersMap = new HashMap<>();
                }
                this.stickers.add(new StickerResult(document, obj));
                this.stickersMap.put(str, document);
                EmojiView.ChooseStickerActionTracker chooseStickerActionTracker = this.mentionsStickersActionTracker;
                if (chooseStickerActionTracker != null) {
                    chooseStickerActionTracker.checkVisibility();
                }
            }
        }
    }

    private void addStickersToResult(ArrayList<TLRPC.Document> arrayList, Object obj) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            TLRPC.Document document = arrayList.get(i);
            String str = document.dc_id + "_" + document.id;
            HashMap<String, TLRPC.Document> map = this.stickersMap;
            if ((map == null || !map.containsKey(str)) && (UserConfig.getInstance(this.currentAccount).isPremium() || !MessageObject.isPremiumSticker(document))) {
                int size2 = document.attributes.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size2) {
                        break;
                    }
                    TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i2);
                    if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                        obj = documentAttribute.stickerset;
                        break;
                    }
                    i2++;
                }
                if (this.stickers == null) {
                    this.stickers = new ArrayList<>();
                    this.stickersMap = new HashMap<>();
                }
                this.stickers.add(new StickerResult(document, obj));
                this.stickersMap.put(str, document);
            }
        }
    }

    private boolean checkStickerFilesExistAndDownload() {
        if (this.stickers == null) {
            return false;
        }
        this.stickersToLoad.clear();
        int iMin = Math.min(6, this.stickers.size());
        for (int i = 0; i < iMin; i++) {
            StickerResult stickerResult = this.stickers.get(i);
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(stickerResult.sticker.thumbs, 90);
            if (((closestPhotoSizeWithSize instanceof TLRPC.TL_photoSize) || (closestPhotoSizeWithSize instanceof TLRPC.TL_photoSizeProgressive)) && !FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize, "webp", true).exists()) {
                this.stickersToLoad.add(FileLoader.getAttachFileName(closestPhotoSizeWithSize, "webp"));
                FileLoader.getInstance(this.currentAccount).loadFile(ImageLocation.getForDocument(closestPhotoSizeWithSize, stickerResult.sticker), stickerResult.parent, "webp", 1, 1);
            }
        }
        return this.stickersToLoad.isEmpty();
    }

    private boolean isValidSticker(TLRPC.Document document, String str) {
        int size = document.attributes.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                String str2 = documentAttribute.alt;
                if (str2 == null || !str2.contains(str)) {
                    break;
                }
                return true;
            }
            i++;
        }
        return false;
    }

    private void searchServerStickers(final String str, String str2) {
        TLRPC.TL_messages_getStickers tL_messages_getStickers = new TLRPC.TL_messages_getStickers();
        tL_messages_getStickers.emoticon = str2;
        tL_messages_getStickers.hash = 0L;
        this.lastReqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getStickers, new RequestDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$searchServerStickers$1(str, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchServerStickers$1(final String str, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchServerStickers$0(str, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchServerStickers$0(String str, TLObject tLObject) {
        ArrayList<StickerResult> arrayList;
        this.lastReqId = 0;
        if (str.equals(this.lastSticker) && (tLObject instanceof TLRPC.TL_messages_stickers)) {
            this.delayLocalResults = false;
            TLRPC.TL_messages_stickers tL_messages_stickers = (TLRPC.TL_messages_stickers) tLObject;
            ArrayList<StickerResult> arrayList2 = this.stickers;
            int size = arrayList2 != null ? arrayList2.size() : 0;
            addStickersToResult(tL_messages_stickers.stickers, "sticker_search_".concat(str));
            ArrayList<StickerResult> arrayList3 = this.stickers;
            int size2 = arrayList3 != null ? arrayList3.size() : 0;
            if (!this.visibleByStickersSearch && (arrayList = this.stickers) != null && !arrayList.isEmpty()) {
                checkStickerFilesExistAndDownload();
                this.delegate.needChangePanelVisibility(getItemCountInternal() > 0);
                this.visibleByStickersSearch = true;
            }
            if (size != size2) {
                notifyDataSetChanged();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void notifyDataSetChanged() {
        MentionsAdapterDelegate mentionsAdapterDelegate;
        int i = this.lastItemCount;
        int i2 = 0;
        if (i == -1 || this.lastData == null) {
            MentionsAdapterDelegate mentionsAdapterDelegate2 = this.delegate;
            if (mentionsAdapterDelegate2 != null) {
                mentionsAdapterDelegate2.onItemCountUpdate(0, getItemCount());
            }
            super.notifyDataSetChanged();
            this.lastData = new Object[getItemCount()];
            while (true) {
                Object[] objArr = this.lastData;
                if (i2 >= objArr.length) {
                    return;
                }
                objArr[i2] = getItem(i2);
                i2++;
            }
        } else {
            int itemCount = getItemCount();
            boolean z = i != itemCount;
            int iMin = Math.min(i, itemCount);
            Object[] objArr2 = new Object[itemCount];
            for (int i3 = 0; i3 < itemCount; i3++) {
                objArr2[i3] = getItem(i3);
            }
            while (i2 < iMin) {
                if (i2 >= 0) {
                    Object[] objArr3 = this.lastData;
                    if (i2 >= objArr3.length || i2 >= itemCount || !itemsEqual(objArr3[i2], objArr2[i2])) {
                        notifyItemChanged(i2);
                        z = true;
                    }
                }
                i2++;
            }
            notifyItemRangeRemoved(iMin, i - iMin);
            notifyItemRangeInserted(iMin, itemCount - iMin);
            if (z && (mentionsAdapterDelegate = this.delegate) != null) {
                mentionsAdapterDelegate.onItemCountUpdate(i, itemCount);
            }
            this.lastData = objArr2;
        }
    }

    private boolean itemsEqual(Object obj, Object obj2) {
        MediaDataController.KeywordResult keywordResult;
        String str;
        String str2;
        if (obj instanceof QuickRepliesController.QuickReply) {
            return false;
        }
        if (obj == obj2) {
            return true;
        }
        if ((obj instanceof StickerResult) && (obj2 instanceof StickerResult) && ((StickerResult) obj).sticker == ((StickerResult) obj2).sticker) {
            return true;
        }
        if ((obj instanceof TLRPC.User) && (obj2 instanceof TLRPC.User) && ((TLRPC.User) obj).id == ((TLRPC.User) obj2).id) {
            return true;
        }
        if ((obj instanceof TLRPC.Chat) && (obj2 instanceof TLRPC.Chat) && ((TLRPC.Chat) obj).id == ((TLRPC.Chat) obj2).id) {
            return true;
        }
        if ((obj instanceof String) && (obj2 instanceof String) && obj.equals(obj2)) {
            return true;
        }
        if ((obj instanceof MediaDataController.KeywordResult) && (obj2 instanceof MediaDataController.KeywordResult) && (str = (keywordResult = (MediaDataController.KeywordResult) obj).keyword) != null) {
            MediaDataController.KeywordResult keywordResult2 = (MediaDataController.KeywordResult) obj2;
            if (str.equals(keywordResult2.keyword) && (str2 = keywordResult.emoji) != null && str2.equals(keywordResult2.emoji)) {
                return true;
            }
        }
        return false;
    }

    private void clearStickers() {
        this.lastSticker = null;
        this.stickers = null;
        this.stickersMap = null;
        notifyDataSetChanged();
        this.visibleByStickersSearch = false;
        if (this.lastReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.lastReqId, true);
            this.lastReqId = 0;
        }
        EmojiView.ChooseStickerActionTracker chooseStickerActionTracker = this.mentionsStickersActionTracker;
        if (chooseStickerActionTracker != null) {
            chooseStickerActionTracker.checkVisibility();
        }
    }

    public void onDestroy() {
        SendMessagesHelper.LocationProvider locationProvider = this.locationProvider;
        if (locationProvider != null) {
            locationProvider.stop();
        }
        Runnable runnable = this.contextQueryRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.contextQueryRunnable = null;
        }
        if (this.contextUsernameReqid != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextUsernameReqid, true);
            this.contextUsernameReqid = 0;
        }
        if (this.contextQueryReqid != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextQueryReqid, true);
            this.contextQueryReqid = 0;
        }
        this.foundContextBot = null;
        this.searchResultBotContextSwitch = null;
        this.inlineMediaEnabled = true;
        this.searchingContextUsername = null;
        this.searchingContextQuery = null;
        this.noUserName = false;
        if (!this.isDarkTheme) {
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoadFailed);
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recentDocumentsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.stickersDidLoad);
    }

    public void onAttachedToWindow() {
        if (!this.isDarkTheme) {
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoadFailed);
        }
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recentDocumentsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.stickersDidLoad);
    }

    public void setParentFragment(ChatActivity chatActivity) {
        this.parentFragment = chatActivity;
    }

    public void setChatInfo(TLRPC.ChatFull chatFull) {
        ChatActivity chatActivity;
        TLRPC.Chat currentChat;
        this.currentAccount = UserConfig.selectedAccount;
        this.info = chatFull;
        if (!this.inlineMediaEnabled && this.foundContextBot != null && (chatActivity = this.parentFragment) != null && (currentChat = chatActivity.getCurrentChat()) != null) {
            boolean zCanSendStickers = ChatObject.canSendStickers(currentChat);
            this.inlineMediaEnabled = zCanSendStickers;
            if (zCanSendStickers) {
                this.searchResultUsernames = null;
                notifyDataSetChanged();
                this.delegate.needChangePanelVisibility(false);
                processFoundUser(this.foundContextBot);
            }
        }
        String str = this.lastText;
        if (str != null) {
            lambda$searchUsernameOrHashtag$8(str, this.lastPosition, this.messages, this.lastUsernameOnly, this.lastForSearch);
        }
    }

    public void setNeedUsernames(boolean z) {
        this.needUsernames = z;
    }

    public void setNeedBotContext(boolean z) {
        this.needBotContext = z;
    }

    public void setBotInfo(LongSparseArray<TL_bots.BotInfo> longSparseArray) {
        this.botInfo = longSparseArray;
    }

    public void setBotsCount(int i) {
        this.botsCount = i;
    }

    public void clearRecentHashtags() {
        this.searchAdapterHelper.clearRecentHashtags();
        this.searchResultHashtags.clear();
        notifyDataSetChanged();
        MentionsAdapterDelegate mentionsAdapterDelegate = this.delegate;
        if (mentionsAdapterDelegate != null) {
            mentionsAdapterDelegate.needChangePanelVisibility(false);
        }
    }

    public TLRPC.TL_inlineBotSwitchPM getBotContextSwitch() {
        TLRPC.User user = this.foundContextBot;
        if (user == null || user.id == this.searchResultBotContextSwitchUserId) {
            return this.searchResultBotContextSwitch;
        }
        return null;
    }

    public TLRPC.TL_inlineBotWebView getBotWebViewSwitch() {
        return this.searchResultBotWebViewSwitch;
    }

    public long getContextBotId() {
        TLRPC.User user = this.foundContextBot;
        if (user != null) {
            return user.id;
        }
        return 0L;
    }

    public TLRPC.User getContextBotUser() {
        return this.foundContextBot;
    }

    public String getContextBotName() {
        TLRPC.User user = this.foundContextBot;
        return user != null ? user.username : _UrlKt.FRAGMENT_ENCODE_SET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processFoundUser(TLRPC.User user) {
        ChatActivity chatActivity;
        TLRPC.Chat currentChat;
        this.contextUsernameReqid = 0;
        this.locationProvider.stop();
        if (user != null && user.bot && user.bot_inline_placeholder != null) {
            this.foundContextBot = user;
            long j = user.id;
            if (j != this.searchResultBotContextSwitchUserId) {
                this.searchResultBotContextSwitch = null;
                this.searchResultBotContextSwitchUserId = j;
            }
            ChatActivity chatActivity2 = this.parentFragment;
            if (chatActivity2 != null && (currentChat = chatActivity2.getCurrentChat()) != null) {
                boolean zCanSendStickers = ChatObject.canSendStickers(currentChat);
                this.inlineMediaEnabled = zCanSendStickers;
                if (!zCanSendStickers) {
                    notifyDataSetChanged();
                    this.delegate.needChangePanelVisibility(true);
                    return;
                }
            }
            if (this.foundContextBot.bot_inline_geo) {
                if (!MessagesController.getNotificationsSettings(this.currentAccount).getBoolean("inlinegeo_" + this.foundContextBot.id, false) && (chatActivity = this.parentFragment) != null && chatActivity.getParentActivity() != null) {
                    final TLRPC.User user2 = this.foundContextBot;
                    AlertDialog.Builder builder = new AlertDialog.Builder(this.parentFragment.getParentActivity());
                    builder.setTitle(LocaleController.getString(C2573R.string.ShareYouLocationTitle));
                    builder.setMessage(LocaleController.getString(C2573R.string.ShareYouLocationInline));
                    final boolean[] zArr = new boolean[1];
                    builder.setPositiveButton(LocaleController.getString(C2573R.string.OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda0
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i) {
                            this.f$0.lambda$processFoundUser$2(zArr, user2, alertDialog, i);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda1
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i) {
                            this.f$0.lambda$processFoundUser$3(zArr, alertDialog, i);
                        }
                    });
                    this.parentFragment.showDialog(builder.create(), new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda2
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            this.f$0.lambda$processFoundUser$4(zArr, dialogInterface);
                        }
                    });
                } else {
                    checkLocationPermissionsOrStart();
                }
            }
        } else {
            this.foundContextBot = null;
            this.searchResultBotContextSwitch = null;
            this.inlineMediaEnabled = true;
        }
        if (this.foundContextBot == null) {
            this.noUserName = true;
            this.searchResultBotContextSwitch = null;
        } else {
            MentionsAdapterDelegate mentionsAdapterDelegate = this.delegate;
            if (mentionsAdapterDelegate != null) {
                mentionsAdapterDelegate.onContextSearch(true);
            }
            searchForContextBotResults(true, this.foundContextBot, this.searchingContextQuery, _UrlKt.FRAGMENT_ENCODE_SET);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processFoundUser$2(boolean[] zArr, TLRPC.User user, AlertDialog alertDialog, int i) {
        zArr[0] = true;
        if (user != null) {
            MessagesController.getNotificationsSettings(this.currentAccount).edit().putBoolean("inlinegeo_" + user.id, true).apply();
            checkLocationPermissionsOrStart();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processFoundUser$3(boolean[] zArr, AlertDialog alertDialog, int i) {
        zArr[0] = true;
        onLocationUnavailable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processFoundUser$4(boolean[] zArr, DialogInterface dialogInterface) {
        if (zArr[0]) {
            return;
        }
        onLocationUnavailable();
    }

    private void searchForContextBot(String str, String str2) {
        String str3;
        String str4;
        String str5;
        TLRPC.User user = this.foundContextBot;
        if (user == null || (str4 = user.username) == null || !str4.equals(str) || (str5 = this.searchingContextQuery) == null || !str5.equals(str2)) {
            if (this.foundContextBot != null) {
                if (!this.inlineMediaEnabled && str != null && str2 != null) {
                    return;
                } else {
                    this.delegate.needChangePanelVisibility(false);
                }
            }
            Runnable runnable = this.contextQueryRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.contextQueryRunnable = null;
            }
            if (TextUtils.isEmpty(str) || ((str3 = this.searchingContextUsername) != null && !str3.equals(str))) {
                if (this.contextUsernameReqid != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextUsernameReqid, true);
                    this.contextUsernameReqid = 0;
                }
                if (this.contextQueryReqid != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextQueryReqid, true);
                    this.contextQueryReqid = 0;
                }
                this.foundContextBot = null;
                this.searchResultBotContextSwitch = null;
                this.inlineMediaEnabled = true;
                this.searchingContextUsername = null;
                this.searchingContextQuery = null;
                this.locationProvider.stop();
                this.noUserName = false;
                MentionsAdapterDelegate mentionsAdapterDelegate = this.delegate;
                if (mentionsAdapterDelegate != null) {
                    mentionsAdapterDelegate.onContextSearch(false);
                }
                if (str == null || str.length() == 0) {
                    return;
                }
            }
            if (str2 == null) {
                if (this.contextQueryReqid != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextQueryReqid, true);
                    this.contextQueryReqid = 0;
                }
                this.searchingContextQuery = null;
                MentionsAdapterDelegate mentionsAdapterDelegate2 = this.delegate;
                if (mentionsAdapterDelegate2 != null) {
                    mentionsAdapterDelegate2.onContextSearch(false);
                    return;
                }
                return;
            }
            MentionsAdapterDelegate mentionsAdapterDelegate3 = this.delegate;
            if (mentionsAdapterDelegate3 != null) {
                if (this.foundContextBot != null) {
                    mentionsAdapterDelegate3.onContextSearch(true);
                } else if (str.equals("gif")) {
                    this.searchingContextUsername = "gif";
                    this.delegate.onContextSearch(false);
                }
            }
            MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            this.searchingContextQuery = str2;
            RunnableC28054 runnableC28054 = new RunnableC28054(str2, str, messagesController, messagesStorage);
            this.contextQueryRunnable = runnableC28054;
            AndroidUtilities.runOnUIThread(runnableC28054, 400L);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Adapters.MentionsAdapter$4 */
    public class RunnableC28054 implements Runnable {
        final /* synthetic */ MessagesController val$messagesController;
        final /* synthetic */ MessagesStorage val$messagesStorage;
        final /* synthetic */ String val$query;
        final /* synthetic */ String val$username;

        public RunnableC28054(String str, String str2, MessagesController messagesController, MessagesStorage messagesStorage) {
            this.val$query = str;
            this.val$username = str2;
            this.val$messagesController = messagesController;
            this.val$messagesStorage = messagesStorage;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MentionsAdapter.this.contextQueryRunnable != this) {
                return;
            }
            MentionsAdapter.this.contextQueryRunnable = null;
            if (MentionsAdapter.this.foundContextBot != null || MentionsAdapter.this.noUserName) {
                if (MentionsAdapter.this.noUserName) {
                    return;
                }
                MentionsAdapter mentionsAdapter = MentionsAdapter.this;
                mentionsAdapter.searchForContextBotResults(true, mentionsAdapter.foundContextBot, this.val$query, _UrlKt.FRAGMENT_ENCODE_SET);
                return;
            }
            MentionsAdapter.this.searchingContextUsername = this.val$username;
            TLObject userOrChat = this.val$messagesController.getUserOrChat(MentionsAdapter.this.searchingContextUsername);
            if (userOrChat instanceof TLRPC.User) {
                MentionsAdapter.this.processFoundUser((TLRPC.User) userOrChat);
                return;
            }
            TLRPC.TL_contacts_resolveUsername tL_contacts_resolveUsername = new TLRPC.TL_contacts_resolveUsername();
            tL_contacts_resolveUsername.username = MentionsAdapter.this.searchingContextUsername;
            MentionsAdapter mentionsAdapter2 = MentionsAdapter.this;
            ConnectionsManager connectionsManager = ConnectionsManager.getInstance(mentionsAdapter2.currentAccount);
            final String str = this.val$username;
            final MessagesController messagesController = this.val$messagesController;
            final MessagesStorage messagesStorage = this.val$messagesStorage;
            mentionsAdapter2.contextUsernameReqid = connectionsManager.sendRequest(tL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter$4$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$run$1(str, messagesController, messagesStorage, tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(final String str, final MessagesController messagesController, final MessagesStorage messagesStorage, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.MentionsAdapter$4$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0(str, tL_error, tLObject, messagesController, messagesStorage);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(String str, TLRPC.TL_error tL_error, TLObject tLObject, MessagesController messagesController, MessagesStorage messagesStorage) {
            if (MentionsAdapter.this.searchingContextUsername == null || !MentionsAdapter.this.searchingContextUsername.equals(str)) {
                return;
            }
            TLRPC.User user = null;
            if (tL_error == null) {
                TLRPC.TL_contacts_resolvedPeer tL_contacts_resolvedPeer = (TLRPC.TL_contacts_resolvedPeer) tLObject;
                if (!tL_contacts_resolvedPeer.users.isEmpty()) {
                    TLRPC.User user2 = tL_contacts_resolvedPeer.users.get(0);
                    messagesController.putUser(user2, false);
                    messagesStorage.putUsersAndChats(tL_contacts_resolvedPeer.users, null, true, true);
                    user = user2;
                }
            }
            MentionsAdapter.this.processFoundUser(user);
            MentionsAdapter.this.contextUsernameReqid = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLocationUnavailable() {
        TLRPC.User user = this.foundContextBot;
        if (user == null || !user.bot_inline_geo) {
            return;
        }
        Location location = new Location("network");
        this.lastKnownLocation = location;
        location.setLatitude(-1000.0d);
        this.lastKnownLocation.setLongitude(-1000.0d);
        searchForContextBotResults(true, this.foundContextBot, this.searchingContextQuery, _UrlKt.FRAGMENT_ENCODE_SET);
    }

    private void checkLocationPermissionsOrStart() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null || chatActivity.getParentActivity() == null) {
            return;
        }
        if (this.parentFragment.getParentActivity().checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
            this.parentFragment.getParentActivity().requestPermissions(new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"}, 2);
            return;
        }
        TLRPC.User user = this.foundContextBot;
        if (user == null || !user.bot_inline_geo) {
            return;
        }
        this.locationProvider.start();
    }

    public void setSearchingMentions(boolean z) {
        this.isSearchingMentions = z;
    }

    public String getBotCaption() {
        TLRPC.User user = this.foundContextBot;
        if (user != null) {
            return user.bot_inline_placeholder;
        }
        String str = this.searchingContextUsername;
        if (str == null || !str.equals("gif")) {
            return null;
        }
        return LocaleController.getString(C2573R.string.SearchGifsTitle);
    }

    public void searchForContextBotForNextOffset() {
        String str;
        TLRPC.User user;
        String str2;
        if (this.contextQueryReqid != 0 || (str = this.nextQueryOffset) == null || str.length() == 0 || (user = this.foundContextBot) == null || (str2 = this.searchingContextQuery) == null) {
            return;
        }
        searchForContextBotResults(true, user, str2, this.nextQueryOffset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void searchForContextBotResults(final boolean z, final TLRPC.User user, final String str, final String str2) {
        Location location;
        if (this.contextQueryReqid != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextQueryReqid, true);
            this.contextQueryReqid = 0;
        }
        if (!this.inlineMediaEnabled || !this.allowBots) {
            MentionsAdapterDelegate mentionsAdapterDelegate = this.delegate;
            if (mentionsAdapterDelegate != null) {
                mentionsAdapterDelegate.onContextSearch(false);
                return;
            }
            return;
        }
        if (str == null || user == null) {
            this.searchingContextQuery = null;
            return;
        }
        if (user.bot_inline_geo && this.lastKnownLocation == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.dialog_id);
        sb.append("_");
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        sb.append("_");
        sb.append(this.dialog_id);
        sb.append("_");
        sb.append(user.id);
        sb.append("_");
        sb.append((!user.bot_inline_geo || this.lastKnownLocation.getLatitude() == -1000.0d) ? _UrlKt.FRAGMENT_ENCODE_SET : Double.valueOf(this.lastKnownLocation.getLatitude() + this.lastKnownLocation.getLongitude()));
        final String string = sb.toString();
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda7
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$searchForContextBotResults$6(str, z, user, str2, messagesStorage, string, tLObject, tL_error);
            }
        };
        long j = user.id;
        if (j != this.searchResultBotContextSwitchUserId) {
            this.searchResultBotContextSwitch = null;
            this.searchResultBotContextSwitchUserId = j;
        }
        if (z) {
            messagesStorage.getBotCache(string, requestDelegate);
            return;
        }
        TLRPC.TL_messages_getInlineBotResults tL_messages_getInlineBotResults = new TLRPC.TL_messages_getInlineBotResults();
        tL_messages_getInlineBotResults.bot = MessagesController.getInstance(this.currentAccount).getInputUser(user);
        tL_messages_getInlineBotResults.query = str;
        tL_messages_getInlineBotResults.offset = str2;
        if (user.bot_inline_geo && (location = this.lastKnownLocation) != null && location.getLatitude() != -1000.0d) {
            tL_messages_getInlineBotResults.flags |= 1;
            TLRPC.TL_inputGeoPoint tL_inputGeoPoint = new TLRPC.TL_inputGeoPoint();
            tL_messages_getInlineBotResults.geo_point = tL_inputGeoPoint;
            tL_inputGeoPoint.lat = AndroidUtilities.fixLocationCoord(this.lastKnownLocation.getLatitude());
            tL_messages_getInlineBotResults.geo_point._long = AndroidUtilities.fixLocationCoord(this.lastKnownLocation.getLongitude());
        }
        if (DialogObject.isEncryptedDialog(this.dialog_id)) {
            tL_messages_getInlineBotResults.peer = new TLRPC.TL_inputPeerEmpty();
        } else {
            tL_messages_getInlineBotResults.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialog_id);
        }
        this.contextQueryReqid = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getInlineBotResults, requestDelegate, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchForContextBotResults$6(final String str, final boolean z, final TLRPC.User user, final String str2, final MessagesStorage messagesStorage, final String str3, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchForContextBotResults$5(str, z, tLObject, user, str2, messagesStorage, str3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchForContextBotResults$5(String str, boolean z, TLObject tLObject, TLRPC.User user, String str2, MessagesStorage messagesStorage, String str3) {
        boolean z2;
        if (str.equals(this.searchingContextQuery)) {
            this.contextQueryReqid = 0;
            if (z && tLObject == null) {
                searchForContextBotResults(false, user, str, str2);
            } else {
                MentionsAdapterDelegate mentionsAdapterDelegate = this.delegate;
                if (mentionsAdapterDelegate != null) {
                    mentionsAdapterDelegate.onContextSearch(false);
                }
            }
            if (tLObject instanceof TLRPC.TL_messages_botResults) {
                TLRPC.TL_messages_botResults tL_messages_botResults = (TLRPC.TL_messages_botResults) tLObject;
                if (!z && tL_messages_botResults.cache_time != 0) {
                    messagesStorage.saveBotCache(str3, tL_messages_botResults);
                }
                this.nextQueryOffset = tL_messages_botResults.next_offset;
                if (this.searchResultBotContextSwitch == null) {
                    this.searchResultBotContextSwitch = tL_messages_botResults.switch_pm;
                }
                this.searchResultBotWebViewSwitch = tL_messages_botResults.switch_webview;
                int i = 0;
                while (i < tL_messages_botResults.results.size()) {
                    TLRPC.BotInlineResult botInlineResult = tL_messages_botResults.results.get(i);
                    if (!(botInlineResult.document instanceof TLRPC.TL_document) && !(botInlineResult.photo instanceof TLRPC.TL_photo) && !"game".equals(botInlineResult.type) && botInlineResult.content == null && (botInlineResult.send_message instanceof TLRPC.TL_botInlineMessageMediaAuto)) {
                        tL_messages_botResults.results.remove(i);
                        i--;
                    }
                    botInlineResult.query_id = tL_messages_botResults.query_id;
                    i++;
                }
                if (this.searchResultBotContext == null || str2.length() == 0) {
                    this.searchResultBotContext = tL_messages_botResults.results;
                    this.contextMedia = tL_messages_botResults.gallery;
                    z2 = false;
                } else {
                    this.searchResultBotContext.addAll(tL_messages_botResults.results);
                    if (tL_messages_botResults.results.isEmpty()) {
                        this.nextQueryOffset = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    z2 = true;
                }
                Runnable runnable = this.cancelDelayRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                    this.cancelDelayRunnable = null;
                }
                this.searchResultHashtags = null;
                this.stickers = null;
                this.searchResultUsernames = null;
                this.searchResultUsernamesMap = null;
                this.searchResultCommands = null;
                this.searchResultCommandsEphemeral = null;
                this.quickReplies = null;
                this.searchResultSuggestions = null;
                this.searchResultCommandsHelp = null;
                this.searchResultCommandsUsers = null;
                this.visibleByStickersSearch = false;
                this.delegate.needChangePanelVisibility((this.searchResultBotContext.isEmpty() && this.searchResultBotContextSwitch == null && this.searchResultBotWebViewSwitch == null) ? false : true);
                if (z2) {
                    int i2 = (this.searchResultBotContextSwitch == null && this.searchResultBotWebViewSwitch == null) ? 0 : 1;
                    notifyItemChanged(((this.searchResultBotContext.size() - tL_messages_botResults.results.size()) + i2) - 1);
                    notifyItemRangeInserted((this.searchResultBotContext.size() - tL_messages_botResults.results.size()) + i2, tL_messages_botResults.results.size());
                    return;
                }
                notifyDataSetChanged();
            }
        }
    }

    private static ArrayList<TLRPC.TL_topPeer> sortAndDeduplicateTopPeers(ArrayList<TLRPC.TL_topPeer> arrayList) {
        arrayList.sort(new Comparator() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda9
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Double.compare(((TLRPC.TL_topPeer) obj2).rating, ((TLRPC.TL_topPeer) obj).rating);
            }
        });
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.TL_topPeer tL_topPeer = arrayList.get(i);
            i++;
            TLRPC.TL_topPeer tL_topPeer2 = tL_topPeer;
            linkedHashMap.putIfAbsent(Long.valueOf(DialogObject.getPeerDialogId(tL_topPeer2.peer)), tL_topPeer2);
        }
        return new ArrayList<>(linkedHashMap.values());
    }

    /* JADX WARN: Code restructure failed: missing block: B:235:0x03f4, code lost:
    
        if (r9 != false) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x03f8, code lost:
    
        if (r25.info != null) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x03fa, code lost:
    
        if (r12 == 0) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x03fc, code lost:
    
        r25.lastText = r7;
        r25.lastPosition = r3;
        r25.messages = r4;
        r25.delegate.needChangePanelVisibility(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0408, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0409, code lost:
    
        r25.resultStartPosition = r12;
        r25.resultLength = r13.length() + 1;
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x049e, code lost:
    
        r25.resultStartPosition = r12;
        r25.resultLength = r13.length() + r14;
        r0 = 3;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:224:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x04cb  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x04cf  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x04e1  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x04ec  */
    /* JADX WARN: Removed duplicated region for block: B:406:0x06d3  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x06e0  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x06e8  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x06f2  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0712 A[PHI: r22
  0x0712: PHI (r22v7 boolean) = (r22v6 boolean), (r22v6 boolean), (r22v6 boolean), (r22v8 boolean) binds: [B:420:0x0710, B:417:0x0700, B:413:0x06f0, B:407:0x06dd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r14v20, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v48 */
    /* JADX WARN: Type inference failed for: r14v70 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24, types: [androidx.collection.LongSparseArray<org.telegram.tgnet.TLObject>, java.util.ArrayList<java.lang.String>, java.util.ArrayList<org.telegram.messenger.MediaDataController$KeywordResult>, java.util.ArrayList<org.telegram.tgnet.TLObject>, java.util.ArrayList<org.telegram.tgnet.TLRPC$BotInlineResult>, java.util.ArrayList<org.telegram.ui.Adapters.MentionsAdapter$StickerResult>] */
    /* JADX WARN: Type inference failed for: r6v43 */
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
    /* JADX INFO: renamed from: searchUsernameOrHashtag, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void lambda$searchUsernameOrHashtag$8(final CharSequence charSequence, int i, ArrayList<MessageObject> arrayList, final boolean z, final boolean z2) {
        boolean z3;
        String str;
        final int i2;
        final ArrayList<MessageObject> arrayList2;
        String str2;
        ChatActivity chatActivity;
        byte b2;
        int i3;
        String strSubstring;
        String strSubstring2;
        boolean z4;
        int i4;
        ?? r14;
        HashtagHint hashtagHint;
        HashtagHint hashtagHint2;
        ?? r6;
        ArrayList<QuickRepliesController.QuickReply> arrayList3;
        String str3;
        String str4;
        long j;
        long threadId;
        TLRPC.Chat chat;
        TLRPC.ChatFull chatFull;
        int i5;
        long j2;
        TLRPC.User user;
        String str5;
        String publicUsername;
        String str6;
        long j3;
        boolean z5;
        Object obj;
        int i6;
        boolean z6;
        boolean z7;
        String str7 = _UrlKt.FRAGMENT_ENCODE_SET;
        String string = charSequence == null ? _UrlKt.FRAGMENT_ENCODE_SET : charSequence.toString();
        TLRPC.Chat currentChat = this.chat;
        ChatActivity chatActivity2 = this.parentFragment;
        if (chatActivity2 != null) {
            currentChat = chatActivity2.getCurrentChat();
            this.parentFragment.getCurrentUser();
        }
        TLRPC.Chat chat2 = currentChat;
        Runnable runnable = this.cancelDelayRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.cancelDelayRunnable = null;
        }
        if (this.channelReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.channelReqId, true);
            this.channelReqId = 0;
        }
        Runnable runnable2 = this.searchGlobalRunnable;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
            this.searchGlobalRunnable = null;
        }
        Runnable runnable3 = this.checkAgainRunnable;
        if (runnable3 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable3);
            this.checkAgainRunnable = null;
        }
        if (TextUtils.isEmpty(string) || string.length() > MessagesController.getInstance(this.currentAccount).getMaxMessageLength()) {
            searchForContextBot(null, null);
            this.delegate.needChangePanelVisibility(false);
            this.lastText = null;
            clearStickers();
            return;
        }
        int i7 = string.length() > 0 ? i - 1 : i;
        this.lastText = null;
        this.lastUsernameOnly = z;
        this.lastForSearch = z2;
        StringBuilder sb = new StringBuilder();
        boolean z8 = !z && string.length() > 0 && string.length() <= 14;
        if (!z8) {
            z3 = true;
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            int length = string.length();
            z3 = true;
            int i8 = 0;
            CharSequence charSequenceConcat = string;
            while (i8 < length) {
                char cCharAt = charSequenceConcat.charAt(i8);
                int i9 = length - 1;
                char cCharAt2 = i8 < i9 ? charSequenceConcat.charAt(i8 + 1) : (char) 0;
                if (i8 < i9 && cCharAt == 55356 && cCharAt2 >= 57339 && cCharAt2 <= 57343) {
                    charSequenceConcat = TextUtils.concat(charSequenceConcat.subSequence(0, i8), charSequenceConcat.subSequence(i8 + 2, charSequenceConcat.length()));
                    length -= 2;
                } else if (cCharAt == 65039) {
                    charSequenceConcat = TextUtils.concat(charSequenceConcat.subSequence(0, i8), charSequenceConcat.subSequence(i8 + 1, charSequenceConcat.length()));
                    length--;
                } else {
                    i8++;
                }
                i8--;
                i8++;
            }
            this.lastSticker = charSequenceConcat.toString().trim();
            str = string;
        }
        boolean z9 = (z8 && (Emoji.isValidEmoji(str) || Emoji.isValidEmoji(this.lastSticker))) ? z3 : false;
        if (z9 && (charSequence instanceof Spanned)) {
            AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), AnimatedEmojiSpan.class);
            z9 = (animatedEmojiSpanArr == null || animatedEmojiSpanArr.length == 0) ? z3 : false;
        }
        if (this.allowStickers && z9 && (chat2 == null || ChatObject.canSendStickers(chat2))) {
            this.stickersToLoad.clear();
            int i10 = SharedConfig.suggestStickers;
            if (i10 == 2 || !z9) {
                if (this.visibleByStickersSearch && i10 == 2) {
                    this.visibleByStickersSearch = false;
                    this.delegate.needChangePanelVisibility(false);
                    notifyDataSetChanged();
                    return;
                }
                return;
            }
            this.stickers = null;
            this.stickersMap = null;
            if (this.lastReqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.lastReqId, z3);
                z6 = false;
                this.lastReqId = 0;
            } else {
                z6 = false;
            }
            boolean z10 = MessagesController.getInstance(this.currentAccount).suggestStickersApiOnly;
            this.delayLocalResults = z6;
            if (z10) {
                arrayList2 = arrayList;
                z7 = z10;
                i2 = i;
            } else {
                boolean z11 = z6;
                arrayList2 = arrayList;
                z7 = z10;
                i2 = i;
                this.checkAgainRunnable = new Runnable() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$searchUsernameOrHashtag$8(charSequence, i2, arrayList2, z, z2);
                    }
                };
                MediaDataController.getInstance(this.currentAccount).loadRecents(z11 ? 1 : 0, z11, true, z11);
                MediaDataController.getInstance(this.currentAccount).loadRecents(2, z11, true, z11);
                final ArrayList<TLRPC.Document> recentStickersNoCopy = MediaDataController.getInstance(this.currentAccount).getRecentStickersNoCopy(z11 ? 1 : 0);
                final ArrayList<TLRPC.Document> recentStickersNoCopy2 = MediaDataController.getInstance(this.currentAccount).getRecentStickersNoCopy(2);
                int iMin = Math.min(20, recentStickersNoCopy.size());
                int i11 = 0;
                for (int i12 = 0; i12 < iMin; i12++) {
                    TLRPC.Document document = recentStickersNoCopy.get(i12);
                    if (isValidSticker(document, this.lastSticker)) {
                        addStickerToResult(document, "recent");
                        i11++;
                        if (i11 >= 5) {
                            break;
                        }
                    }
                }
                int size = recentStickersNoCopy2.size();
                for (int i13 = 0; i13 < size; i13++) {
                    TLRPC.Document document2 = recentStickersNoCopy2.get(i13);
                    if (isValidSticker(document2, this.lastSticker)) {
                        addStickerToResult(document2, "fav");
                    }
                }
                MediaDataController.getInstance(this.currentAccount).checkStickers(0);
                HashMap<String, ArrayList<TLRPC.Document>> allStickers = MediaDataController.getInstance(this.currentAccount).getAllStickers();
                ArrayList<TLRPC.Document> arrayList4 = allStickers != null ? allStickers.get(this.lastSticker) : null;
                if (arrayList4 != null && !arrayList4.isEmpty()) {
                    addStickersToResult(arrayList4, null);
                }
                ArrayList<StickerResult> arrayList5 = this.stickers;
                if (arrayList5 != null) {
                    Collections.sort(arrayList5, new Comparator<StickerResult>() { // from class: org.telegram.ui.Adapters.MentionsAdapter.5
                        private int getIndex(StickerResult stickerResult) {
                            for (int i14 = 0; i14 < recentStickersNoCopy2.size(); i14++) {
                                if (((TLRPC.Document) recentStickersNoCopy2.get(i14)).id == stickerResult.sticker.id) {
                                    return i14 + 2000000;
                                }
                            }
                            for (int i15 = 0; i15 < Math.min(20, recentStickersNoCopy.size()); i15++) {
                                if (((TLRPC.Document) recentStickersNoCopy.get(i15)).id == stickerResult.sticker.id) {
                                    return (recentStickersNoCopy.size() - i15) + DurationKt.NANOS_IN_MILLIS;
                                }
                            }
                            return -1;
                        }

                        @Override // java.util.Comparator
                        public int compare(StickerResult stickerResult, StickerResult stickerResult2) {
                            boolean zIsAnimatedStickerDocument = MessageObject.isAnimatedStickerDocument(stickerResult.sticker, true);
                            if (zIsAnimatedStickerDocument != MessageObject.isAnimatedStickerDocument(stickerResult2.sticker, true)) {
                                return zIsAnimatedStickerDocument ? -1 : 1;
                            }
                            int index = getIndex(stickerResult);
                            int index2 = getIndex(stickerResult2);
                            if (index > index2) {
                                return -1;
                            }
                            return index < index2 ? 1 : 0;
                        }
                    });
                }
            }
            if (SharedConfig.suggestStickers == 0 || z7) {
                searchServerStickers(this.lastSticker, str);
            }
            ArrayList<StickerResult> arrayList6 = this.stickers;
            if (arrayList6 != null && !arrayList6.isEmpty()) {
                if (SharedConfig.suggestStickers == 0 && this.stickers.size() < 5) {
                    this.delayLocalResults = true;
                    this.delegate.needChangePanelVisibility(false);
                    this.visibleByStickersSearch = false;
                } else {
                    checkStickerFilesExistAndDownload();
                    this.delegate.needChangePanelVisibility(this.stickersToLoad.isEmpty());
                    this.visibleByStickersSearch = true;
                }
                notifyDataSetChanged();
            } else {
                if (this.visibleByStickersSearch) {
                    this.delegate.needChangePanelVisibility(false);
                    this.visibleByStickersSearch = false;
                }
                b2 = 4;
                str2 = null;
            }
            b2 = 4;
            str2 = null;
        } else {
            i2 = i;
            arrayList2 = arrayList;
            if (!z && this.needBotContext && string.charAt(0) == '@') {
                int iIndexOf = string.indexOf(32);
                int length2 = string.length();
                if (iIndexOf > 0) {
                    String strSubstring3 = string.substring(1, iIndexOf);
                    strSubstring2 = string.substring(iIndexOf + 1);
                    strSubstring = strSubstring3;
                    i3 = 1;
                } else if (string.charAt(length2 - 1) == 't' && string.charAt(length2 - 2) == 'o' && string.charAt(length2 - 3) == 'b') {
                    i3 = 1;
                    strSubstring = string.substring(1);
                    strSubstring2 = _UrlKt.FRAGMENT_ENCODE_SET;
                } else {
                    i3 = 1;
                    searchForContextBot(null, null);
                    strSubstring = null;
                    strSubstring2 = null;
                }
                if (strSubstring != null && strSubstring.length() >= i3) {
                    int i14 = 1;
                    while (true) {
                        if (i14 >= strSubstring.length()) {
                            str7 = strSubstring;
                            break;
                        }
                        char cCharAt3 = strSubstring.charAt(i14);
                        if ((cCharAt3 < '0' || cCharAt3 > '9') && ((cCharAt3 < 'a' || cCharAt3 > 'z') && ((cCharAt3 < 'A' || cCharAt3 > 'Z') && cCharAt3 != '_'))) {
                            break;
                        } else {
                            i14++;
                        }
                    }
                }
                searchForContextBot(str7, strSubstring2);
                str2 = null;
            } else if (this.allowStickers && (chatActivity = this.parentFragment) != null && chatActivity.getCurrentEncryptedChat() == null && ((chat2 == null || ChatObject.canSendStickers(chat2)) && string.trim().length() >= 2 && string.trim().indexOf(32) < 0)) {
                str2 = null;
                searchForContextBot(null, null);
            } else {
                str2 = null;
                searchForContextBot(null, null);
            }
            b2 = -1;
        }
        if (this.foundContextBot != null) {
            return;
        }
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        String str8 = this.hintHashtag;
        this.hintHashtag = str2;
        this.hintHashtagDivider = false;
        if (z) {
            sb.append(string.substring(1));
            this.resultStartPosition = 0;
            this.resultLength = sb.length();
            b2 = 0;
        } else {
            while (true) {
                if (i7 < 0) {
                    z4 = false;
                    break;
                }
                if (i7 < string.length()) {
                    char cCharAt4 = string.charAt(i7);
                    if (i7 != 0) {
                        int i15 = i7 - 1;
                        if (string.charAt(i15) == ' ' || string.charAt(i15) == '\n' || cCharAt4 == ':') {
                            if (cCharAt4 == '@') {
                                boolean z12 = this.searchInDialogs;
                                if (z12 || this.needUsernames || (this.needBotContext && i7 == 0)) {
                                    break;
                                }
                            } else if (cCharAt4 == '#') {
                                if (ChatObject.isChannelAndNotMegaGroup(chat2) && !TextUtils.isEmpty(ChatObject.getPublicUsername(chat2))) {
                                    String strSubstring4 = string.substring(i7);
                                    this.hintHashtag = strSubstring4;
                                    if (strSubstring4.length() < 4 || !this.hintHashtag.matches("^[#$][\\p{L}_-]+$")) {
                                        this.hintHashtag = null;
                                    }
                                }
                                if (this.searchAdapterHelper.loadRecentHashtags()) {
                                    this.resultStartPosition = i7;
                                    this.resultLength = sb.length() + 1;
                                    z4 = false;
                                    sb.insert(0, cCharAt4);
                                    b2 = 1;
                                } else {
                                    this.lastText = string;
                                    this.lastPosition = i2;
                                    this.messages = arrayList2;
                                    return;
                                }
                            } else if (i7 == 0 && this.botInfo != null && cCharAt4 == '/') {
                                this.resultStartPosition = i7;
                                this.resultLength = sb.length() + 1;
                                b2 = 2;
                                break;
                            } else if (cCharAt4 == ':' && sb.length() > 0) {
                                if (" !\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~\n".indexOf(sb.charAt(0)) >= 0) {
                                    i4 = 1;
                                    if (sb.length() > 1) {
                                        break;
                                    }
                                } else {
                                    i4 = 1;
                                    break;
                                }
                            }
                        }
                        sb.insert(0, cCharAt4);
                    }
                    if (str8 == null && this.hintHashtag != null) {
                        notifyItemRangeInserted(r14, 2);
                    } else if (str8 == null && this.hintHashtag == null) {
                        notifyItemRangeRemoved(r14, 2);
                    } else {
                        hashtagHint = this.topHint;
                        if (hashtagHint != 0) {
                            hashtagHint.set(r14, this.hintHashtag, chat2);
                        }
                        hashtagHint2 = this.bottomHint;
                        if (hashtagHint2 != null) {
                            hashtagHint2.set(1, this.hintHashtag, chat2);
                        }
                    }
                    if (b2 == -1) {
                        this.contextMedia = r14;
                        this.searchResultBotContext = null;
                        this.delegate.needChangePanelVisibility(r14);
                        return;
                    }
                    if (b2 != 0) {
                        if (b2 == 1) {
                            ArrayList<String> arrayList7 = new ArrayList<>();
                            String lowerCase = sb.toString().toLowerCase();
                            ArrayList<SearchAdapterHelper.HashtagObject> hashtags = this.searchAdapterHelper.getHashtags();
                            for (int i16 = 0; i16 < hashtags.size(); i16++) {
                                SearchAdapterHelper.HashtagObject hashtagObject = hashtags.get(i16);
                                if (hashtagObject != null && (str4 = hashtagObject.hashtag) != null && str4.startsWith(lowerCase)) {
                                    arrayList7.add(hashtagObject.hashtag);
                                }
                            }
                            this.searchResultHashtags = arrayList7;
                            this.stickers = null;
                            this.searchResultUsernames = null;
                            this.searchResultUsernamesMap = null;
                            this.quickReplies = null;
                            this.searchResultCommands = null;
                            this.searchResultCommandsEphemeral = null;
                            this.searchResultCommandsHelp = null;
                            this.searchResultCommandsUsers = null;
                            this.searchResultSuggestions = null;
                            this.contextMedia = false;
                            this.searchResultBotContext = null;
                            notifyDataSetChanged();
                            this.delegate.needChangePanelVisibility((this.searchResultHashtags.isEmpty() && this.hintHashtag == null) ? false : true);
                            return;
                        }
                        if (b2 != 2) {
                            if (b2 == 3) {
                                String[] currentKeyboardLanguage = AndroidUtilities.getCurrentKeyboardLanguage();
                                if (!Arrays.equals(currentKeyboardLanguage, this.lastSearchKeyboardLanguage)) {
                                    MediaDataController.getInstance(this.currentAccount).fetchNewEmojiKeywords(currentKeyboardLanguage);
                                }
                                this.lastSearchKeyboardLanguage = currentKeyboardLanguage;
                                MediaDataController.getInstance(this.currentAccount).getEmojiSuggestions(this.lastSearchKeyboardLanguage, sb.toString(), false, new MediaDataController.KeywordResultCallback() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda5
                                    @Override // org.telegram.messenger.MediaDataController.KeywordResultCallback
                                    public final void run(ArrayList arrayList8, String str9) {
                                        this.f$0.lambda$searchUsernameOrHashtag$10(arrayList8, str9);
                                    }
                                }, SharedConfig.suggestAnimatedEmoji && UserConfig.getInstance(this.currentAccount).isPremium());
                                return;
                            }
                            if (b2 == 4) {
                                this.searchResultHashtags = null;
                                this.searchResultUsernames = null;
                                this.searchResultUsernamesMap = null;
                                this.searchResultSuggestions = null;
                                this.searchResultCommands = null;
                                this.searchResultCommandsEphemeral = null;
                                this.quickReplies = null;
                                this.searchResultCommandsHelp = null;
                                this.searchResultCommandsUsers = null;
                                return;
                            }
                            return;
                        }
                        ArrayList<String> arrayList8 = new ArrayList<>();
                        ArrayList<String> arrayList9 = new ArrayList<>();
                        ArrayList<TLRPC.User> arrayList10 = new ArrayList<>();
                        ArrayList<Boolean> arrayList11 = new ArrayList<>();
                        String lowerCase2 = sb.toString().toLowerCase();
                        for (int i17 = 0; i17 < this.botInfo.size(); i17++) {
                            TL_bots.BotInfo botInfoValueAt = this.botInfo.valueAt(i17);
                            for (int i18 = 0; i18 < botInfoValueAt.commands.size(); i18++) {
                                TLRPC.BotCommand botCommand = botInfoValueAt.commands.get(i18);
                                if (botCommand != null && (str3 = botCommand.command) != null && str3.startsWith(lowerCase2)) {
                                    arrayList8.add("/" + botCommand.command);
                                    arrayList9.add(botCommand.description);
                                    arrayList10.add(messagesController.getUser(Long.valueOf(botInfoValueAt.user_id)));
                                    arrayList11.add(Boolean.valueOf(botCommand.ephemeral));
                                }
                            }
                        }
                        if (this.parentFragment != null && !DialogObject.isEncryptedDialog(this.dialog_id) && this.parentFragment.getChatMode() == 0 && this.parentFragment.getCurrentUser() != null && !this.parentFragment.getCurrentUser().bot && !UserObject.isReplyUser(this.parentFragment.getCurrentUser()) && !UserObject.isService(this.parentFragment.getCurrentUser().id)) {
                            QuickRepliesController quickRepliesController = QuickRepliesController.getInstance(this.currentAccount);
                            quickRepliesController.load();
                            this.quickRepliesQuery = lowerCase2;
                            this.quickReplies = new ArrayList<>();
                            for (int i19 = 0; i19 < quickRepliesController.replies.size(); i19++) {
                                QuickRepliesController.QuickReply quickReply = quickRepliesController.replies.get(i19);
                                if (!quickReply.isSpecial()) {
                                    String lowerCase3 = quickReply.name.toLowerCase();
                                    if (lowerCase3.startsWith(lowerCase2) || AndroidUtilities.translitSafe(lowerCase3).startsWith(lowerCase2)) {
                                        this.quickReplies.add(quickReply);
                                    }
                                }
                            }
                            r6 = 0;
                        } else {
                            r6 = 0;
                            this.quickRepliesQuery = null;
                            this.quickReplies = null;
                        }
                        this.searchResultHashtags = r6;
                        this.stickers = r6;
                        this.searchResultUsernames = r6;
                        this.searchResultUsernamesMap = r6;
                        this.searchResultSuggestions = r6;
                        this.searchResultCommands = arrayList8;
                        this.searchResultCommandsHelp = arrayList9;
                        this.searchResultCommandsUsers = arrayList10;
                        this.searchResultCommandsEphemeral = arrayList11;
                        this.contextMedia = false;
                        this.searchResultBotContext = r6;
                        notifyDataSetChanged();
                        this.delegate.needChangePanelVisibility((arrayList8.isEmpty() && ((arrayList3 = this.quickReplies) == null || arrayList3.isEmpty())) ? false : true);
                        return;
                    }
                    this.contextMedia = r14;
                    this.searchResultBotContext = null;
                    final ArrayList arrayList12 = new ArrayList();
                    if (arrayList2 != null) {
                        for (int i20 = 0; i20 < Math.min(100, arrayList2.size()); i20++) {
                            long fromChatId = arrayList2.get(i20).getFromChatId();
                            if (fromChatId > 0 && !arrayList12.contains(Long.valueOf(fromChatId))) {
                                arrayList12.add(Long.valueOf(fromChatId));
                            }
                        }
                    }
                    String lowerCase4 = sb.toString().toLowerCase();
                    boolean z13 = lowerCase4.indexOf(32) >= 0;
                    long j4 = 0;
                    final ArrayList arrayList13 = new ArrayList();
                    final LongSparseArray longSparseArray = new LongSparseArray();
                    final LongSparseArray longSparseArray2 = new LongSparseArray();
                    ArrayList arrayList14 = new ArrayList();
                    arrayList14.addAll(MediaDataController.getInstance(this.currentAccount).inlineBots);
                    if (chat2 == null || (!ChatObject.isMonoForum(chat2) && !ChatObject.isChannelAndNotMegaGroup(chat2))) {
                        arrayList14.addAll(MediaDataController.getInstance(this.currentAccount).guestBots);
                    }
                    ArrayList<TLRPC.TL_topPeer> arrayListSortAndDeduplicateTopPeers = sortAndDeduplicateTopPeers(arrayList14);
                    if (z || !this.needBotContext || i7 != 0 || arrayListSortAndDeduplicateTopPeers.isEmpty()) {
                        j = j4;
                    } else {
                        int i21 = 0;
                        int i22 = 0;
                        while (i21 < arrayListSortAndDeduplicateTopPeers.size()) {
                            j = j4;
                            TLRPC.User user2 = messagesController.getUser(Long.valueOf(arrayListSortAndDeduplicateTopPeers.get(i21).peer.user_id));
                            if (user2 != null) {
                                String publicUsername2 = UserObject.getPublicUsername(user2);
                                if (TextUtils.isEmpty(publicUsername2) || !((lowerCase4.length() == 0 || publicUsername2.toLowerCase().startsWith(lowerCase4)) && addUserResult(arrayList13, longSparseArray, user2))) {
                                    i6 = i21;
                                } else {
                                    i6 = i21;
                                    longSparseArray2.put(user2.id, user2);
                                    i22++;
                                }
                                if (i22 == 5) {
                                    break;
                                }
                            } else {
                                i6 = i21;
                            }
                            i21 = i6 + 1;
                            j4 = j;
                        }
                        j = j4;
                    }
                    ChatActivity chatActivity3 = this.parentFragment;
                    if (chatActivity3 != null) {
                        chat2 = chatActivity3.getCurrentChat();
                        threadId = this.parentFragment.getThreadId();
                    } else {
                        TLRPC.ChatFull chatFull2 = this.info;
                        if (chatFull2 != null) {
                            chat2 = messagesController.getChat(Long.valueOf(chatFull2.id));
                        }
                        threadId = j;
                    }
                    TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
                    if (chat2 != null && (chatFull = this.info) != null && chatFull.participants != null && (!ChatObject.isChannel(chat2) || chat2.megagroup)) {
                        int i23 = -2;
                        int i24 = -2;
                        while (i24 < this.info.participants.participants.size()) {
                            if (i24 != i23) {
                                i5 = i24;
                                if (i5 == -1) {
                                    if (z2) {
                                        if (lowerCase4.length() == 0) {
                                            addChatResult(arrayList13, longSparseArray, chat2);
                                        } else {
                                            str5 = chat2.title;
                                            publicUsername = ChatObject.getPublicUsername(chat2);
                                            j2 = threadId;
                                            j3 = -chat2.id;
                                            str6 = null;
                                            obj = chat2;
                                            if (TextUtils.isEmpty(publicUsername)) {
                                            }
                                            if (TextUtils.isEmpty(str5)) {
                                            }
                                        }
                                    }
                                    z5 = z13;
                                    j2 = threadId;
                                } else {
                                    j2 = threadId;
                                    TLRPC.ChatParticipant chatParticipant = this.info.participants.participants.get(i5);
                                    if ((currentUser == null || chatParticipant.user_id != currentUser.id) && (user = messagesController.getUser(Long.valueOf(chatParticipant.user_id))) != null && !UserObject.isUserSelf(user) && longSparseArray.indexOfKey(user.id) < 0) {
                                        if (lowerCase4.length() == 0 && !user.deleted) {
                                            addUserResult(arrayList13, longSparseArray, user);
                                        } else {
                                            str5 = user.first_name;
                                            String str9 = user.last_name;
                                            publicUsername = UserObject.getPublicUsername(user);
                                            str6 = str9;
                                            j3 = user.id;
                                            obj = user;
                                            if (TextUtils.isEmpty(publicUsername)) {
                                            }
                                            if (TextUtils.isEmpty(str5)) {
                                            }
                                        }
                                    }
                                    z5 = z13;
                                }
                            } else if (currentUser == null || !z) {
                                z5 = z13;
                                j2 = threadId;
                                i5 = i24;
                            } else {
                                str5 = currentUser.first_name;
                                String str10 = currentUser.last_name;
                                publicUsername = UserObject.getPublicUsername(currentUser);
                                i5 = i24;
                                j2 = threadId;
                                j3 = currentUser.id;
                                str6 = str10;
                                obj = currentUser;
                                if (TextUtils.isEmpty(publicUsername)) {
                                    z5 = z13;
                                } else {
                                    z5 = z13;
                                    if (publicUsername.toLowerCase().startsWith(lowerCase4)) {
                                        if (obj instanceof TLRPC.User) {
                                            if (addUserResult(arrayList13, longSparseArray, (TLRPC.User) obj)) {
                                                longSparseArray2.put(j3, obj);
                                            }
                                        } else if ((obj instanceof TLRPC.Chat) && addChatResult(arrayList13, longSparseArray, (TLRPC.Chat) obj)) {
                                            longSparseArray2.put(j3, obj);
                                        }
                                    }
                                }
                                if ((TextUtils.isEmpty(str5) || !str5.toLowerCase().startsWith(lowerCase4)) && ((TextUtils.isEmpty(str6) || !str6.toLowerCase().startsWith(lowerCase4)) && (!z5 || !ContactsController.formatName(str5, str6).toLowerCase().startsWith(lowerCase4)))) {
                                }
                            }
                            i24 = i5 + 1;
                            threadId = j2;
                            z13 = z5;
                            i23 = -2;
                        }
                    }
                    boolean z14 = z13;
                    long j5 = threadId;
                    if (this.searchInDialogs) {
                        ArrayList<TLRPC.Dialog> allDialogs = MessagesController.getInstance(this.currentAccount).getAllDialogs();
                        for (int i25 = 0; i25 < allDialogs.size(); i25++) {
                            if (allDialogs.get(i25).id > j) {
                                TLRPC.User user3 = messagesController.getUser(Long.valueOf(allDialogs.get(i25).id));
                                if (user3 != null && !UserObject.isUserSelf(user3) && longSparseArray.indexOfKey(user3.id) < 0) {
                                    if (lowerCase4.length() == 0 && !user3.deleted) {
                                        addUserResult(arrayList13, longSparseArray, user3);
                                    } else {
                                        String str11 = user3.first_name;
                                        String str12 = user3.last_name;
                                        String publicUsername3 = UserObject.getPublicUsername(user3);
                                        long j6 = user3.id;
                                        if (((!TextUtils.isEmpty(publicUsername3) && publicUsername3.toLowerCase().startsWith(lowerCase4)) || ((!TextUtils.isEmpty(str11) && str11.toLowerCase().startsWith(lowerCase4)) || ((!TextUtils.isEmpty(str12) && str12.toLowerCase().startsWith(lowerCase4)) || (z14 && ContactsController.formatName(str11, str12).toLowerCase().startsWith(lowerCase4))))) && addUserResult(arrayList13, longSparseArray, user3)) {
                                            longSparseArray2.put(j6, user3);
                                        }
                                    }
                                }
                            } else if (!TextUtils.isEmpty(lowerCase4) && (chat = messagesController.getChat(Long.valueOf(-allDialogs.get(i25).id))) != null && chat.username != null && longSparseArray.indexOfKey(-chat.id) < 0) {
                                if (lowerCase4.length() == 0) {
                                    addChatResult(arrayList13, longSparseArray, chat);
                                } else {
                                    String str13 = chat.title;
                                    String str14 = chat.username;
                                    if (((!TextUtils.isEmpty(str14) && str14.toLowerCase().startsWith(lowerCase4)) || (!TextUtils.isEmpty(str13) && str13.toLowerCase().startsWith(lowerCase4))) && addChatResult(arrayList13, longSparseArray, chat)) {
                                        longSparseArray2.put(-chat.id, chat);
                                    }
                                }
                            }
                        }
                    }
                    Collections.sort(arrayList13, new Comparator<TLObject>() { // from class: org.telegram.ui.Adapters.MentionsAdapter.6
                        private long getId(TLObject tLObject) {
                            if (tLObject instanceof TLRPC.User) {
                                return ((TLRPC.User) tLObject).id;
                            }
                            return -((TLRPC.Chat) tLObject).id;
                        }

                        @Override // java.util.Comparator
                        public int compare(TLObject tLObject, TLObject tLObject2) {
                            long id = getId(tLObject);
                            long id2 = getId(tLObject2);
                            if (longSparseArray2.indexOfKey(id) >= 0 && longSparseArray2.indexOfKey(id2) >= 0) {
                                return 0;
                            }
                            if (longSparseArray2.indexOfKey(id) >= 0) {
                                return -1;
                            }
                            if (longSparseArray2.indexOfKey(id2) >= 0) {
                                return 1;
                            }
                            int iIndexOf2 = arrayList12.indexOf(Long.valueOf(id));
                            int iIndexOf3 = arrayList12.indexOf(Long.valueOf(id2));
                            if (iIndexOf2 != -1 && iIndexOf3 != -1) {
                                if (iIndexOf2 < iIndexOf3) {
                                    return -1;
                                }
                                return iIndexOf2 == iIndexOf3 ? 0 : 1;
                            }
                            if (iIndexOf2 == -1 || iIndexOf3 != -1) {
                                return (iIndexOf2 != -1 || iIndexOf3 == -1) ? 0 : 1;
                            }
                            return -1;
                        }
                    });
                    this.searchResultHashtags = null;
                    this.stickers = null;
                    this.quickReplies = null;
                    this.searchResultCommands = null;
                    this.searchResultCommandsEphemeral = null;
                    this.searchResultCommandsHelp = null;
                    this.searchResultCommandsUsers = null;
                    this.searchResultSuggestions = null;
                    if (((chat2 != null && chat2.megagroup) || this.searchInDialogs) && lowerCase4.length() > 0) {
                        if (arrayList13.size() < 5) {
                            Runnable runnable4 = new Runnable() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda4
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$searchUsernameOrHashtag$9(arrayList13, longSparseArray);
                                }
                            };
                            this.cancelDelayRunnable = runnable4;
                            AndroidUtilities.runOnUIThread(runnable4, 1000L);
                        } else {
                            showUsersResult(arrayList13, longSparseArray, true);
                        }
                        RunnableC28087 runnableC28087 = new RunnableC28087(chat2, lowerCase4, j5, arrayList13, longSparseArray, messagesController);
                        this.searchGlobalRunnable = runnableC28087;
                        AndroidUtilities.runOnUIThread(runnableC28087, 200L);
                        return;
                    }
                    showUsersResult(arrayList13, longSparseArray, true);
                    return;
                }
                i7--;
            }
            i7 = -1;
            r14 = z4;
            if (str8 == null) {
                if (str8 == null) {
                    hashtagHint = this.topHint;
                    if (hashtagHint != 0) {
                    }
                    hashtagHint2 = this.bottomHint;
                    if (hashtagHint2 != null) {
                    }
                }
            }
            if (b2 == -1) {
            }
        }
        i7 = -1;
        r14 = 0;
        if (str8 == null) {
        }
        if (b2 == -1) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchUsernameOrHashtag$9(ArrayList arrayList, LongSparseArray longSparseArray) {
        this.cancelDelayRunnable = null;
        showUsersResult(arrayList, longSparseArray, true);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Adapters.MentionsAdapter$7 */
    public class RunnableC28087 implements Runnable {
        final /* synthetic */ TLRPC.Chat val$chat;
        final /* synthetic */ MessagesController val$messagesController;
        final /* synthetic */ ArrayList val$newResult;
        final /* synthetic */ LongSparseArray val$newResultsMap;
        final /* synthetic */ long val$threadId;
        final /* synthetic */ String val$usernameString;

        public RunnableC28087(TLRPC.Chat chat, String str, long j, ArrayList arrayList, LongSparseArray longSparseArray, MessagesController messagesController) {
            this.val$chat = chat;
            this.val$usernameString = str;
            this.val$threadId = j;
            this.val$newResult = arrayList;
            this.val$newResultsMap = longSparseArray;
            this.val$messagesController = messagesController;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MentionsAdapter.this.searchGlobalRunnable != this) {
                return;
            }
            TLRPC.TL_channels_getParticipants tL_channels_getParticipants = new TLRPC.TL_channels_getParticipants();
            tL_channels_getParticipants.channel = MessagesController.getInputChannel(this.val$chat);
            tL_channels_getParticipants.limit = 20;
            tL_channels_getParticipants.offset = 0;
            TLRPC.TL_channelParticipantsMentions tL_channelParticipantsMentions = new TLRPC.TL_channelParticipantsMentions();
            int i = tL_channelParticipantsMentions.flags;
            tL_channelParticipantsMentions.flags = i | 1;
            tL_channelParticipantsMentions.f852q = this.val$usernameString;
            long j = this.val$threadId;
            if (j != 0) {
                tL_channelParticipantsMentions.flags = i | 3;
                tL_channelParticipantsMentions.top_msg_id = (int) j;
            }
            tL_channels_getParticipants.filter = tL_channelParticipantsMentions;
            MentionsAdapter mentionsAdapter = MentionsAdapter.this;
            final int i2 = mentionsAdapter.channelLastReqId + 1;
            mentionsAdapter.channelLastReqId = i2;
            MentionsAdapter mentionsAdapter2 = MentionsAdapter.this;
            ConnectionsManager connectionsManager = ConnectionsManager.getInstance(mentionsAdapter2.currentAccount);
            final ArrayList arrayList = this.val$newResult;
            final LongSparseArray longSparseArray = this.val$newResultsMap;
            final MessagesController messagesController = this.val$messagesController;
            mentionsAdapter2.channelReqId = connectionsManager.sendRequest(tL_channels_getParticipants, new RequestDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter$7$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$run$1(i2, arrayList, longSparseArray, messagesController, tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(final int i, final ArrayList arrayList, final LongSparseArray longSparseArray, final MessagesController messagesController, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.MentionsAdapter$7$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0(i, arrayList, longSparseArray, tL_error, tLObject, messagesController);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(int i, ArrayList arrayList, LongSparseArray longSparseArray, TLRPC.TL_error tL_error, TLObject tLObject, MessagesController messagesController) {
            if (MentionsAdapter.this.channelReqId != 0 && i == MentionsAdapter.this.channelLastReqId && MentionsAdapter.this.searchResultUsernamesMap != null && MentionsAdapter.this.searchResultUsernames != null) {
                MentionsAdapter.this.showUsersResult(arrayList, longSparseArray, false);
                if (tL_error == null) {
                    TLRPC.TL_channels_channelParticipants tL_channels_channelParticipants = (TLRPC.TL_channels_channelParticipants) tLObject;
                    messagesController.putUsers(tL_channels_channelParticipants.users, false);
                    messagesController.putChats(tL_channels_channelParticipants.chats, false);
                    if (!tL_channels_channelParticipants.participants.isEmpty()) {
                        long clientUserId = UserConfig.getInstance(MentionsAdapter.this.currentAccount).getClientUserId();
                        for (int i2 = 0; i2 < tL_channels_channelParticipants.participants.size(); i2++) {
                            long peerId = MessageObject.getPeerId(tL_channels_channelParticipants.participants.get(i2).peer);
                            if (MentionsAdapter.this.searchResultUsernamesMap.indexOfKey(peerId) < 0 && ((peerId != 0 || MentionsAdapter.this.searchResultUsernamesMap.indexOfKey(clientUserId) < 0) && (MentionsAdapter.this.isSearchingMentions || (peerId != clientUserId && peerId != 0)))) {
                                if (peerId >= 0) {
                                    TLRPC.User user = messagesController.getUser(Long.valueOf(peerId));
                                    if (user == null) {
                                        return;
                                    }
                                    MentionsAdapter mentionsAdapter = MentionsAdapter.this;
                                    mentionsAdapter.addUserResult(mentionsAdapter.searchResultUsernames, MentionsAdapter.this.searchResultUsernamesMap, user);
                                } else {
                                    TLRPC.Chat chat = messagesController.getChat(Long.valueOf(-peerId));
                                    if (chat == null) {
                                        return;
                                    }
                                    MentionsAdapter mentionsAdapter2 = MentionsAdapter.this;
                                    mentionsAdapter2.addChatResult(mentionsAdapter2.searchResultUsernames, MentionsAdapter.this.searchResultUsernamesMap, chat);
                                }
                            }
                        }
                    }
                }
                MentionsAdapter.this.notifyDataSetChanged();
                MentionsAdapter.this.delegate.needChangePanelVisibility(!MentionsAdapter.this.searchResultUsernames.isEmpty());
            }
            MentionsAdapter.this.channelReqId = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchUsernameOrHashtag$10(ArrayList arrayList, String str) {
        this.searchResultSuggestions = arrayList;
        this.searchResultHashtags = null;
        this.stickers = null;
        this.searchResultUsernames = null;
        this.searchResultUsernamesMap = null;
        this.searchResultCommands = null;
        this.searchResultCommandsEphemeral = null;
        this.quickReplies = null;
        this.searchResultCommandsHelp = null;
        this.searchResultCommandsUsers = null;
        notifyDataSetChanged();
        MentionsAdapterDelegate mentionsAdapterDelegate = this.delegate;
        ArrayList<MediaDataController.KeywordResult> arrayList2 = this.searchResultSuggestions;
        mentionsAdapterDelegate.needChangePanelVisibility((arrayList2 == null || arrayList2.isEmpty()) ? false : true);
    }

    public void setIsReversed(boolean z) {
        if (this.isReversed != z) {
            this.isReversed = z;
            int lastItemCount = getLastItemCount();
            if (lastItemCount > 0) {
                notifyItemChanged(0);
            }
            if (lastItemCount > 1) {
                notifyItemChanged(lastItemCount - 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean addUserResult(ArrayList<TLObject> arrayList, LongSparseArray<TLObject> longSparseArray, TLRPC.User user) {
        return SearchAdapterHelper.addUniqueObject(arrayList, longSparseArray, user, user.id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean addChatResult(ArrayList<TLObject> arrayList, LongSparseArray<TLObject> longSparseArray, TLRPC.Chat chat) {
        return SearchAdapterHelper.addUniqueObject(arrayList, longSparseArray, chat, -chat.id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUsersResult(ArrayList<TLObject> arrayList, LongSparseArray<TLObject> longSparseArray, boolean z) {
        this.searchResultUsernames = arrayList;
        if ((!this.allowBots || !this.allowChats) && arrayList != null) {
            Iterator<TLObject> it = arrayList.iterator();
            while (it.hasNext()) {
                TLObject next = it.next();
                if ((next instanceof TLRPC.Chat) && !this.allowChats) {
                    it.remove();
                } else if (next instanceof TLRPC.User) {
                    TLRPC.User user = (TLRPC.User) next;
                    if (user.bot || UserObject.isService(user.id)) {
                        it.remove();
                    }
                }
            }
        }
        this.searchResultUsernamesMap = longSparseArray;
        Runnable runnable = this.cancelDelayRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.cancelDelayRunnable = null;
        }
        this.searchResultBotContext = null;
        this.stickers = null;
        if (z) {
            notifyDataSetChanged();
            this.delegate.needChangePanelVisibility(!this.searchResultUsernames.isEmpty());
        }
    }

    public int getResultStartPosition() {
        return this.resultStartPosition;
    }

    public int getResultLength() {
        return this.resultLength;
    }

    public ArrayList<TLRPC.BotInlineResult> getSearchResultBotContext() {
        return this.searchResultBotContext;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int itemCountInternal = getItemCountInternal();
        this.lastItemCount = itemCountInternal;
        return itemCountInternal;
    }

    public int getLastItemCount() {
        return this.lastItemCount;
    }

    public int getItemCountInternal() {
        int i = 1;
        if (this.foundContextBot != null && !this.inlineMediaEnabled) {
            return 1;
        }
        int i2 = this.hintHashtag != null ? 2 : 0;
        ArrayList<StickerResult> arrayList = this.stickers;
        if (arrayList != null) {
            return i2 + arrayList.size();
        }
        ArrayList<TLRPC.BotInlineResult> arrayList2 = this.searchResultBotContext;
        if (arrayList2 != null) {
            int size = arrayList2.size();
            if (this.searchResultBotContextSwitch == null && this.searchResultBotWebViewSwitch == null) {
                i = 0;
            }
            return i2 + size + i;
        }
        ArrayList<TLObject> arrayList3 = this.searchResultUsernames;
        if (arrayList3 != null) {
            return i2 + arrayList3.size();
        }
        ArrayList<String> arrayList4 = this.searchResultHashtags;
        if (arrayList4 != null) {
            return i2 + arrayList4.size();
        }
        if (this.searchResultCommands != null || this.quickReplies != null) {
            ArrayList<QuickRepliesController.QuickReply> arrayList5 = this.quickReplies;
            int size2 = arrayList5 == null ? 0 : arrayList5.size();
            ArrayList<String> arrayList6 = this.searchResultCommands;
            return i2 + size2 + (arrayList6 != null ? arrayList6.size() : 0);
        }
        ArrayList<MediaDataController.KeywordResult> arrayList7 = this.searchResultSuggestions;
        return arrayList7 != null ? i2 + arrayList7.size() : i2;
    }

    public void clear(boolean z) {
        if (!z || (this.channelReqId == 0 && this.contextQueryReqid == 0 && this.contextUsernameReqid == 0 && this.lastReqId == 0)) {
            this.foundContextBot = null;
            this.hintHashtag = null;
            ArrayList<StickerResult> arrayList = this.stickers;
            if (arrayList != null) {
                arrayList.clear();
            }
            ArrayList<TLRPC.BotInlineResult> arrayList2 = this.searchResultBotContext;
            if (arrayList2 != null) {
                arrayList2.clear();
            }
            this.searchResultBotContextSwitch = null;
            this.searchResultBotWebViewSwitch = null;
            ArrayList<TLObject> arrayList3 = this.searchResultUsernames;
            if (arrayList3 != null) {
                arrayList3.clear();
            }
            ArrayList<String> arrayList4 = this.searchResultHashtags;
            if (arrayList4 != null) {
                arrayList4.clear();
            }
            ArrayList<String> arrayList5 = this.searchResultCommands;
            if (arrayList5 != null) {
                arrayList5.clear();
            }
            ArrayList<QuickRepliesController.QuickReply> arrayList6 = this.quickReplies;
            if (arrayList6 != null) {
                arrayList6.clear();
            }
            ArrayList<MediaDataController.KeywordResult> arrayList7 = this.searchResultSuggestions;
            if (arrayList7 != null) {
                arrayList7.clear();
            }
            notifyDataSetChanged();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.hintHashtag != null) {
            if (i < 2) {
                return 6;
            }
            i -= 2;
        }
        if (this.stickers != null) {
            return 4;
        }
        if (this.foundContextBot != null && !this.inlineMediaEnabled) {
            return 3;
        }
        if (this.searchResultBotContext == null) {
            ArrayList<QuickRepliesController.QuickReply> arrayList = this.quickReplies;
            return (arrayList == null || i < 0 || i >= arrayList.size()) ? 0 : 5;
        }
        if (i == 0) {
            return (this.searchResultBotContextSwitch == null && this.searchResultBotWebViewSwitch == null) ? 1 : 2;
        }
        return 1;
    }

    public void addHashtagsFromMessage(CharSequence charSequence) {
        this.searchAdapterHelper.addHashtagsFromMessage(charSequence);
    }

    public int getItemPosition(int i) {
        if (this.hintHashtag != null) {
            if (i < 2) {
                return 0;
            }
            i -= 2;
        }
        return this.searchResultBotContext != null ? (this.searchResultBotContextSwitch == null && this.searchResultBotWebViewSwitch == null) ? i : i - 1 : i;
    }

    public Object getItemParent(int i) {
        if (this.hintHashtag != null) {
            if (i < 2) {
                return null;
            }
            i -= 2;
        }
        ArrayList<StickerResult> arrayList = this.stickers;
        if (arrayList == null || i < 0 || i >= arrayList.size()) {
            return null;
        }
        return this.stickers.get(i).parent;
    }

    public Object getItem(int i) {
        String str;
        TLRPC.User user = null;
        if (this.hintHashtag != null) {
            if (i < 2) {
                return null;
            }
            i -= 2;
        }
        ArrayList<StickerResult> arrayList = this.stickers;
        if (arrayList != null) {
            if (i < 0 || i >= arrayList.size()) {
                return null;
            }
            return this.stickers.get(i).sticker;
        }
        ArrayList<TLRPC.BotInlineResult> arrayList2 = this.searchResultBotContext;
        if (arrayList2 != null) {
            TLRPC.TL_inlineBotWebView tL_inlineBotWebView = this.searchResultBotWebViewSwitch;
            if (tL_inlineBotWebView == null) {
                TLRPC.TL_inlineBotSwitchPM tL_inlineBotSwitchPM = this.searchResultBotContextSwitch;
                if (tL_inlineBotSwitchPM != null) {
                    if (i == 0) {
                        return tL_inlineBotSwitchPM;
                    }
                }
                if (i >= 0 || i >= arrayList2.size()) {
                    return null;
                }
                return this.searchResultBotContext.get(i);
            }
            if (i == 0) {
                return tL_inlineBotWebView;
            }
            i--;
            if (i >= 0) {
            }
            return null;
        }
        ArrayList<TLObject> arrayList3 = this.searchResultUsernames;
        if (arrayList3 != null) {
            if (i < 0 || i >= arrayList3.size()) {
                return null;
            }
            return this.searchResultUsernames.get(i);
        }
        ArrayList<String> arrayList4 = this.searchResultHashtags;
        if (arrayList4 != null) {
            if (i < 0 || i >= arrayList4.size()) {
                return null;
            }
            return this.searchResultHashtags.get(i);
        }
        ArrayList<MediaDataController.KeywordResult> arrayList5 = this.searchResultSuggestions;
        if (arrayList5 != null) {
            if (i < 0 || i >= arrayList5.size()) {
                return null;
            }
            return this.searchResultSuggestions.get(i);
        }
        ArrayList<QuickRepliesController.QuickReply> arrayList6 = this.quickReplies;
        if (arrayList6 != null || this.searchResultCommands != null) {
            if (arrayList6 != null) {
                if (i >= 0 && i < arrayList6.size()) {
                    return this.quickReplies.get(i);
                }
                ArrayList<QuickRepliesController.QuickReply> arrayList7 = this.quickReplies;
                if (arrayList7 != null) {
                    i -= arrayList7.size();
                }
            }
            ArrayList<String> arrayList8 = this.searchResultCommands;
            if (arrayList8 != null && i >= 0 && i < arrayList8.size()) {
                ArrayList<TLRPC.User> arrayList9 = this.searchResultCommandsUsers;
                if (arrayList9 != null && (this.botsCount != 1 || (this.info instanceof TLRPC.TL_channelFull))) {
                    if (arrayList9.get(i) != null) {
                        user = this.searchResultCommandsUsers.get(i);
                        str = String.format("%s@%s", this.searchResultCommands.get(i), user != null ? UserObject.getPublicUsername(user) : _UrlKt.FRAGMENT_ENCODE_SET);
                    } else {
                        str = String.format("%s", this.searchResultCommands.get(i));
                    }
                } else {
                    str = this.searchResultCommands.get(i);
                }
                ArrayList<Boolean> arrayList10 = this.searchResultCommandsEphemeral;
                if (arrayList10 == null || !arrayList10.get(i).booleanValue()) {
                    return str;
                }
                return new EphemeralCommand(str, user != null ? user.id : 0L);
            }
        }
        return null;
    }

    public static class EphemeralCommand {
        public final long botUserId;
        public final String command;

        public EphemeralCommand(String str, long j) {
            this.command = str;
            this.botUserId = j;
        }
    }

    public boolean isLongClickEnabled() {
        return (this.searchResultHashtags == null && this.searchResultCommands == null && this.searchResultUsernames == null) ? false : true;
    }

    public boolean isBotCommands() {
        return this.searchResultCommands != null;
    }

    public boolean isStickers() {
        return this.stickers != null;
    }

    public boolean isBotContext() {
        return this.searchResultBotContext != null;
    }

    public boolean isBannedInline() {
        return (this.foundContextBot == null || this.inlineMediaEnabled) ? false : true;
    }

    public boolean isMediaLayout() {
        return this.contextMedia || this.stickers != null;
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        return (this.foundContextBot == null || this.inlineMediaEnabled) && this.stickers == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateViewHolder$11(ContextLinkCell contextLinkCell) {
        this.delegate.onContextClick(contextLinkCell.getResult());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View botSwitchCell;
        View view;
        if (i == 0) {
            MentionCell mentionCell = new MentionCell(this.mContext, this.resourcesProvider);
            mentionCell.setIsDarkTheme(this.isDarkTheme);
            botSwitchCell = mentionCell;
        } else if (i == 1) {
            ContextLinkCell contextLinkCell = new ContextLinkCell(this.mContext);
            contextLinkCell.setDelegate(new ContextLinkCell.ContextLinkCellDelegate() { // from class: org.telegram.ui.Adapters.MentionsAdapter$$ExternalSyntheticLambda6
                @Override // org.telegram.ui.Cells.ContextLinkCell.ContextLinkCellDelegate
                public final void didPressedImage(ContextLinkCell contextLinkCell2) {
                    this.f$0.lambda$onCreateViewHolder$11(contextLinkCell2);
                }
            });
            botSwitchCell = contextLinkCell;
        } else if (i != 2) {
            if (i == 3) {
                TextView textView = new TextView(this.mContext);
                textView.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
                textView.setTextSize(1, 14.0f);
                textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText2));
                view = textView;
            } else if (i == 5) {
                botSwitchCell = new QuickRepliesActivity.QuickReplyView(this.mContext, false, this.resourcesProvider);
            } else if (i == 6) {
                botSwitchCell = new HashtagHint(this.mContext, this.stories, this.resourcesProvider);
            } else if (i == 7) {
                View view2 = new View(this.mContext) { // from class: org.telegram.ui.Adapters.MentionsAdapter.8
                    @Override // android.view.View
                    public void onMeasure(int i2, int i3) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(8.0f), TLObject.FLAG_30));
                    }
                };
                CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(this.stories ? Theme.multAlpha(-1, 0.15f) : Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider)), Theme.getThemedDrawable(this.mContext, C2573R.drawable.greydivider, Theme.getColor(Theme.key_windowBackgroundGrayShadow, this.resourcesProvider)), 0, 0);
                combinedDrawable.setFullsize(true);
                view2.setBackground(combinedDrawable);
                view = view2;
            } else {
                botSwitchCell = new StickerCell(this.mContext, this.resourcesProvider);
            }
            botSwitchCell = view;
        } else {
            botSwitchCell = new BotSwitchCell(this.mContext);
        }
        return new RecyclerListView.Holder(botSwitchCell);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ChatActivity chatActivity;
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        if (this.hintHashtag != null) {
            i -= 2;
        }
        int itemViewType = viewHolder.getItemViewType();
        if (itemViewType == 4) {
            StickerCell stickerCell = (StickerCell) viewHolder.itemView;
            if (i < 0 || i >= this.stickers.size()) {
                return;
            }
            StickerResult stickerResult = this.stickers.get(i);
            stickerCell.setSticker(stickerResult.sticker, stickerResult.parent);
            stickerCell.setClearsInputField(true);
            return;
        }
        if (itemViewType == 3) {
            TextView textView = (TextView) viewHolder.itemView;
            TLRPC.Chat currentChat = this.parentFragment.getCurrentChat();
            if (currentChat != null) {
                if (!ChatObject.hasAdminRights(currentChat) && (tL_chatBannedRights = currentChat.default_banned_rights) != null && tL_chatBannedRights.send_inline) {
                    textView.setText(LocaleController.getString(C2573R.string.GlobalAttachInlineRestricted));
                    return;
                } else if (AndroidUtilities.isBannedForever(currentChat.banned_rights)) {
                    textView.setText(LocaleController.getString(C2573R.string.AttachInlineRestrictedForever));
                    return;
                } else {
                    textView.setText(LocaleController.formatString("AttachInlineRestricted", C2573R.string.AttachInlineRestricted, LocaleController.formatDateForBan(currentChat.banned_rights.until_date)));
                    return;
                }
            }
            return;
        }
        if (itemViewType == 5) {
            QuickRepliesActivity.QuickReplyView quickReplyView = (QuickRepliesActivity.QuickReplyView) viewHolder.itemView;
            ArrayList<QuickRepliesController.QuickReply> arrayList = this.quickReplies;
            if (arrayList == null || i < 0 || i >= arrayList.size()) {
                return;
            }
            quickReplyView.set(this.quickReplies.get(i), this.quickRepliesQuery, false);
            return;
        }
        if (this.searchResultBotContext != null) {
            boolean z = (this.searchResultBotContextSwitch == null && this.searchResultBotWebViewSwitch == null) ? false : true;
            if (viewHolder.getItemViewType() == 2) {
                if (z) {
                    BotSwitchCell botSwitchCell = (BotSwitchCell) viewHolder.itemView;
                    TLRPC.TL_inlineBotSwitchPM tL_inlineBotSwitchPM = this.searchResultBotContextSwitch;
                    botSwitchCell.setText(tL_inlineBotSwitchPM != null ? tL_inlineBotSwitchPM.text : this.searchResultBotWebViewSwitch.text);
                    return;
                }
                return;
            }
            if (z) {
                i--;
            }
            if (i < 0 || i >= this.searchResultBotContext.size()) {
                return;
            }
            ((ContextLinkCell) viewHolder.itemView).setLink(this.searchResultBotContext.get(i), this.foundContextBot, this.contextMedia, i != this.searchResultBotContext.size() - 1, z && i == 0, "gif".equals(this.searchingContextUsername));
            return;
        }
        if (itemViewType == 6) {
            HashtagHint hashtagHint = (HashtagHint) viewHolder.itemView;
            int i2 = i + 2;
            if (i2 == 0) {
                this.topHint = hashtagHint;
            } else {
                this.bottomHint = hashtagHint;
            }
            TLRPC.Chat currentChat2 = this.chat;
            if (currentChat2 == null && (chatActivity = this.parentFragment) != null) {
                currentChat2 = chatActivity.getCurrentChat();
            }
            hashtagHint.set(i2, this.hintHashtag, currentChat2);
            return;
        }
        if (itemViewType == 7) {
            return;
        }
        MentionCell mentionCell = (MentionCell) viewHolder.itemView;
        ArrayList<TLObject> arrayList2 = this.searchResultUsernames;
        if (arrayList2 != null) {
            TLObject tLObject = arrayList2.get(i);
            if (tLObject instanceof TLRPC.User) {
                mentionCell.setUser((TLRPC.User) tLObject);
            } else if (tLObject instanceof TLRPC.Chat) {
                mentionCell.setChat((TLRPC.Chat) tLObject);
            }
        } else {
            ArrayList<String> arrayList3 = this.searchResultHashtags;
            if (arrayList3 != null && i >= 0 && i < arrayList3.size()) {
                mentionCell.setText(this.searchResultHashtags.get(i));
            } else {
                ArrayList<MediaDataController.KeywordResult> arrayList4 = this.searchResultSuggestions;
                if (arrayList4 != null && i >= 0 && i < arrayList4.size()) {
                    mentionCell.setEmojiSuggestion(this.searchResultSuggestions.get(i));
                } else {
                    ArrayList<String> arrayList5 = this.searchResultCommands;
                    if (arrayList5 != null && i >= 0 && i < arrayList5.size()) {
                        ArrayList<String> arrayList6 = this.searchResultCommandsHelp;
                        Boolean bool = null;
                        String str = (arrayList6 == null || i < 0 || i >= arrayList6.size()) ? null : this.searchResultCommandsHelp.get(i);
                        ArrayList<TLRPC.User> arrayList7 = this.searchResultCommandsUsers;
                        TLRPC.User user = (arrayList7 == null || i < 0 || i >= arrayList7.size()) ? null : this.searchResultCommandsUsers.get(i);
                        ArrayList<Boolean> arrayList8 = this.searchResultCommandsEphemeral;
                        if (arrayList8 != null && i >= 0 && i < arrayList8.size()) {
                            bool = this.searchResultCommandsEphemeral.get(i);
                        }
                        mentionCell.setBotCommand(this.searchResultCommands.get(i), str, user, bool.booleanValue());
                    }
                }
            }
        }
        mentionCell.setDivider(false);
    }

    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        TLRPC.User user;
        if (i == 2 && (user = this.foundContextBot) != null && user.bot_inline_geo) {
            if (iArr.length > 0 && iArr[0] == 0) {
                this.locationProvider.start();
            } else {
                onLocationUnavailable();
            }
        }
    }

    public void doSomeStickersAction() {
        MentionsAdapter mentionsAdapter;
        if (isStickers()) {
            if (this.mentionsStickersActionTracker == null) {
                mentionsAdapter = this;
                EmojiView.ChooseStickerActionTracker chooseStickerActionTracker = new EmojiView.ChooseStickerActionTracker(this.currentAccount, this.dialog_id, this.threadMessageId) { // from class: org.telegram.ui.Adapters.MentionsAdapter.9
                    @Override // org.telegram.ui.Components.EmojiView.ChooseStickerActionTracker
                    public boolean isShown() {
                        return MentionsAdapter.this.isStickers();
                    }
                };
                mentionsAdapter.mentionsStickersActionTracker = chooseStickerActionTracker;
                chooseStickerActionTracker.checkVisibility();
            } else {
                mentionsAdapter = this;
            }
            mentionsAdapter.mentionsStickersActionTracker.doSomeAction();
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setDialogId(long j) {
        if (this.dialog_id != j) {
            this.dialog_id = j;
        }
    }

    public void setUserOrChat(TLRPC.User user, TLRPC.Chat chat) {
        this.user = user;
        this.chat = chat;
    }

    public void setSearchInDialogs(boolean z) {
        this.searchInDialogs = z;
    }

    public void setAllowStickers(boolean z) {
        this.allowStickers = z;
    }

    public void setAllowBots(boolean z) {
        this.allowBots = z;
    }

    public void setAllowChats(boolean z) {
        this.allowChats = z;
    }

    public String getHashtagHint() {
        return this.hintHashtag;
    }

    public boolean isLocalHashtagHint(int i) {
        return this.hintHashtag != null && i == 1;
    }

    public boolean isGlobalHashtagHint(int i) {
        return this.hintHashtag != null && i == 0;
    }

    public static class HashtagHint extends LinearLayout {
        private final AvatarDrawable avatarDrawable;
        private final BackupImageView imageView;
        private final Theme.ResourcesProvider resourcesProvider;
        private final LinearLayout textLayout;
        private final TextView textView;
        private final TextView titleView;
        private final boolean transparent;

        public HashtagHint(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.avatarDrawable = new AvatarDrawable();
            this.resourcesProvider = resourcesProvider;
            this.transparent = z;
            setOrientation(0);
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.dp(28.0f));
            addView(backupImageView, LayoutHelper.createLinear(28, 28, 19, 12, 0, 12, 0));
            LinearLayout linearLayout = new LinearLayout(context);
            this.textLayout = linearLayout;
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createLinear(-1, -2, 55, 0, 4, 12, 4));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 15.0f);
            int i = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i, resourcesProvider));
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
            TextView textView2 = new TextView(context);
            this.textView = textView2;
            textView2.setTextSize(1, 13.0f);
            textView2.setTextColor(z ? Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.5f) : Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2));
        }

        public void set(int i, String str, TLRPC.Chat chat) {
            if (str == null) {
                return;
            }
            if (i == 0) {
                CombinedDrawable combinedDrawable = new CombinedDrawable(Theme.createRoundRectDrawable(AndroidUtilities.dp(28.0f), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)), getContext().getResources().getDrawable(C2573R.drawable.menu_hashtag).mutate());
                combinedDrawable.setIconOffset(AndroidUtilities.dp(-0.66f), 0);
                combinedDrawable.setIconSize(AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f));
                this.imageView.setImageDrawable(combinedDrawable);
                this.titleView.setText(LocaleController.formatString(C2573R.string.HashtagSuggestion1Title, str));
                this.textView.setText(LocaleController.getString(C2573R.string.HashtagSuggestion1Text));
                return;
            }
            this.avatarDrawable.setInfo(chat);
            this.imageView.setForUserOrChat(chat, this.avatarDrawable);
            this.titleView.setText(PremiumPreviewFragment.applyNewSpan(LocaleController.formatString(C2573R.string.HashtagSuggestion2Title, str + "@" + ChatObject.getPublicUsername(chat)), 8));
            this.textView.setText(LocaleController.getString(C2573R.string.HashtagSuggestion2Text));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
        }
    }
}
