package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Property;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_communities;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Adapters.SearchAdapterHelper;
import org.telegram.ui.Cells.CheckBoxCell;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.LoadingCell;
import org.telegram.ui.Cells.ManageChatTextCell;
import org.telegram.ui.Cells.ManageChatUserCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.SlideIntChooseView;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Cells.TextCheckCell2;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Cells.TextSettingsCell;
import org.telegram.ui.ChatRightsEditActivity;
import org.telegram.ui.ChatUsersActivity;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.GigagroupConvertAlert;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SlideChooseView;
import org.telegram.ui.Components.StickerEmptyView;
import org.telegram.ui.Components.Switch;
import org.telegram.ui.Components.UndoView;
import org.telegram.ui.GroupCreateActivity;
import org.telegram.ui.bots.AffiliateProgramFragment;

/* JADX INFO: loaded from: classes6.dex */
public class ChatUsersActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private int addNew2Row;
    private int addNewRow;
    private int addNewSectionRow;
    private int addUsersRow;
    private int antiSpamInfoRow;
    private int antiSpamRow;
    private boolean antiSpamToggleLoading;
    private int blockedEmptyRow;
    private int botEndRow;
    private int botHeaderRow;
    private int botStartRow;
    private ArrayList<TLObject> bots;
    private boolean botsEndReached;
    private LongSparseArray<TLObject> botsMap;
    private int changeInfoRow;
    private long chatId;
    private ArrayList<TLObject> contacts;
    private boolean contactsEndReached;
    private int contactsEndRow;
    private int contactsHeaderRow;
    private LongSparseArray<TLObject> contactsMap;
    private int contactsStartRow;
    private TLRPC.Chat currentChat;
    private TLRPC.TL_chatBannedRights defaultBannedRights;
    private int delayResults;
    private ChatUsersActivityDelegate delegate;
    private ActionBarMenuItem doneItem;
    private int dontRestrictBoostersInfoRow;
    private int dontRestrictBoostersRow;
    private int dontRestrictBoostersSliderRow;
    private int editTagRow;
    private int embedLinksRow;
    private StickerEmptyView emptyView;
    private boolean enablePrice;
    private boolean firstLoaded;
    private FlickerLoadingView flickerLoadingView;
    private int gigaConvertRow;
    private int gigaHeaderRow;
    private int gigaInfoRow;
    private int hideMembersInfoRow;
    private int hideMembersRow;
    private boolean hideMembersToggleLoading;
    private LongSparseArray<TLRPC.GroupCallParticipant> ignoredUsers;
    private TLRPC.ChatFull info;
    private String initialBannedRights;
    private boolean initialEnablePrice;
    private boolean initialProfiles;
    private boolean initialSignatures;
    private int initialSlowmode;
    private long initialStarsPrice;
    private boolean isChannel;
    private boolean isCommunity;
    private boolean isEnabledNotRestrictBoosters;
    private boolean isForum;
    private LinearLayoutManager layoutManager;
    private RecyclerListView listView;
    private ListAdapter listViewAdapter;
    private int loadingHeaderRow;
    private int loadingProgressRow;
    private int loadingUserCellRow;
    private boolean loadingUsers;
    private int manageLinkedPeersRow;
    private int manageTopicsRow;
    private int membersHeaderRow;
    private boolean needOpenSearch;
    private int notRestrictBoosters;
    private boolean openTransitionStarted;
    private ArrayList<TLObject> participants;
    private int participantsDivider2Row;
    private int participantsDividerRow;
    private int participantsEndRow;
    private int participantsInfoRow;
    private LongSparseArray<TLObject> participantsMap;
    private int participantsStartRow;
    private int payInfoRow;
    private int payRow;
    private int permissionsSectionRow;
    private int pinMessagesRow;
    private int priceHeaderRow;
    private int priceInfoRow;
    private int priceRow;
    private boolean profiles;
    private View progressBar;
    private int recentActionsRow;
    private int removedUsersRow;
    private int restricted1SectionRow;
    private int rowCount;
    private ActionBarMenuItem searchItem;
    private SearchAdapter searchListViewAdapter;
    private boolean searching;
    private int selectType;
    private int selectedSlowmode;
    private int sendMediaEmbededLinksRow;
    private boolean sendMediaExpanded;
    private int sendMediaFilesRow;
    private int sendMediaMusicRow;
    private int sendMediaPhotosRow;
    private int sendMediaRow;
    private int sendMediaStickerGifsRow;
    private int sendMediaVideoMessagesRow;
    private int sendMediaVideosRow;
    private int sendMediaVoiceMessagesRow;
    private int sendMessagesRow;
    private int sendPollsRow;
    private int sendReactionsRow;
    private int sendStickersRow;
    private int signMessagesInfoRow;
    private int signMessagesProfilesRow;
    private int signMessagesRow;
    private boolean signatures;
    private int slowmodeInfoRow;
    private int slowmodeRow;
    private int slowmodeSelectRow;
    private long starsPrice;
    private int tagsInfoRow;
    private int tagsRow;
    private boolean transfer;
    private int type;
    private UndoView undoView;

    public interface ChatUsersActivityDelegate {
        void didAddParticipantToList(long j, TLObject tLObject);

        default void didChangeOwner(TLRPC.User user) {
        }

        default void didKickParticipant(long j) {
        }

        default void didSelectUser(long j) {
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$oeh6iY0vmOlL6KBPnQc0ji-JCtA, reason: not valid java name */
    public static /* synthetic */ void m9582$r8$lambda$oeh6iY0vmOlL6KBPnQc0jiJCtA() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSecondsForIndex(int i) {
        if (i == 1) {
            return 5;
        }
        if (i == 2) {
            return 10;
        }
        if (i == 3) {
            return 30;
        }
        if (i == 4) {
            return 60;
        }
        if (i == 5) {
            return 300;
        }
        if (i == 6) {
            return 900;
        }
        return i == 7 ? 3600 : 0;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean needDelayOpenAnimation() {
        return true;
    }

    public ChatUsersActivity(Bundle bundle) {
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        super(bundle);
        this.defaultBannedRights = new TLRPC.TL_chatBannedRights();
        this.participants = new ArrayList<>();
        this.bots = new ArrayList<>();
        this.contacts = new ArrayList<>();
        this.participantsMap = new LongSparseArray<>();
        this.botsMap = new LongSparseArray<>();
        this.contactsMap = new LongSparseArray<>();
        this.initialStarsPrice = 10L;
        this.starsPrice = 10L;
        this.chatId = this.arguments.getLong("chat_id");
        this.type = this.arguments.getInt("type");
        this.transfer = this.arguments.getBoolean("transfer");
        this.needOpenSearch = this.arguments.getBoolean("open_search");
        this.selectType = this.arguments.getInt("selectType");
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
        this.currentChat = chat;
        boolean z = false;
        if (chat != null && (tL_chatBannedRights = chat.default_banned_rights) != null) {
            TLRPC.TL_chatBannedRights tL_chatBannedRights2 = this.defaultBannedRights;
            tL_chatBannedRights2.view_messages = tL_chatBannedRights.view_messages;
            tL_chatBannedRights2.send_stickers = tL_chatBannedRights.send_stickers;
            boolean z2 = tL_chatBannedRights.send_media;
            tL_chatBannedRights2.send_media = z2;
            tL_chatBannedRights2.embed_links = tL_chatBannedRights.embed_links;
            tL_chatBannedRights2.send_messages = tL_chatBannedRights.send_messages;
            tL_chatBannedRights2.send_games = tL_chatBannedRights.send_games;
            tL_chatBannedRights2.send_inline = tL_chatBannedRights.send_inline;
            tL_chatBannedRights2.send_gifs = tL_chatBannedRights.send_gifs;
            tL_chatBannedRights2.pin_messages = tL_chatBannedRights.pin_messages;
            tL_chatBannedRights2.edit_rank = tL_chatBannedRights.edit_rank;
            tL_chatBannedRights2.send_reactions = tL_chatBannedRights.send_reactions;
            tL_chatBannedRights2.send_polls = tL_chatBannedRights.send_polls;
            tL_chatBannedRights2.invite_users = tL_chatBannedRights.invite_users;
            tL_chatBannedRights2.manage_topics = tL_chatBannedRights.manage_topics;
            tL_chatBannedRights2.change_info = tL_chatBannedRights.change_info;
            tL_chatBannedRights2.manage_linked_peers = tL_chatBannedRights.manage_linked_peers;
            boolean z3 = tL_chatBannedRights.send_photos;
            tL_chatBannedRights2.send_photos = z3;
            boolean z4 = tL_chatBannedRights.send_videos;
            tL_chatBannedRights2.send_videos = z4;
            boolean z5 = tL_chatBannedRights.send_roundvideos;
            tL_chatBannedRights2.send_roundvideos = z5;
            boolean z6 = tL_chatBannedRights.send_audios;
            tL_chatBannedRights2.send_audios = z6;
            boolean z7 = tL_chatBannedRights.send_voices;
            tL_chatBannedRights2.send_voices = z7;
            boolean z8 = tL_chatBannedRights.send_docs;
            tL_chatBannedRights2.send_docs = z8;
            tL_chatBannedRights2.send_plain = tL_chatBannedRights.send_plain;
            if (!z2 && z8 && z7 && z6 && z5 && z4 && z3) {
                tL_chatBannedRights2.send_photos = false;
                tL_chatBannedRights2.send_videos = false;
                tL_chatBannedRights2.send_roundvideos = false;
                tL_chatBannedRights2.send_audios = false;
                tL_chatBannedRights2.send_voices = false;
                tL_chatBannedRights2.send_docs = false;
            }
        }
        this.initialBannedRights = ChatObject.getBannedRightsString(this.defaultBannedRights);
        this.isCommunity = ChatObject.isCommunity(this.currentChat);
        if (ChatObject.isChannel(this.currentChat) && !this.currentChat.megagroup && !this.isCommunity) {
            z = true;
        }
        this.isChannel = z;
        this.isForum = ChatObject.isForum(this.currentChat);
        TLRPC.Chat chat2 = this.currentChat;
        if (chat2 != null) {
            boolean z9 = chat2.signatures;
            this.signatures = z9;
            this.initialSignatures = z9;
            boolean z10 = chat2.signature_profiles;
            this.profiles = z10;
            this.initialProfiles = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateRows() {
        boolean z;
        boolean z2;
        TLRPC.ChatFull chatFull;
        boolean z3;
        TLRPC.ChatFull chatFull2;
        TLRPC.Chat chat;
        TLRPC.Chat chat2 = getMessagesController().getChat(Long.valueOf(this.chatId));
        this.currentChat = chat2;
        if (chat2 == null) {
            return;
        }
        this.recentActionsRow = -1;
        this.antiSpamRow = -1;
        this.antiSpamInfoRow = -1;
        this.addNewRow = -1;
        this.addNew2Row = -1;
        this.hideMembersRow = -1;
        this.hideMembersInfoRow = -1;
        this.tagsRow = -1;
        this.tagsInfoRow = -1;
        this.addNewSectionRow = -1;
        this.restricted1SectionRow = -1;
        this.participantsStartRow = -1;
        this.participantsDividerRow = -1;
        this.participantsDivider2Row = -1;
        this.gigaInfoRow = -1;
        this.gigaConvertRow = -1;
        this.gigaHeaderRow = -1;
        this.participantsEndRow = -1;
        this.participantsInfoRow = -1;
        this.signMessagesRow = -1;
        this.signMessagesProfilesRow = -1;
        this.signMessagesInfoRow = -1;
        this.blockedEmptyRow = -1;
        this.permissionsSectionRow = -1;
        this.sendMessagesRow = -1;
        this.sendMediaRow = -1;
        this.sendStickersRow = -1;
        this.sendPollsRow = -1;
        this.embedLinksRow = -1;
        this.addUsersRow = -1;
        this.manageLinkedPeersRow = -1;
        this.manageTopicsRow = -1;
        this.pinMessagesRow = -1;
        this.editTagRow = -1;
        this.sendReactionsRow = -1;
        this.changeInfoRow = -1;
        this.removedUsersRow = -1;
        this.contactsHeaderRow = -1;
        this.contactsStartRow = -1;
        this.contactsEndRow = -1;
        this.botHeaderRow = -1;
        this.botStartRow = -1;
        this.botEndRow = -1;
        this.membersHeaderRow = -1;
        this.slowmodeRow = -1;
        this.slowmodeSelectRow = -1;
        this.slowmodeInfoRow = -1;
        this.dontRestrictBoostersRow = -1;
        this.dontRestrictBoostersInfoRow = -1;
        this.dontRestrictBoostersSliderRow = -1;
        this.loadingProgressRow = -1;
        this.loadingUserCellRow = -1;
        this.loadingHeaderRow = -1;
        this.sendMediaPhotosRow = -1;
        this.sendMediaVideosRow = -1;
        this.sendMediaStickerGifsRow = -1;
        this.sendMediaMusicRow = -1;
        this.sendMediaFilesRow = -1;
        this.sendMediaVoiceMessagesRow = -1;
        this.sendMediaVideoMessagesRow = -1;
        this.sendMediaEmbededLinksRow = -1;
        this.payRow = -1;
        this.payInfoRow = -1;
        this.priceHeaderRow = -1;
        this.priceRow = -1;
        this.priceInfoRow = -1;
        this.rowCount = 0;
        int i = this.type;
        int i2 = 1;
        if (i == 3) {
            int i3 = this.rowCount;
            int i4 = i3 + 1;
            this.rowCount = i4;
            this.permissionsSectionRow = i3;
            boolean z4 = this.isCommunity;
            if (!z4) {
                this.sendMessagesRow = i4;
                int i5 = i3 + 3;
                this.rowCount = i5;
                this.sendMediaRow = i3 + 2;
                if (this.sendMediaExpanded) {
                    this.sendMediaPhotosRow = i5;
                    this.sendMediaVideosRow = i3 + 4;
                    this.sendMediaStickerGifsRow = i3 + 5;
                    this.sendMediaMusicRow = i3 + 6;
                    this.sendMediaFilesRow = i3 + 7;
                    this.sendMediaVoiceMessagesRow = i3 + 8;
                    this.sendMediaVideoMessagesRow = i3 + 9;
                    this.sendMediaEmbededLinksRow = i3 + 10;
                    this.sendPollsRow = i3 + 11;
                    this.rowCount = i3 + 13;
                    this.sendReactionsRow = i3 + 12;
                }
                int i6 = this.rowCount;
                this.addUsersRow = i6;
                this.pinMessagesRow = i6 + 1;
                this.rowCount = i6 + 3;
                this.editTagRow = i6 + 2;
            }
            int i7 = this.rowCount;
            int i8 = i7 + 1;
            this.rowCount = i8;
            this.changeInfoRow = i7;
            if (z4) {
                this.rowCount = i7 + 2;
                this.manageLinkedPeersRow = i8;
            } else if (this.isForum) {
                this.rowCount = i7 + 2;
                this.manageTopicsRow = i8;
            }
            if (ChatObject.isChannel(this.currentChat)) {
                TLRPC.Chat chat3 = this.currentChat;
                if (chat3.creator && chat3.megagroup && !chat3.gigagroup && !this.isCommunity) {
                    int i9 = chat3.participants_count;
                    TLRPC.ChatFull chatFull3 = this.info;
                    if (Math.max(i9, chatFull3 != null ? chatFull3.participants_count : 0) >= getMessagesController().maxMegagroupCount - 1000) {
                        int i10 = this.rowCount;
                        this.participantsDivider2Row = i10;
                        this.gigaHeaderRow = i10 + 1;
                        this.gigaConvertRow = i10 + 2;
                        this.rowCount = i10 + 4;
                        this.gigaInfoRow = i10 + 3;
                    }
                }
            }
            TLRPC.ChatFull chatFull4 = this.info;
            if (chatFull4 != null && chatFull4.paid_messages_available && !this.isCommunity && ChatObject.canUserDoAction(this.currentChat, 2) && (ChatObject.isChannel(this.currentChat) || ((chat = this.currentChat) != null && chat.creator))) {
                if (this.participantsDivider2Row == -1) {
                    int i11 = this.rowCount;
                    this.rowCount = i11 + 1;
                    this.participantsDivider2Row = i11;
                }
                int i12 = this.rowCount;
                this.payRow = i12;
                int i13 = i12 + 2;
                this.rowCount = i13;
                this.payInfoRow = i12 + 1;
                if (this.enablePrice) {
                    this.priceHeaderRow = i13;
                    this.priceRow = i12 + 3;
                    this.rowCount = i12 + 5;
                    this.priceInfoRow = i12 + 4;
                }
            }
            if (!this.isCommunity) {
                if (ChatObject.isChannel(this.currentChat) || !this.currentChat.creator) {
                    TLRPC.Chat chat4 = this.currentChat;
                    if ((chat4.megagroup && !chat4.gigagroup && ChatObject.canBlockUsers(chat4)) || !ChatObject.hasAdminRights(this.currentChat)) {
                        if (this.participantsDivider2Row == -1) {
                            int i14 = this.rowCount;
                            this.rowCount = i14 + 1;
                            this.participantsDivider2Row = i14;
                        }
                        int i15 = this.rowCount;
                        this.slowmodeRow = i15;
                        this.slowmodeSelectRow = i15 + 1;
                        this.rowCount = i15 + 3;
                        this.slowmodeInfoRow = i15 + 2;
                    }
                }
            }
            if (isNotRestrictBoostersVisible() && !this.isCommunity) {
                if (this.participantsDivider2Row == -1) {
                    int i16 = this.rowCount;
                    this.rowCount = i16 + 1;
                    this.participantsDivider2Row = i16;
                }
                int i17 = this.rowCount;
                int i18 = i17 + 1;
                this.rowCount = i18;
                this.dontRestrictBoostersRow = i17;
                if (this.isEnabledNotRestrictBoosters) {
                    this.rowCount = i17 + 2;
                    this.dontRestrictBoostersSliderRow = i18;
                }
                int i19 = this.rowCount;
                this.rowCount = i19 + 1;
                this.dontRestrictBoostersInfoRow = i19;
            }
            if (ChatObject.isChannel(this.currentChat) && ChatObject.hasAdminRights(this.currentChat) && !this.isCommunity) {
                if (this.participantsDivider2Row == -1) {
                    int i20 = this.rowCount;
                    this.rowCount = i20 + 1;
                    this.participantsDivider2Row = i20;
                }
                int i21 = this.rowCount;
                this.rowCount = i21 + 1;
                this.removedUsersRow = i21;
            }
            if ((this.slowmodeInfoRow == -1 && this.gigaHeaderRow == -1) || this.removedUsersRow != -1) {
                int i22 = this.rowCount;
                this.rowCount = i22 + 1;
                this.participantsDividerRow = i22;
            }
            if (ChatObject.canBlockUsers(this.currentChat) && !this.isCommunity && getParticipantsCount() > 1 && (ChatObject.isChannel(this.currentChat) || this.currentChat.creator)) {
                int i23 = this.rowCount;
                this.rowCount = i23 + 1;
                this.addNewRow = i23;
            }
            if (this.loadingUsers && !this.firstLoaded) {
                TLRPC.ChatFull chatFull5 = this.info;
                if (chatFull5 == null || chatFull5.banned_count <= 0) {
                    return;
                }
                int i24 = this.rowCount;
                this.rowCount = i24 + 1;
                this.loadingUserCellRow = i24;
                return;
            }
            if (!this.participants.isEmpty()) {
                int i25 = this.rowCount;
                this.participantsStartRow = i25;
                int size = i25 + this.participants.size();
                this.rowCount = size;
                this.participantsEndRow = size;
            }
            if (this.addNewRow == -1 && this.participantsStartRow == -1) {
                return;
            }
            int i26 = this.rowCount;
            this.rowCount = i26 + 1;
            this.addNewSectionRow = i26;
            return;
        }
        if (i == 0) {
            if (ChatObject.canBlockUsers(this.currentChat)) {
                int i27 = this.rowCount;
                this.rowCount = i27 + 1;
                this.addNewRow = i27;
                if (!this.participants.isEmpty() || (this.loadingUsers && !this.firstLoaded && (chatFull2 = this.info) != null && chatFull2.kicked_count > 0)) {
                    int i28 = this.rowCount;
                    this.rowCount = i28 + 1;
                    this.participantsInfoRow = i28;
                }
            }
            if (this.loadingUsers && !(z3 = this.firstLoaded)) {
                if (z3) {
                    return;
                }
                int i29 = this.rowCount;
                this.restricted1SectionRow = i29;
                this.rowCount = i29 + 2;
                this.loadingUserCellRow = i29 + 1;
                return;
            }
            if (!this.participants.isEmpty()) {
                int i30 = this.rowCount;
                int i31 = i30 + 1;
                this.rowCount = i31;
                this.restricted1SectionRow = i30;
                this.participantsStartRow = i31;
                int size2 = i31 + this.participants.size();
                this.rowCount = size2;
                this.participantsEndRow = size2;
            }
            if (this.participantsStartRow != -1) {
                int i32 = this.participantsInfoRow;
                int i33 = this.rowCount;
                if (i32 == -1) {
                    this.rowCount = i33 + 1;
                    this.participantsInfoRow = i33;
                    return;
                } else {
                    this.rowCount = i33 + 1;
                    this.addNewSectionRow = i33;
                    return;
                }
            }
            int i34 = this.rowCount;
            this.rowCount = i34 + 1;
            this.blockedEmptyRow = i34;
            return;
        }
        if (i == 1) {
            if (!this.transfer && ChatObject.isChannel(this.currentChat)) {
                TLRPC.Chat chat5 = this.currentChat;
                if (chat5.megagroup && !chat5.gigagroup && ((chatFull = this.info) == null || chatFull.participants_count <= 200 || (!this.isChannel && chatFull.can_set_stickers))) {
                    boolean zHasAdminRights = ChatObject.hasAdminRights(chat5);
                    int i35 = this.rowCount;
                    if (zHasAdminRights) {
                        this.antiSpamRow = i35;
                        this.rowCount = i35 + 2;
                        this.antiSpamInfoRow = i35 + 1;
                    } else {
                        this.rowCount = i35 + 1;
                        this.addNewSectionRow = i35;
                    }
                }
            }
            if (ChatObject.canAddAdmins(this.currentChat)) {
                int i36 = this.rowCount;
                this.rowCount = i36 + 1;
                this.addNewRow = i36;
            }
            if (!this.loadingUsers || (z2 = this.firstLoaded)) {
                if (!this.participants.isEmpty()) {
                    int i37 = this.rowCount;
                    this.participantsStartRow = i37;
                    int size3 = i37 + this.participants.size();
                    this.rowCount = size3;
                    this.participantsEndRow = size3;
                }
                if (!this.isCommunity) {
                    int i38 = this.rowCount;
                    this.rowCount = i38 + 1;
                    this.participantsInfoRow = i38;
                }
            } else if (!z2) {
                int i39 = this.rowCount;
                this.rowCount = i39 + 1;
                this.loadingUserCellRow = i39;
            }
            if (this.transfer || !ChatObject.isChannelAndNotMegaGroup(this.currentChat) || !ChatObject.hasAdminRights(this.currentChat) || this.isCommunity) {
                return;
            }
            int i40 = this.rowCount;
            int i41 = i40 + 1;
            this.rowCount = i41;
            this.signMessagesRow = i40;
            if (this.signatures) {
                this.signMessagesProfilesRow = i41;
                this.rowCount = i40 + 3;
                this.signMessagesInfoRow = i40 + 2;
                return;
            } else {
                this.rowCount = i40 + 2;
                this.signMessagesInfoRow = i41;
                return;
            }
        }
        if (i == 2) {
            if (ChatObject.isChannel(this.currentChat) && ChatObject.hasAdminRights(this.currentChat) && !ChatObject.isChannelAndNotMegaGroup(this.currentChat) && !this.needOpenSearch) {
                int i42 = this.rowCount;
                this.hideMembersRow = i42;
                this.rowCount = i42 + 2;
                this.hideMembersInfoRow = i42 + 1;
            }
            if (this.selectType == 0 && ChatObject.canAddUsers(this.currentChat)) {
                int i43 = this.rowCount;
                this.rowCount = i43 + 1;
                this.addNewRow = i43;
            }
            if (this.selectType == 0 && ChatObject.canUserDoAdminAction(this.currentChat, 3)) {
                int i44 = this.rowCount;
                this.rowCount = i44 + 1;
                this.addNew2Row = i44;
            }
            if (this.loadingUsers && !(z = this.firstLoaded)) {
                if (z) {
                    return;
                }
                if (this.selectType == 0) {
                    int i45 = this.rowCount;
                    this.rowCount = i45 + 1;
                    this.loadingHeaderRow = i45;
                }
                int i46 = this.rowCount;
                this.rowCount = i46 + 1;
                this.loadingUserCellRow = i46;
                return;
            }
            if (!this.contacts.isEmpty()) {
                int i47 = this.rowCount;
                int i48 = i47 + 1;
                this.rowCount = i48;
                this.contactsHeaderRow = i47;
                this.contactsStartRow = i48;
                int size4 = i48 + this.contacts.size();
                this.rowCount = size4;
                this.contactsEndRow = size4;
                i = 1;
            }
            if (this.bots.isEmpty()) {
                i2 = i;
            } else {
                int i49 = this.rowCount;
                int i50 = i49 + 1;
                this.rowCount = i50;
                this.botHeaderRow = i49;
                this.botStartRow = i50;
                int size5 = i50 + this.bots.size();
                this.rowCount = size5;
                this.botEndRow = size5;
            }
            if (!this.participants.isEmpty()) {
                if (i2 != 0) {
                    int i51 = this.rowCount;
                    this.rowCount = i51 + 1;
                    this.membersHeaderRow = i51;
                }
                int i52 = this.rowCount;
                this.participantsStartRow = i52;
                int size6 = i52 + this.participants.size();
                this.rowCount = size6;
                this.participantsEndRow = size6;
            }
            int i53 = this.rowCount;
            if (i53 != 0) {
                this.rowCount = i53 + 1;
                this.participantsInfoRow = i53;
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        getNotificationCenter().addObserver(this, NotificationCenter.chatInfoDidLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.dialogDeleted);
        loadChatParticipants(0, 200);
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.chatInfoDidLoad);
        getNotificationCenter().removeObserver(this, NotificationCenter.dialogDeleted);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        int i;
        boolean z = false;
        this.searching = false;
        this.actionBar.setBackButtonImage(C2665R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        int i2 = this.type;
        if (i2 == 3) {
            this.actionBar.setTitle(LocaleController.getString("ChannelPermissions", C2665R.string.ChannelPermissions));
        } else if (i2 == 0) {
            this.actionBar.setTitle(LocaleController.getString("ChannelBlacklist", C2665R.string.ChannelBlacklist));
        } else if (i2 == 1) {
            this.actionBar.setTitle(LocaleController.getString(C2665R.string.ChannelAdministrators));
        } else if (i2 == 2) {
            int i3 = this.selectType;
            if (i3 == 0) {
                boolean z2 = this.isChannel;
                ActionBar actionBar = this.actionBar;
                if (z2) {
                    actionBar.setTitle(LocaleController.getString(C2665R.string.ChannelSubscribers));
                } else {
                    actionBar.setTitle(LocaleController.getString("ChannelMembers", C2665R.string.ChannelMembers));
                }
            } else if (i3 == 1) {
                this.actionBar.setTitle(LocaleController.getString("ChannelAddAdmin", C2665R.string.ChannelAddAdmin));
            } else if (i3 == 2) {
                this.actionBar.setTitle(LocaleController.getString("ChannelBlockUser", C2665R.string.ChannelBlockUser));
            } else if (i3 == 3) {
                this.actionBar.setTitle(LocaleController.getString("ChannelAddException", C2665R.string.ChannelAddException));
            }
        }
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ChatUsersActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i4) {
                if (i4 == -1) {
                    if (ChatUsersActivity.this.checkDiscard(true)) {
                        ChatUsersActivity.this.finishFragment();
                    }
                } else if (i4 == 1) {
                    ChatUsersActivity.this.processDone();
                }
            }
        });
        if (this.selectType != 0 || this.type == 2 || (ChatObject.hasAdminRights(this.currentChat) && ((i = this.type) == 0 || i == 3))) {
            this.searchListViewAdapter = new SearchAdapter(context);
            ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
            ActionBarMenuItem actionBarMenuItemSearchListener = actionBarMenuCreateMenu.addItem(0, C2665R.drawable.outline_header_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.ChatUsersActivity.2
                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onSearchExpand() {
                    ChatUsersActivity.this.searching = true;
                    if (ChatUsersActivity.this.doneItem != null) {
                        ChatUsersActivity.this.doneItem.setVisibility(8);
                    }
                }

                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onSearchCollapse() {
                    ChatUsersActivity.this.searchListViewAdapter.searchUsers(null);
                    ChatUsersActivity.this.searching = false;
                    ChatUsersActivity.this.listView.setAnimateEmptyView(false, 0);
                    ChatUsersActivity.this.listView.setAdapter(ChatUsersActivity.this.listViewAdapter);
                    ChatUsersActivity.this.listViewAdapter.notifyDataSetChanged();
                    ChatUsersActivity.this.listView.setFastScrollVisible(true);
                    ChatUsersActivity.this.listView.setVerticalScrollBarEnabled(false);
                    if (ChatUsersActivity.this.doneItem != null) {
                        ChatUsersActivity.this.doneItem.setVisibility(0);
                    }
                }

                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onTextChanged(EditText editText) {
                    if (ChatUsersActivity.this.searchListViewAdapter == null) {
                        return;
                    }
                    String string = editText.getText().toString();
                    int itemCount = ChatUsersActivity.this.listView.getAdapter() == null ? 0 : ChatUsersActivity.this.listView.getAdapter().getItemCount();
                    ChatUsersActivity.this.searchListViewAdapter.searchUsers(string);
                    if (TextUtils.isEmpty(string) && ChatUsersActivity.this.listView != null && ChatUsersActivity.this.listView.getAdapter() != ChatUsersActivity.this.listViewAdapter) {
                        ChatUsersActivity.this.listView.setAnimateEmptyView(false, 0);
                        ChatUsersActivity.this.listView.setAdapter(ChatUsersActivity.this.listViewAdapter);
                        if (itemCount == 0) {
                            ChatUsersActivity.this.showItemsAnimated(0);
                        }
                    }
                    ChatUsersActivity.this.progressBar.setVisibility(8);
                    ChatUsersActivity.this.flickerLoadingView.setVisibility(0);
                }
            });
            this.searchItem = actionBarMenuItemSearchListener;
            if (this.type == 0 && !this.firstLoaded) {
                actionBarMenuItemSearchListener.setVisibility(8);
            }
            int i4 = this.type;
            ActionBarMenuItem actionBarMenuItem = this.searchItem;
            if (i4 == 3) {
                actionBarMenuItem.setSearchFieldHint(LocaleController.getString("ChannelSearchException", C2665R.string.ChannelSearchException));
            } else {
                actionBarMenuItem.setSearchFieldHint(LocaleController.getString("Search", C2665R.string.Search));
            }
            if (!ChatObject.isChannel(this.currentChat) && !this.currentChat.creator) {
                this.searchItem.setVisibility(8);
            }
            if (this.type == 3) {
                this.doneItem = actionBarMenuCreateMenu.addItemWithWidth(1, C2665R.drawable.ic_ab_done, AndroidUtilities.dp(56.0f), LocaleController.getString("Done", C2665R.string.Done));
            }
        } else if (this.type == 1 && ChatObject.isChannelAndNotMegaGroup(this.currentChat) && ChatObject.hasAdminRights(this.currentChat)) {
            this.doneItem = this.actionBar.createMenu().addItemWithWidth(1, C2665R.drawable.ic_ab_done, AndroidUtilities.dp(56.0f), LocaleController.getString("Done", C2665R.string.Done));
        }
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        FrameLayout frameLayout2 = (FrameLayout) this.fragmentView;
        FrameLayout frameLayout3 = new FrameLayout(context);
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        this.flickerLoadingView = flickerLoadingView;
        flickerLoadingView.setViewType(6);
        this.flickerLoadingView.showDate(false);
        this.flickerLoadingView.setUseHeaderOffset(false);
        FlickerLoadingView flickerLoadingView2 = this.flickerLoadingView;
        int i5 = Theme.key_actionBarDefaultSubmenuBackground;
        int i6 = Theme.key_listSelector;
        flickerLoadingView2.setColors(i5, i6, i6);
        frameLayout3.addView(this.flickerLoadingView, LayoutHelper.createFrame(-1, -1.0f, 0, 12.0f, 30.0f, 12.0f, 0.0f));
        RadialProgressView radialProgressView = new RadialProgressView(context);
        this.progressBar = radialProgressView;
        frameLayout3.addView(radialProgressView, LayoutHelper.createFrame(-2, -2, 17));
        this.flickerLoadingView.setVisibility(8);
        this.progressBar.setVisibility(8);
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, frameLayout3, 1);
        this.emptyView = stickerEmptyView;
        stickerEmptyView.title.setText(LocaleController.getString(C2665R.string.NoResult));
        this.emptyView.subtitle.setText(LocaleController.getString(C2665R.string.SearchEmptyViewFilteredSubtitle2));
        this.emptyView.setVisibility(8);
        this.emptyView.setAnimateLayoutChange(true);
        this.emptyView.showProgress(true, false);
        frameLayout2.addView(this.emptyView, LayoutHelper.createFrame(-1, -1.0f));
        this.emptyView.addView(frameLayout3, 0);
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.ChatUsersActivity.3
            @Override // android.view.View
            public void invalidate() {
                super.invalidate();
                View view = ChatUsersActivity.this.fragmentView;
                if (view != null) {
                    view.invalidate();
                }
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setSections();
        RecyclerListView recyclerListView2 = this.listView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, i, z) { // from class: org.telegram.ui.ChatUsersActivity.4
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public int scrollVerticallyBy(int i7, RecyclerView.Recycler recycler, RecyclerView.State state) {
                if (!ChatUsersActivity.this.firstLoaded && ChatUsersActivity.this.type == 0 && ChatUsersActivity.this.participants.size() == 0) {
                    return 0;
                }
                return super.scrollVerticallyBy(i7, recycler, state);
            }
        };
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.ChatUsersActivity.5
            AnimationNotificationsLocker notificationsLocker = new AnimationNotificationsLocker();

            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onAllAnimationsDone() {
                super.onAllAnimationsDone();
                this.notificationsLocker.unlock();
            }

            @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
            public void runPendingAnimations() {
                boolean zIsEmpty = this.mPendingRemovals.isEmpty();
                boolean zIsEmpty2 = this.mPendingMoves.isEmpty();
                boolean zIsEmpty3 = this.mPendingChanges.isEmpty();
                boolean zIsEmpty4 = this.mPendingAdditions.isEmpty();
                if (!zIsEmpty || !zIsEmpty2 || !zIsEmpty4 || !zIsEmpty3) {
                    this.notificationsLocker.lock();
                }
                super.runPendingAnimations();
            }

            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onMoveAnimationUpdate(viewHolder);
                ChatUsersActivity.this.listView.invalidate();
            }

            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onChangeAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onChangeAnimationUpdate(viewHolder);
                ChatUsersActivity.this.listView.invalidate();
            }
        };
        defaultItemAnimator.setDurations(420L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setAnimateEmptyView(true, 0);
        RecyclerListView recyclerListView3 = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.listViewAdapter = listAdapter;
        recyclerListView3.setAdapter(listAdapter);
        this.listView.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.actionBar.setAdaptiveBackground(this.listView);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i7, float f, float f2) {
                this.f$0.lambda$createView$6(view, i7, f, f2);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i7) {
                return this.f$0.lambda$createView$7(view, i7);
            }
        });
        if (this.searchItem != null) {
            this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ChatUsersActivity.11
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i7, int i8) {
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i7) {
                    if (i7 == 1) {
                        AndroidUtilities.hideKeyboard(ChatUsersActivity.this.getParentActivity().getCurrentFocus());
                    }
                }
            });
        }
        UndoView undoView = new UndoView(context);
        this.undoView = undoView;
        frameLayout2.addView(undoView, LayoutHelper.createFrame(-1, -2.0f, 83, 8.0f, 0.0f, 8.0f, 8.0f));
        updateRows();
        this.listView.setEmptyView(this.emptyView);
        this.listView.setAnimateEmptyView(false, 0);
        if (this.needOpenSearch) {
            this.searchItem.openSearch(false);
        }
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:386:0x07db  */
    /* JADX WARN: Removed duplicated region for block: B:405:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$createView$6(View view, int i, float f, float f2) {
        TLRPC.ChatFull chatFull;
        TLRPC.ChatFull chatFull2;
        View viewFindViewByPosition;
        long j;
        TLObject item;
        long j2;
        String str;
        boolean z;
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        long j3;
        long peerId;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2;
        final TLObject tLObject;
        boolean zCanBlockUsers;
        boolean z2;
        int i2;
        TLRPC.TL_chatBannedRights tL_chatBannedRights2;
        int i3 = 0;
        boolean z3 = this.listView.getAdapter() == this.listViewAdapter;
        if (i == this.signMessagesRow) {
            boolean z4 = !this.signatures;
            this.signatures = z4;
            ((TextCheckCell) view).setChecked(z4);
            AndroidUtilities.updateVisibleRows(this.listView);
            DiffCallback diffCallbackSaveState = saveState();
            updateRows();
            updateListAnimated(diffCallbackSaveState);
            this.listViewAdapter.notifyItemChanged(this.signMessagesInfoRow);
        } else if (i == this.signMessagesProfilesRow) {
            boolean z5 = !this.profiles;
            this.profiles = z5;
            ((TextCheckCell) view).setChecked(z5);
            AndroidUtilities.updateVisibleRows(this.listView);
            DiffCallback diffCallbackSaveState2 = saveState();
            updateRows();
            updateListAnimated(diffCallbackSaveState2);
            this.listViewAdapter.notifyItemChanged(this.signMessagesInfoRow);
        } else if (i == this.payRow) {
            boolean z6 = !this.enablePrice;
            this.enablePrice = z6;
            ((TextCheckCell) view).setChecked(z6);
            AndroidUtilities.updateVisibleRows(this.listView);
            DiffCallback diffCallbackSaveState3 = saveState();
            updateRows();
            updateListAnimated(diffCallbackSaveState3);
            this.listViewAdapter.notifyItemChanged(this.payRow);
        } else if (z3) {
            if (isExpandableSendMediaRow(i)) {
                if (!ChatObject.canBlockUsers(this.currentChat)) {
                    return;
                }
                CheckBoxCell checkBoxCell = (CheckBoxCell) view;
                if (i == this.sendMediaPhotosRow) {
                    this.defaultBannedRights.send_photos = !r9.send_photos;
                } else if (i == this.sendMediaVideosRow) {
                    this.defaultBannedRights.send_videos = !r9.send_videos;
                } else if (i == this.sendMediaStickerGifsRow) {
                    TLRPC.TL_chatBannedRights tL_chatBannedRights3 = this.defaultBannedRights;
                    boolean z7 = !tL_chatBannedRights3.send_stickers;
                    tL_chatBannedRights3.send_inline = z7;
                    tL_chatBannedRights3.send_gifs = z7;
                    tL_chatBannedRights3.send_games = z7;
                    tL_chatBannedRights3.send_stickers = z7;
                } else if (i == this.sendMediaMusicRow) {
                    this.defaultBannedRights.send_audios = !r9.send_audios;
                } else if (i == this.sendMediaFilesRow) {
                    this.defaultBannedRights.send_docs = !r9.send_docs;
                } else if (i == this.sendMediaVoiceMessagesRow) {
                    this.defaultBannedRights.send_voices = !r9.send_voices;
                } else if (i == this.sendMediaVideoMessagesRow) {
                    this.defaultBannedRights.send_roundvideos = !r9.send_roundvideos;
                } else if (i == this.sendMediaEmbededLinksRow) {
                    if (this.defaultBannedRights.send_plain && (viewFindViewByPosition = this.layoutManager.findViewByPosition(this.sendMessagesRow)) != null) {
                        AndroidUtilities.shakeViewSpring(viewFindViewByPosition);
                        BotWebViewVibrationEffect.APP_ERROR.vibrate();
                        return;
                    } else {
                        this.defaultBannedRights.embed_links = !r9.embed_links;
                    }
                } else if (i == this.sendPollsRow) {
                    this.defaultBannedRights.send_polls = !r9.send_polls;
                } else if (i == this.sendReactionsRow) {
                    this.defaultBannedRights.send_reactions = !r9.send_reactions;
                }
                checkBoxCell.setChecked(!checkBoxCell.isChecked(), true);
                AndroidUtilities.updateVisibleRows(this.listView);
                DiffCallback diffCallbackSaveState4 = saveState();
                updateRows();
                updateListAnimated(diffCallbackSaveState4);
            } else if (i == this.dontRestrictBoostersRow) {
                TextCheckCell2 textCheckCell2 = (TextCheckCell2) view;
                boolean z8 = !textCheckCell2.isChecked();
                this.isEnabledNotRestrictBoosters = z8;
                textCheckCell2.setChecked(z8);
                AndroidUtilities.updateVisibleRows(this.listView);
                DiffCallback diffCallbackSaveState5 = saveState();
                updateRows();
                updateListAnimated(diffCallbackSaveState5);
            } else {
                if (i == this.addNewRow) {
                    int i4 = this.type;
                    if (i4 == 0 || i4 == 3) {
                        Bundle bundle = new Bundle();
                        bundle.putLong("chat_id", this.chatId);
                        bundle.putInt("type", 2);
                        bundle.putInt("selectType", this.type == 0 ? 2 : 3);
                        ChatUsersActivity chatUsersActivity = new ChatUsersActivity(bundle);
                        chatUsersActivity.setInfo(this.info);
                        chatUsersActivity.setBannedRights(this.defaultBannedRights);
                        chatUsersActivity.setDelegate(new ChatUsersActivityDelegate() { // from class: org.telegram.ui.ChatUsersActivity.6
                            @Override // org.telegram.ui.ChatUsersActivity.ChatUsersActivityDelegate
                            public void didAddParticipantToList(long j4, TLObject tLObject2) {
                                if (ChatUsersActivity.this.participantsMap.get(j4) == null) {
                                    DiffCallback diffCallbackSaveState6 = ChatUsersActivity.this.saveState();
                                    ChatUsersActivity.this.participants.add(tLObject2);
                                    ChatUsersActivity.this.participantsMap.put(j4, tLObject2);
                                    ChatUsersActivity chatUsersActivity2 = ChatUsersActivity.this;
                                    chatUsersActivity2.sortUsers(chatUsersActivity2.participants);
                                    ChatUsersActivity.this.updateListAnimated(diffCallbackSaveState6);
                                }
                            }

                            @Override // org.telegram.ui.ChatUsersActivity.ChatUsersActivityDelegate
                            public void didKickParticipant(long j4) {
                                if (ChatUsersActivity.this.participantsMap.get(j4) == null) {
                                    DiffCallback diffCallbackSaveState6 = ChatUsersActivity.this.saveState();
                                    TLRPC.TL_channelParticipantBanned tL_channelParticipantBanned = new TLRPC.TL_channelParticipantBanned();
                                    if (j4 > 0) {
                                        TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                                        tL_channelParticipantBanned.peer = tL_peerUser;
                                        tL_peerUser.user_id = j4;
                                    } else {
                                        TLRPC.TL_peerChannel tL_peerChannel = new TLRPC.TL_peerChannel();
                                        tL_channelParticipantBanned.peer = tL_peerChannel;
                                        tL_peerChannel.channel_id = -j4;
                                    }
                                    tL_channelParticipantBanned.date = ChatUsersActivity.this.getConnectionsManager().getCurrentTime();
                                    tL_channelParticipantBanned.kicked_by = ChatUsersActivity.this.getAccountInstance().getUserConfig().clientUserId;
                                    ChatUsersActivity.this.info.kicked_count++;
                                    ChatUsersActivity.this.participants.add(tL_channelParticipantBanned);
                                    ChatUsersActivity.this.participantsMap.put(j4, tL_channelParticipantBanned);
                                    ChatUsersActivity chatUsersActivity2 = ChatUsersActivity.this;
                                    chatUsersActivity2.sortUsers(chatUsersActivity2.participants);
                                    ChatUsersActivity.this.updateListAnimated(diffCallbackSaveState6);
                                }
                            }
                        });
                        presentFragment(chatUsersActivity);
                        return;
                    }
                    if (i4 == 1) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putLong("chat_id", this.chatId);
                        bundle2.putInt("type", 2);
                        bundle2.putInt("selectType", 1);
                        ChatUsersActivity chatUsersActivity2 = new ChatUsersActivity(bundle2);
                        chatUsersActivity2.setDelegate(new C34027());
                        chatUsersActivity2.setInfo(this.info);
                        presentFragment(chatUsersActivity2);
                        return;
                    }
                    if (i4 == 2) {
                        Bundle bundle3 = new Bundle();
                        bundle3.putBoolean("addToGroup", true);
                        bundle3.putLong(this.isChannel ? "channelId" : "chatId", this.currentChat.id);
                        GroupCreateActivity groupCreateActivity = new GroupCreateActivity(bundle3);
                        groupCreateActivity.setInfo(this.info);
                        LongSparseArray<TLObject> longSparseArray = this.contactsMap;
                        groupCreateActivity.setIgnoreUsers((longSparseArray == null || longSparseArray.size() == 0) ? this.participantsMap : this.contactsMap);
                        groupCreateActivity.setDelegate2(new C34038(groupCreateActivity));
                        presentFragment(groupCreateActivity);
                        return;
                    }
                    return;
                }
                if (i == this.recentActionsRow) {
                    presentFragment(new ChannelAdminLogActivity(this.currentChat));
                    return;
                }
                if (i == this.antiSpamRow) {
                    final TextCell textCell = (TextCell) view;
                    TLRPC.ChatFull chatFull3 = this.info;
                    if (chatFull3 != null && !chatFull3.antispam && getParticipantsCount() < getMessagesController().telegramAntispamGroupSizeMin) {
                        BulletinFactory.of(this).createSimpleBulletin(C2665R.raw.msg_antispam, AndroidUtilities.replaceTags(LocaleController.formatPluralString("ChannelAntiSpamForbidden", getMessagesController().telegramAntispamGroupSizeMin, new Object[0]))).show();
                        return;
                    }
                    if (this.info == null || !ChatObject.canUserDoAdminAction(this.currentChat, 13) || this.antiSpamToggleLoading) {
                        return;
                    }
                    this.antiSpamToggleLoading = true;
                    final boolean z9 = this.info.antispam;
                    TLRPC.TL_channels_toggleAntiSpam tL_channels_toggleAntiSpam = new TLRPC.TL_channels_toggleAntiSpam();
                    tL_channels_toggleAntiSpam.channel = getMessagesController().getInputChannel(this.chatId);
                    TLRPC.ChatFull chatFull4 = this.info;
                    boolean z10 = true ^ chatFull4.antispam;
                    chatFull4.antispam = z10;
                    tL_channels_toggleAntiSpam.enabled = z10;
                    textCell.setChecked(z10);
                    Switch checkBox = textCell.getCheckBox();
                    if (!ChatObject.canUserDoAdminAction(this.currentChat, 13) || ((chatFull2 = this.info) != null && !chatFull2.antispam && getParticipantsCount() < getMessagesController().telegramAntispamGroupSizeMin)) {
                        i3 = C2665R.drawable.permission_locked;
                    }
                    checkBox.setIcon(i3);
                    getConnectionsManager().sendRequest(tL_channels_toggleAntiSpam, new RequestDelegate() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda23
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$createView$1(textCell, z9, tLObject2, tL_error);
                        }
                    });
                    return;
                }
                if (i == this.hideMembersRow) {
                    final TextCell textCell2 = (TextCell) view;
                    if (getParticipantsCount() < getMessagesController().hiddenMembersGroupSizeMin) {
                        BulletinFactory.of(this).createSimpleBulletin(C2665R.raw.contacts_sync_off, AndroidUtilities.replaceTags(LocaleController.formatPluralString("ChannelHiddenMembersForbidden", getMessagesController().hiddenMembersGroupSizeMin, new Object[0]))).show();
                        return;
                    }
                    if (this.info == null || !ChatObject.canUserDoAdminAction(this.currentChat, 2) || this.hideMembersToggleLoading) {
                        return;
                    }
                    this.hideMembersToggleLoading = true;
                    final boolean z11 = this.info.participants_hidden;
                    TLRPC.TL_channels_toggleParticipantsHidden tL_channels_toggleParticipantsHidden = new TLRPC.TL_channels_toggleParticipantsHidden();
                    tL_channels_toggleParticipantsHidden.channel = getMessagesController().getInputChannel(this.chatId);
                    TLRPC.ChatFull chatFull5 = this.info;
                    boolean z12 = true ^ chatFull5.participants_hidden;
                    chatFull5.participants_hidden = z12;
                    tL_channels_toggleParticipantsHidden.enabled = z12;
                    textCell2.setChecked(z12);
                    Switch checkBox2 = textCell2.getCheckBox();
                    if (!ChatObject.canUserDoAdminAction(this.currentChat, 2) || ((chatFull = this.info) != null && !chatFull.participants_hidden && getParticipantsCount() < getMessagesController().hiddenMembersGroupSizeMin)) {
                        i3 = C2665R.drawable.permission_locked;
                    }
                    checkBox2.setIcon(i3);
                    getConnectionsManager().sendRequest(tL_channels_toggleParticipantsHidden, new RequestDelegate() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda24
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$createView$3(textCell2, z11, tLObject2, tL_error);
                        }
                    });
                    return;
                }
                if (i == this.tagsRow) {
                    if (this.currentChat == null) {
                        return;
                    }
                    final TextCell textCell3 = (TextCell) view;
                    final boolean zIsChecked = textCell3.isChecked();
                    textCell3.setChecked(!textCell3.isChecked());
                    TLRPC.TL_messages_editChatDefaultBannedRights tL_messages_editChatDefaultBannedRights = new TLRPC.TL_messages_editChatDefaultBannedRights();
                    tL_messages_editChatDefaultBannedRights.peer = MessagesController.getInputPeer(this.currentChat);
                    TLRPC.Chat chat = this.currentChat;
                    if (chat.default_banned_rights == null) {
                        chat.default_banned_rights = new TLRPC.TL_chatBannedRights();
                    }
                    TLRPC.TL_chatBannedRights tL_chatBannedRights4 = this.currentChat.default_banned_rights;
                    tL_messages_editChatDefaultBannedRights.banned_rights = tL_chatBannedRights4;
                    tL_chatBannedRights4.edit_rank = !textCell3.isChecked();
                    getConnectionsManager().sendRequestTyped(tL_messages_editChatDefaultBannedRights, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda25
                        @Override // org.telegram.messenger.Utilities.Callback2
                        public final void run(Object obj, Object obj2) {
                            this.f$0.lambda$createView$4(textCell3, zIsChecked, (TLRPC.Updates) obj, (TLRPC.TL_error) obj2);
                        }
                    });
                } else {
                    if (i == this.removedUsersRow) {
                        Bundle bundle4 = new Bundle();
                        bundle4.putLong("chat_id", this.chatId);
                        bundle4.putInt("type", 0);
                        ChatUsersActivity chatUsersActivity3 = new ChatUsersActivity(bundle4);
                        chatUsersActivity3.setInfo(this.info);
                        presentFragment(chatUsersActivity3);
                        return;
                    }
                    if (i == this.gigaConvertRow) {
                        showDialog(new DialogC34049(getParentActivity(), this));
                    } else {
                        if (i == this.addNew2Row) {
                            if (this.info != null) {
                                ManageLinksActivity manageLinksActivity = new ManageLinksActivity(this.chatId, 0L, 0);
                                TLRPC.ChatFull chatFull6 = this.info;
                                manageLinksActivity.setInfo(chatFull6, chatFull6.exported_invite);
                                presentFragment(manageLinksActivity);
                                return;
                            }
                            return;
                        }
                        if ((i > this.permissionsSectionRow && i <= Math.max(this.manageTopicsRow, this.changeInfoRow)) || i == this.manageLinkedPeersRow) {
                            TextCheckCell2 textCheckCell22 = (TextCheckCell2) view;
                            if (textCheckCell22.isEnabled() || i == this.sendMediaRow) {
                                if (textCheckCell22.hasIcon()) {
                                    if (ChatObject.isPublic(this.currentChat) && (i == this.pinMessagesRow || i == this.changeInfoRow)) {
                                        BulletinFactory.of(this).createErrorBulletin(LocaleController.getString(C2665R.string.EditCantEditPermissionsPublic)).show();
                                        return;
                                    } else if (ChatObject.isDiscussionGroup(this.currentAccount, this.chatId) && (i == this.pinMessagesRow || i == this.changeInfoRow)) {
                                        BulletinFactory.of(this).createErrorBulletin(LocaleController.getString(C2665R.string.EditCantEditPermissionsDiscussion)).show();
                                        return;
                                    } else {
                                        BulletinFactory.of(this).createErrorBulletin(LocaleController.getString("EditCantEditPermissions", C2665R.string.EditCantEditPermissions)).show();
                                        return;
                                    }
                                }
                                if (i == this.sendMediaRow) {
                                    DiffCallback diffCallbackSaveState6 = saveState();
                                    this.sendMediaExpanded = !this.sendMediaExpanded;
                                    AndroidUtilities.updateVisibleRows(this.listView);
                                    updateListAnimated(diffCallbackSaveState6);
                                    return;
                                }
                                textCheckCell22.setChecked(!textCheckCell22.isChecked());
                                if (i == this.changeInfoRow) {
                                    this.defaultBannedRights.change_info = !r0.change_info;
                                    return;
                                }
                                if (i == this.manageLinkedPeersRow) {
                                    this.defaultBannedRights.manage_linked_peers = !r0.manage_linked_peers;
                                    return;
                                }
                                if (i == this.addUsersRow) {
                                    this.defaultBannedRights.invite_users = !r0.invite_users;
                                    return;
                                }
                                if (i == this.manageTopicsRow) {
                                    this.defaultBannedRights.manage_topics = !r0.manage_topics;
                                    return;
                                }
                                if (i == this.pinMessagesRow) {
                                    this.defaultBannedRights.pin_messages = !r0.pin_messages;
                                    return;
                                }
                                if (i == this.editTagRow) {
                                    this.defaultBannedRights.edit_rank = !r0.edit_rank;
                                    return;
                                }
                                if (i == this.sendMessagesRow) {
                                    this.defaultBannedRights.send_plain = !r1.send_plain;
                                    int i5 = this.sendMediaEmbededLinksRow;
                                    if (i5 >= 0) {
                                        this.listViewAdapter.notifyItemChanged(i5);
                                    }
                                    int i6 = this.sendMediaRow;
                                    if (i6 >= 0) {
                                        this.listViewAdapter.notifyItemChanged(i6);
                                    }
                                    DiffCallback diffCallbackSaveState7 = saveState();
                                    updateRows();
                                    updateListAnimated(diffCallbackSaveState7);
                                    return;
                                }
                                if (i == this.sendMediaRow) {
                                    DiffCallback diffCallbackSaveState8 = saveState();
                                    this.sendMediaExpanded = !this.sendMediaExpanded;
                                    AndroidUtilities.updateVisibleRows(this.listView);
                                    updateListAnimated(diffCallbackSaveState8);
                                    return;
                                }
                                if (i == this.sendStickersRow) {
                                    TLRPC.TL_chatBannedRights tL_chatBannedRights5 = this.defaultBannedRights;
                                    boolean z13 = !tL_chatBannedRights5.send_stickers;
                                    tL_chatBannedRights5.send_inline = z13;
                                    tL_chatBannedRights5.send_gifs = z13;
                                    tL_chatBannedRights5.send_games = z13;
                                    tL_chatBannedRights5.send_stickers = z13;
                                    return;
                                }
                                if (i == this.embedLinksRow) {
                                    this.defaultBannedRights.embed_links = !r0.embed_links;
                                    return;
                                } else {
                                    if (i == this.sendPollsRow) {
                                        this.defaultBannedRights.send_polls = !r0.send_polls;
                                        return;
                                    }
                                    return;
                                }
                            }
                            return;
                        }
                    }
                }
            }
        }
        if (z3) {
            item = this.listViewAdapter.getItem(i);
            if (item instanceof TLRPC.User) {
                long j4 = ((TLRPC.User) item).id;
                str = _UrlKt.FRAGMENT_ENCODE_SET;
                z = true;
                tL_chatBannedRights = null;
                tL_chatAdminRights = null;
                j3 = j4;
                j = 0;
            } else if (item instanceof TLRPC.ChannelParticipant) {
                TLRPC.ChannelParticipant channelParticipant = (TLRPC.ChannelParticipant) item;
                peerId = MessageObject.getPeerId(channelParticipant.peer);
                TLRPC.TL_chatBannedRights tL_chatBannedRights6 = channelParticipant.banned_rights;
                TLRPC.TL_chatAdminRights tL_chatAdminRights3 = channelParticipant.admin_rights;
                String str2 = channelParticipant.rank;
                j = 0;
                z = !((channelParticipant instanceof TLRPC.TL_channelParticipantAdmin) || (channelParticipant instanceof TLRPC.TL_channelParticipantCreator)) || channelParticipant.can_edit;
                if ((item instanceof TLRPC.TL_channelParticipantCreator) && (tL_chatAdminRights3 = ((TLRPC.TL_channelParticipantCreator) item).admin_rights) == null) {
                    tL_chatAdminRights3 = new TLRPC.TL_chatAdminRights();
                    tL_chatAdminRights3.manage_ranks = true;
                    tL_chatAdminRights3.add_admins = true;
                    tL_chatAdminRights3.pin_messages = true;
                    tL_chatAdminRights3.manage_topics = true;
                    tL_chatAdminRights3.invite_users = true;
                    tL_chatAdminRights3.ban_users = true;
                    tL_chatAdminRights3.delete_messages = true;
                    tL_chatAdminRights3.edit_messages = true;
                    tL_chatAdminRights3.post_messages = true;
                    tL_chatAdminRights3.change_info = true;
                    if (!this.isChannel) {
                        tL_chatAdminRights3.manage_call = true;
                    }
                }
                tL_chatBannedRights = tL_chatBannedRights6;
                tL_chatAdminRights = tL_chatAdminRights3;
                str = str2;
                tLObject = item;
                j3 = peerId;
            } else {
                j = 0;
                if (!(item instanceof TLRPC.ChatParticipant)) {
                    j3 = 0;
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                    z = false;
                    tL_chatBannedRights = null;
                    tL_chatAdminRights = null;
                } else {
                    peerId = ((TLRPC.ChatParticipant) item).user_id;
                    z = this.currentChat.creator;
                    if (item instanceof TLRPC.TL_chatParticipantCreator) {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights4 = new TLRPC.TL_chatAdminRights();
                        tL_chatAdminRights4.manage_ranks = true;
                        tL_chatAdminRights4.add_admins = true;
                        tL_chatAdminRights4.pin_messages = true;
                        tL_chatAdminRights4.manage_topics = true;
                        tL_chatAdminRights4.invite_users = true;
                        tL_chatAdminRights4.ban_users = true;
                        tL_chatAdminRights4.delete_messages = true;
                        tL_chatAdminRights4.edit_messages = true;
                        tL_chatAdminRights4.post_messages = true;
                        tL_chatAdminRights4.change_info = true;
                        if (!this.isChannel) {
                            tL_chatAdminRights4.manage_call = true;
                        }
                        tL_chatAdminRights2 = tL_chatAdminRights4;
                    } else {
                        tL_chatAdminRights2 = null;
                    }
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                    tL_chatBannedRights = null;
                    tL_chatAdminRights = tL_chatAdminRights2;
                    tLObject = item;
                    j3 = peerId;
                }
            }
            tLObject = item;
        } else {
            j = 0;
            item = this.searchListViewAdapter.getItem(i);
            if (item instanceof TLRPC.User) {
                TLRPC.User user = (TLRPC.User) item;
                getMessagesController().putUser(user, false);
                long j5 = user.id;
                j2 = j5;
                item = getAnyParticipant(j5);
            } else if ((item instanceof TLRPC.ChannelParticipant) || (item instanceof TLRPC.ChatParticipant)) {
                j2 = 0;
            } else {
                j2 = 0;
                item = null;
            }
            if (item instanceof TLRPC.ChannelParticipant) {
                TLRPC.ChannelParticipant channelParticipant2 = (TLRPC.ChannelParticipant) item;
                peerId = MessageObject.getPeerId(channelParticipant2.peer);
                boolean z14 = !((channelParticipant2 instanceof TLRPC.TL_channelParticipantAdmin) || (channelParticipant2 instanceof TLRPC.TL_channelParticipantCreator)) || channelParticipant2.can_edit;
                tL_chatBannedRights = channelParticipant2.banned_rights;
                tL_chatAdminRights2 = channelParticipant2.admin_rights;
                str = channelParticipant2.rank;
                z = z14;
                tL_chatAdminRights = tL_chatAdminRights2;
                tLObject = item;
                j3 = peerId;
            } else {
                if (!(item instanceof TLRPC.ChatParticipant)) {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                    z = item == null;
                } else {
                    j2 = ((TLRPC.ChatParticipant) item).user_id;
                    z = this.currentChat.creator;
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                tL_chatBannedRights = null;
                tL_chatAdminRights = null;
                j3 = j2;
                tLObject = item;
            }
        }
        if (j3 == j) {
            return;
        }
        int i7 = this.selectType;
        if (i7 != 0) {
            if (i7 == 3 || i7 == 1) {
                if (i7 != 1 && z && ((tLObject instanceof TLRPC.TL_channelParticipantAdmin) || (tLObject instanceof TLRPC.TL_chatParticipantAdmin))) {
                    final TLRPC.User user2 = getMessagesController().getUser(Long.valueOf(j3));
                    AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                    builder.setTitle(LocaleController.getString("AppName", C2665R.string.AppName));
                    builder.setMessage(LocaleController.formatString("AdminWillBeRemoved", C2665R.string.AdminWillBeRemoved, UserObject.getUserName(user2)));
                    final boolean z15 = z;
                    final TLRPC.TL_chatBannedRights tL_chatBannedRights7 = tL_chatBannedRights;
                    final TLRPC.TL_chatAdminRights tL_chatAdminRights5 = tL_chatAdminRights;
                    final String str3 = str;
                    builder.setPositiveButton(LocaleController.getString("OK", C2665R.string.OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda26
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i8) {
                            this.f$0.lambda$createView$5(user2, tLObject, tL_chatAdminRights5, tL_chatBannedRights7, str3, z15, alertDialog, i8);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString("Cancel", C2665R.string.Cancel), null);
                    showDialog(builder.create());
                    return;
                }
                openRightsEdit(j3, tLObject, tL_chatAdminRights, tL_chatBannedRights, str, z, i7 == 1 ? 0 : 1, i7 == 1 || i7 == 3);
                return;
            }
            removeParticipant(j3);
            return;
        }
        TLRPC.TL_chatBannedRights tL_chatBannedRights8 = tL_chatBannedRights;
        int i8 = this.type;
        if (i8 == 1) {
            zCanBlockUsers = j3 != getUserConfig().getClientUserId() && (this.currentChat.creator || z);
        } else if (i8 == 0 || i8 == 3) {
            zCanBlockUsers = ChatObject.canBlockUsers(this.currentChat);
        } else {
            z2 = false;
            i2 = this.type;
            if (i2 != 0 || ((i2 != 1 && this.isChannel) || (i2 == 2 && this.selectType == 0))) {
                if (j3 != getUserConfig().getClientUserId()) {
                    return;
                }
                Bundle bundle5 = new Bundle();
                if (j3 > j) {
                    bundle5.putLong("user_id", j3);
                } else {
                    bundle5.putLong("chat_id", -j3);
                }
                presentFragment(new ProfileActivity(bundle5));
                return;
            }
            if (tL_chatBannedRights8 == null) {
                TLRPC.TL_chatBannedRights tL_chatBannedRights9 = new TLRPC.TL_chatBannedRights();
                tL_chatBannedRights9.view_messages = true;
                tL_chatBannedRights9.send_stickers = true;
                tL_chatBannedRights9.send_media = true;
                tL_chatBannedRights9.send_photos = true;
                tL_chatBannedRights9.send_videos = true;
                tL_chatBannedRights9.send_roundvideos = true;
                tL_chatBannedRights9.send_audios = true;
                tL_chatBannedRights9.send_voices = true;
                tL_chatBannedRights9.send_docs = true;
                tL_chatBannedRights9.embed_links = true;
                tL_chatBannedRights9.send_plain = true;
                tL_chatBannedRights9.send_messages = true;
                tL_chatBannedRights9.send_games = true;
                tL_chatBannedRights9.send_inline = true;
                tL_chatBannedRights9.send_gifs = true;
                tL_chatBannedRights9.pin_messages = true;
                tL_chatBannedRights9.edit_rank = true;
                tL_chatBannedRights9.send_reactions = true;
                tL_chatBannedRights9.send_polls = true;
                tL_chatBannedRights9.invite_users = true;
                tL_chatBannedRights9.manage_topics = true;
                tL_chatBannedRights9.change_info = true;
                tL_chatBannedRights2 = tL_chatBannedRights9;
            } else {
                tL_chatBannedRights2 = tL_chatBannedRights8;
            }
            ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(j3, this.chatId, tL_chatAdminRights, this.defaultBannedRights, tL_chatBannedRights2, str, this.type == 1 ? 0 : 1, z2, tLObject == null, null);
            chatRightsEditActivity.setDelegate(new ChatRightsEditActivity.ChatRightsEditActivityDelegate() { // from class: org.telegram.ui.ChatUsersActivity.10
                @Override // org.telegram.ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
                public void didSetRights(int i9, TLRPC.TL_chatAdminRights tL_chatAdminRights6, TLRPC.TL_chatBannedRights tL_chatBannedRights10, String str4) {
                    TLObject tLObject2 = tLObject;
                    if (tLObject2 instanceof TLRPC.ChannelParticipant) {
                        TLRPC.ChannelParticipant channelParticipant3 = (TLRPC.ChannelParticipant) tLObject2;
                        channelParticipant3.admin_rights = tL_chatAdminRights6;
                        channelParticipant3.banned_rights = tL_chatBannedRights10;
                        channelParticipant3.rank = str4;
                        ChatUsersActivity.this.updateParticipantWithRights(channelParticipant3, tL_chatAdminRights6, tL_chatBannedRights10, 0L, false);
                    }
                }

                @Override // org.telegram.ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
                public void didChangeOwner(TLRPC.User user3) {
                    ChatUsersActivity.this.onOwnerChaged(user3);
                }
            });
            presentFragment(chatRightsEditActivity);
            return;
        }
        z2 = zCanBlockUsers;
        i2 = this.type;
        if (i2 != 0) {
        }
        if (j3 != getUserConfig().getClientUserId()) {
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.ChatUsersActivity$7 */
    public class C34027 implements ChatUsersActivityDelegate {
        public C34027() {
        }

        @Override // org.telegram.ui.ChatUsersActivity.ChatUsersActivityDelegate
        public void didAddParticipantToList(long j, TLObject tLObject) {
            if (tLObject == null || ChatUsersActivity.this.participantsMap.get(j) != null) {
                return;
            }
            DiffCallback diffCallbackSaveState = ChatUsersActivity.this.saveState();
            ChatUsersActivity.this.participants.add(tLObject);
            ChatUsersActivity.this.participantsMap.put(j, tLObject);
            ChatUsersActivity.sortAdmins(ChatUsersActivity.this.participants);
            ChatUsersActivity.this.updateListAnimated(diffCallbackSaveState);
        }

        @Override // org.telegram.ui.ChatUsersActivity.ChatUsersActivityDelegate
        public void didChangeOwner(TLRPC.User user) {
            ChatUsersActivity.this.onOwnerChaged(user);
        }

        @Override // org.telegram.ui.ChatUsersActivity.ChatUsersActivityDelegate
        public void didSelectUser(long j) {
            final TLRPC.User user = ChatUsersActivity.this.getMessagesController().getUser(Long.valueOf(j));
            if (user != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$7$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$didSelectUser$0(user);
                    }
                }, 200L);
            }
            if (ChatUsersActivity.this.participantsMap.get(j) == null) {
                DiffCallback diffCallbackSaveState = ChatUsersActivity.this.saveState();
                TLRPC.TL_channelParticipantAdmin tL_channelParticipantAdmin = new TLRPC.TL_channelParticipantAdmin();
                TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                tL_channelParticipantAdmin.peer = tL_peerUser;
                tL_peerUser.user_id = user.id;
                tL_channelParticipantAdmin.date = ChatUsersActivity.this.getConnectionsManager().getCurrentTime();
                tL_channelParticipantAdmin.promoted_by = ChatUsersActivity.this.getAccountInstance().getUserConfig().clientUserId;
                ChatUsersActivity.this.participants.add(tL_channelParticipantAdmin);
                ChatUsersActivity.this.participantsMap.put(user.id, tL_channelParticipantAdmin);
                ChatUsersActivity.sortAdmins(ChatUsersActivity.this.participants);
                ChatUsersActivity.this.updateListAnimated(diffCallbackSaveState);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectUser$0(TLRPC.User user) {
            if (BulletinFactory.canShowBulletin(ChatUsersActivity.this)) {
                BulletinFactory.createPromoteToAdminBulletin(ChatUsersActivity.this, user.first_name).show();
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.ChatUsersActivity$8 */
    public class C34038 implements GroupCreateActivity.ContactsAddActivityDelegate {
        final /* synthetic */ GroupCreateActivity val$fragment;

        public static /* synthetic */ void $r8$lambda$PA6hqLhR41X8pAYxwG7PbJlMIiA(TLRPC.User user) {
        }

        public C34038(GroupCreateActivity groupCreateActivity) {
            this.val$fragment = groupCreateActivity;
        }

        @Override // org.telegram.ui.GroupCreateActivity.ContactsAddActivityDelegate
        public void didSelectUsers(ArrayList<TLRPC.User> arrayList, int i) {
            if (this.val$fragment.getParentActivity() == null) {
                return;
            }
            ChatUsersActivity.this.getMessagesController().addUsersToChat(ChatUsersActivity.this.currentChat, ChatUsersActivity.this, arrayList, i, new Consumer() { // from class: org.telegram.ui.ChatUsersActivity$8$$ExternalSyntheticLambda0
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$didSelectUsers$0((TLRPC.User) obj);
                }
            }, new Consumer() { // from class: org.telegram.ui.ChatUsersActivity$8$$ExternalSyntheticLambda1
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    ChatUsersActivity.C34038.$r8$lambda$PA6hqLhR41X8pAYxwG7PbJlMIiA((TLRPC.User) obj);
                }
            }, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectUsers$0(TLRPC.User user) {
            DiffCallback diffCallbackSaveState = ChatUsersActivity.this.saveState();
            ArrayList arrayList = (ChatUsersActivity.this.contactsMap == null || ChatUsersActivity.this.contactsMap.size() == 0) ? ChatUsersActivity.this.participants : ChatUsersActivity.this.contacts;
            LongSparseArray longSparseArray = (ChatUsersActivity.this.contactsMap == null || ChatUsersActivity.this.contactsMap.size() == 0) ? ChatUsersActivity.this.participantsMap : ChatUsersActivity.this.contactsMap;
            if (longSparseArray.get(user.id) == null) {
                if (ChatObject.isChannel(ChatUsersActivity.this.currentChat)) {
                    TLRPC.TL_channelParticipant tL_channelParticipant = new TLRPC.TL_channelParticipant();
                    tL_channelParticipant.inviter_id = ChatUsersActivity.this.getUserConfig().getClientUserId();
                    TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                    tL_channelParticipant.peer = tL_peerUser;
                    tL_peerUser.user_id = user.id;
                    tL_channelParticipant.date = ChatUsersActivity.this.getConnectionsManager().getCurrentTime();
                    arrayList.add(0, tL_channelParticipant);
                    longSparseArray.put(user.id, tL_channelParticipant);
                } else {
                    TLRPC.TL_chatParticipant tL_chatParticipant = new TLRPC.TL_chatParticipant();
                    tL_chatParticipant.user_id = user.id;
                    tL_chatParticipant.inviter_id = ChatUsersActivity.this.getUserConfig().getClientUserId();
                    arrayList.add(0, tL_chatParticipant);
                    longSparseArray.put(user.id, tL_chatParticipant);
                }
            }
            if (arrayList == ChatUsersActivity.this.participants) {
                ChatUsersActivity.sortAdmins(ChatUsersActivity.this.participants);
            }
            ChatUsersActivity.this.updateListAnimated(diffCallbackSaveState);
        }

        @Override // org.telegram.ui.GroupCreateActivity.ContactsAddActivityDelegate
        public void needAddBot(TLRPC.User user) {
            ChatUsersActivity.this.openRightsEdit(user.id, null, null, null, _UrlKt.FRAGMENT_ENCODE_SET, true, 0, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(final TextCell textCell, final boolean z, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
            getMessagesController().putChatFull(this.info);
        }
        if (tL_error != null && !"CHAT_NOT_MODIFIED".equals(tL_error.text)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$0(textCell, z);
                }
            });
        }
        this.antiSpamToggleLoading = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(TextCell textCell, boolean z) {
        TLRPC.ChatFull chatFull;
        if (getParentActivity() == null) {
            return;
        }
        this.info.antispam = z;
        textCell.setChecked(z);
        textCell.getCheckBox().setIcon((!ChatObject.canUserDoAdminAction(this.currentChat, 13) || ((chatFull = this.info) != null && chatFull.antispam && getParticipantsCount() < getMessagesController().telegramAntispamGroupSizeMin)) ? C2665R.drawable.permission_locked : 0);
        BulletinFactory.of(this).createSimpleBulletin(C2665R.raw.error, LocaleController.getString("UnknownError", C2665R.string.UnknownError)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(final TextCell textCell, final boolean z, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
            getMessagesController().putChatFull(this.info);
        }
        if (tL_error != null && !"CHAT_NOT_MODIFIED".equals(tL_error.text)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$2(textCell, z);
                }
            });
        }
        this.hideMembersToggleLoading = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(TextCell textCell, boolean z) {
        TLRPC.ChatFull chatFull;
        if (getParentActivity() == null) {
            return;
        }
        this.info.participants_hidden = z;
        textCell.setChecked(z);
        textCell.getCheckBox().setIcon((!ChatObject.canUserDoAdminAction(this.currentChat, 2) || ((chatFull = this.info) != null && chatFull.participants_hidden && getParticipantsCount() < getMessagesController().hiddenMembersGroupSizeMin)) ? C2665R.drawable.permission_locked : 0);
        BulletinFactory.of(this).createSimpleBulletin(C2665R.raw.error, LocaleController.getString("UnknownError", C2665R.string.UnknownError)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(TextCell textCell, boolean z, TLRPC.Updates updates, TLRPC.TL_error tL_error) {
        if (updates != null) {
            getMessagesController().processUpdates(updates, false);
        } else if (tL_error != null) {
            textCell.setChecked(z);
            BulletinFactory.of(this).showForError(tL_error);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.ChatUsersActivity$9 */
    public class DialogC34049 extends GigagroupConvertAlert {
        @Override // org.telegram.ui.Components.GigagroupConvertAlert
        public void onCancel() {
        }

        public DialogC34049(Context context, BaseFragment baseFragment) {
            super(context, baseFragment);
        }

        @Override // org.telegram.ui.Components.GigagroupConvertAlert
        public void onCovert() {
            ChatUsersActivity.this.getMessagesController().convertToGigaGroup(ChatUsersActivity.this.getParentActivity(), ChatUsersActivity.this.currentChat, ChatUsersActivity.this, new MessagesStorage.BooleanCallback() { // from class: org.telegram.ui.ChatUsersActivity$9$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
                public final void run(boolean z) {
                    this.f$0.lambda$onCovert$0(z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCovert$0(boolean z) {
            if (!z || ((BaseFragment) ChatUsersActivity.this).parentLayout == null) {
                return;
            }
            BaseFragment baseFragment = ((BaseFragment) ChatUsersActivity.this).parentLayout.getFragmentStack().get(((BaseFragment) ChatUsersActivity.this).parentLayout.getFragmentStack().size() - 2);
            if (baseFragment instanceof ChatEditActivity) {
                baseFragment.removeSelfFromStack();
                Bundle bundle = new Bundle();
                bundle.putLong("chat_id", ChatUsersActivity.this.chatId);
                ChatEditActivity chatEditActivity = new ChatEditActivity(bundle);
                chatEditActivity.setInfo(ChatUsersActivity.this.info);
                ((BaseFragment) ChatUsersActivity.this).parentLayout.addFragmentToStack(chatEditActivity, ((BaseFragment) ChatUsersActivity.this).parentLayout.getFragmentStack().size() - 1);
                ChatUsersActivity.this.finishFragment();
                chatEditActivity.showConvertTooltip();
                return;
            }
            ChatUsersActivity.this.finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(TLRPC.User user, TLObject tLObject, TLRPC.TL_chatAdminRights tL_chatAdminRights, TLRPC.TL_chatBannedRights tL_chatBannedRights, String str, boolean z, AlertDialog alertDialog, int i) {
        openRightsEdit(user.id, tLObject, tL_chatAdminRights, tL_chatBannedRights, str, z, this.selectType == 1 ? 0 : 1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$7(View view, int i) {
        if (getParentActivity() != null) {
            RecyclerView.Adapter adapter = this.listView.getAdapter();
            ListAdapter listAdapter = this.listViewAdapter;
            if (adapter == listAdapter) {
                return createMenuForParticipant(listAdapter.getItem(i), false, view);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getParticipantsCount() {
        ArrayList<TLRPC.ChatParticipant> arrayList;
        TLRPC.ChatFull chatFull = this.info;
        if (chatFull == null) {
            return 0;
        }
        int i = chatFull.participants_count;
        TLRPC.ChatParticipants chatParticipants = chatFull.participants;
        return (chatParticipants == null || (arrayList = chatParticipants.participants) == null) ? i : Math.max(i, arrayList.size());
    }

    private void setBannedRights(TLRPC.TL_chatBannedRights tL_chatBannedRights) {
        if (tL_chatBannedRights != null) {
            this.defaultBannedRights = tL_chatBannedRights;
        }
    }

    public static void sortAdmins(ArrayList<TLObject> arrayList) {
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda19
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ChatUsersActivity.$r8$lambda$VZGBEZq8jVt9yLH8_xL4SPlOMj4((TLObject) obj, (TLObject) obj2);
            }
        });
    }

    public static /* synthetic */ int $r8$lambda$VZGBEZq8jVt9yLH8_xL4SPlOMj4(TLObject tLObject, TLObject tLObject2) {
        int channelAdminParticipantType = getChannelAdminParticipantType(tLObject);
        int channelAdminParticipantType2 = getChannelAdminParticipantType(tLObject2);
        if (channelAdminParticipantType > channelAdminParticipantType2) {
            return 1;
        }
        if (channelAdminParticipantType < channelAdminParticipantType2) {
            return -1;
        }
        if ((tLObject instanceof TLRPC.ChannelParticipant) && (tLObject2 instanceof TLRPC.ChannelParticipant)) {
            return (int) (MessageObject.getPeerId(((TLRPC.ChannelParticipant) tLObject).peer) - MessageObject.getPeerId(((TLRPC.ChannelParticipant) tLObject2).peer));
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showItemsAnimated(final int i) {
        if (this.isPaused || !this.openTransitionStarted) {
            return;
        }
        if (this.listView.getAdapter() == this.listViewAdapter && this.firstLoaded) {
            return;
        }
        final View view = null;
        for (int i2 = 0; i2 < this.listView.getChildCount(); i2++) {
            View childAt = this.listView.getChildAt(i2);
            if (childAt instanceof FlickerLoadingView) {
                view = childAt;
            }
        }
        if (view != null) {
            this.listView.removeView(view);
            i--;
        }
        this.listView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.ChatUsersActivity.12
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                ChatUsersActivity.this.listView.getViewTreeObserver().removeOnPreDrawListener(this);
                int childCount = ChatUsersActivity.this.listView.getChildCount();
                AnimatorSet animatorSet = new AnimatorSet();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt2 = ChatUsersActivity.this.listView.getChildAt(i3);
                    if (childAt2 != view && ChatUsersActivity.this.listView.getChildAdapterPosition(childAt2) >= i) {
                        childAt2.setAlpha(0.0f);
                        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(childAt2, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f);
                        objectAnimatorOfFloat.setStartDelay((int) ((Math.min(ChatUsersActivity.this.listView.getMeasuredHeight(), Math.max(0, childAt2.getTop())) / ChatUsersActivity.this.listView.getMeasuredHeight()) * 100.0f));
                        objectAnimatorOfFloat.setDuration(200L);
                        animatorSet.playTogether(objectAnimatorOfFloat);
                    }
                }
                View view2 = view;
                if (view2 != null && view2.getParent() == null) {
                    ChatUsersActivity.this.listView.addView(view);
                    final RecyclerView.LayoutManager layoutManager = ChatUsersActivity.this.listView.getLayoutManager();
                    if (layoutManager != null) {
                        layoutManager.ignoreView(view);
                        View view3 = view;
                        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view3, (Property<View, Float>) View.ALPHA, view3.getAlpha(), 0.0f);
                        objectAnimatorOfFloat2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChatUsersActivity.12.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                view.setAlpha(1.0f);
                                layoutManager.stopIgnoringView(view);
                                ChatUsersActivity.this.listView.removeView(view);
                            }
                        });
                        objectAnimatorOfFloat2.start();
                    }
                }
                animatorSet.start();
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onOwnerChaged(TLRPC.User user) {
        LongSparseArray<TLObject> longSparseArray;
        ArrayList<TLObject> arrayList;
        boolean z;
        this.undoView.showWithAction(-this.chatId, this.isChannel ? 9 : 10, user);
        this.currentChat.creator = false;
        boolean z2 = false;
        for (int i = 0; i < 3; i++) {
            boolean z3 = true;
            if (i == 0) {
                longSparseArray = this.contactsMap;
                arrayList = this.contacts;
            } else if (i == 1) {
                longSparseArray = this.botsMap;
                arrayList = this.bots;
            } else {
                longSparseArray = this.participantsMap;
                arrayList = this.participants;
            }
            TLObject tLObject = longSparseArray.get(user.id);
            if (tLObject instanceof TLRPC.ChannelParticipant) {
                TLRPC.TL_channelParticipantCreator tL_channelParticipantCreator = new TLRPC.TL_channelParticipantCreator();
                TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                tL_channelParticipantCreator.peer = tL_peerUser;
                long j = user.id;
                tL_peerUser.user_id = j;
                longSparseArray.put(j, tL_channelParticipantCreator);
                int iIndexOf = arrayList.indexOf(tLObject);
                if (iIndexOf >= 0) {
                    arrayList.set(iIndexOf, tL_channelParticipantCreator);
                }
                z2 = true;
                z = true;
            } else {
                z = false;
            }
            long clientUserId = getUserConfig().getClientUserId();
            TLObject tLObject2 = longSparseArray.get(clientUserId);
            if (tLObject2 instanceof TLRPC.ChannelParticipant) {
                TLRPC.TL_channelParticipantAdmin tL_channelParticipantAdmin = new TLRPC.TL_channelParticipantAdmin();
                TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
                tL_channelParticipantAdmin.peer = tL_peerUser2;
                tL_peerUser2.user_id = clientUserId;
                tL_channelParticipantAdmin.self = true;
                tL_channelParticipantAdmin.inviter_id = clientUserId;
                tL_channelParticipantAdmin.promoted_by = clientUserId;
                tL_channelParticipantAdmin.date = (int) (System.currentTimeMillis() / 1000);
                TLRPC.TL_chatAdminRights tL_chatAdminRights = new TLRPC.TL_chatAdminRights();
                tL_channelParticipantAdmin.admin_rights = tL_chatAdminRights;
                tL_chatAdminRights.add_admins = true;
                tL_chatAdminRights.manage_ranks = true;
                tL_chatAdminRights.pin_messages = true;
                tL_chatAdminRights.manage_topics = true;
                tL_chatAdminRights.invite_users = true;
                tL_chatAdminRights.ban_users = true;
                tL_chatAdminRights.delete_messages = true;
                tL_chatAdminRights.edit_messages = true;
                tL_chatAdminRights.post_messages = true;
                tL_chatAdminRights.change_info = true;
                if (!this.isChannel) {
                    tL_chatAdminRights.manage_call = true;
                }
                longSparseArray.put(clientUserId, tL_channelParticipantAdmin);
                int iIndexOf2 = arrayList.indexOf(tLObject2);
                if (iIndexOf2 >= 0) {
                    arrayList.set(iIndexOf2, tL_channelParticipantAdmin);
                }
            } else {
                z3 = z;
            }
            if (z3) {
                Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda35
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return ChatUsersActivity.$r8$lambda$S0tzKXU2pZwBcNzLcToR7TeKYyk((TLObject) obj, (TLObject) obj2);
                    }
                });
            }
        }
        if (!z2) {
            TLRPC.TL_channelParticipantCreator tL_channelParticipantCreator2 = new TLRPC.TL_channelParticipantCreator();
            TLRPC.TL_peerUser tL_peerUser3 = new TLRPC.TL_peerUser();
            tL_channelParticipantCreator2.peer = tL_peerUser3;
            long j2 = user.id;
            tL_peerUser3.user_id = j2;
            this.participantsMap.put(j2, tL_channelParticipantCreator2);
            this.participants.add(tL_channelParticipantCreator2);
            sortAdmins(this.participants);
            updateRows();
        }
        this.listViewAdapter.notifyDataSetChanged();
        ChatUsersActivityDelegate chatUsersActivityDelegate = this.delegate;
        if (chatUsersActivityDelegate != null) {
            chatUsersActivityDelegate.didChangeOwner(user);
        }
    }

    public static /* synthetic */ int $r8$lambda$S0tzKXU2pZwBcNzLcToR7TeKYyk(TLObject tLObject, TLObject tLObject2) {
        int channelAdminParticipantType = getChannelAdminParticipantType(tLObject);
        int channelAdminParticipantType2 = getChannelAdminParticipantType(tLObject2);
        if (channelAdminParticipantType > channelAdminParticipantType2) {
            return 1;
        }
        return channelAdminParticipantType < channelAdminParticipantType2 ? -1 : 0;
    }

    private void openRightsEdit2(final long j, final int i, TLObject tLObject, TLRPC.TL_chatAdminRights tL_chatAdminRights, TLRPC.TL_chatBannedRights tL_chatBannedRights, String str, boolean z, final int i2, boolean z2) {
        boolean z3 = true;
        final boolean[] zArr = new boolean[1];
        if (!(tLObject instanceof TLRPC.TL_channelParticipantAdmin) && !(tLObject instanceof TLRPC.TL_chatParticipantAdmin)) {
            z3 = false;
        }
        final boolean z4 = z3;
        ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(j, this.chatId, tL_chatAdminRights, this.defaultBannedRights, tL_chatBannedRights, str, i2, true, false, null) { // from class: org.telegram.ui.ChatUsersActivity.13
            @Override // org.telegram.ui.ActionBar.BaseFragment
            public void onTransitionAnimationEnd(boolean z5, boolean z6) {
                if (!z5 && z6 && zArr[0] && BulletinFactory.canShowBulletin(ChatUsersActivity.this)) {
                    if (j > 0) {
                        TLRPC.User user = getMessagesController().getUser(Long.valueOf(j));
                        if (user != null) {
                            BulletinFactory.createPromoteToAdminBulletin(ChatUsersActivity.this, user.first_name).show();
                            return;
                        }
                        return;
                    }
                    TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(-j));
                    if (chat != null) {
                        BulletinFactory.createPromoteToAdminBulletin(ChatUsersActivity.this, chat.title).show();
                    }
                }
            }
        };
        chatRightsEditActivity.setDelegate(new ChatRightsEditActivity.ChatRightsEditActivityDelegate() { // from class: org.telegram.ui.ChatUsersActivity.14
            @Override // org.telegram.ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didSetRights(int i3, TLRPC.TL_chatAdminRights tL_chatAdminRights2, TLRPC.TL_chatBannedRights tL_chatBannedRights2, String str2) {
                TLRPC.ChatParticipant tL_chatParticipant;
                TLRPC.ChannelParticipant tL_channelParticipant;
                int i4 = i2;
                if (i4 != 0) {
                    if (i4 == 1 && i3 == 0) {
                        ChatUsersActivity.this.removeParticipants(j);
                        return;
                    }
                    return;
                }
                int i5 = 0;
                while (true) {
                    if (i5 >= ChatUsersActivity.this.participants.size()) {
                        break;
                    }
                    TLObject tLObject2 = (TLObject) ChatUsersActivity.this.participants.get(i5);
                    if (tLObject2 instanceof TLRPC.ChannelParticipant) {
                        if (MessageObject.getPeerId(((TLRPC.ChannelParticipant) tLObject2).peer) == j) {
                            if (i3 == 1) {
                                tL_channelParticipant = new TLRPC.TL_channelParticipantAdmin();
                            } else {
                                tL_channelParticipant = new TLRPC.TL_channelParticipant();
                            }
                            tL_channelParticipant.admin_rights = tL_chatAdminRights2;
                            tL_channelParticipant.banned_rights = tL_chatBannedRights2;
                            tL_channelParticipant.inviter_id = ChatUsersActivity.this.getUserConfig().getClientUserId();
                            if (j > 0) {
                                TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                                tL_channelParticipant.peer = tL_peerUser;
                                tL_peerUser.user_id = j;
                            } else {
                                TLRPC.TL_peerChannel tL_peerChannel = new TLRPC.TL_peerChannel();
                                tL_channelParticipant.peer = tL_peerChannel;
                                tL_peerChannel.channel_id = -j;
                            }
                            tL_channelParticipant.date = i;
                            tL_channelParticipant.flags |= 4;
                            tL_channelParticipant.rank = str2;
                            ChatUsersActivity.this.participants.set(i5, tL_channelParticipant);
                        }
                    } else if (tLObject2 instanceof TLRPC.ChatParticipant) {
                        TLRPC.ChatParticipant chatParticipant = (TLRPC.ChatParticipant) tLObject2;
                        if (i3 == 1) {
                            tL_chatParticipant = new TLRPC.TL_chatParticipantAdmin();
                        } else {
                            tL_chatParticipant = new TLRPC.TL_chatParticipant();
                        }
                        tL_chatParticipant.user_id = chatParticipant.user_id;
                        tL_chatParticipant.date = chatParticipant.date;
                        tL_chatParticipant.inviter_id = chatParticipant.inviter_id;
                        int iIndexOf = ChatUsersActivity.this.info.participants.participants.indexOf(chatParticipant);
                        if (iIndexOf >= 0) {
                            ChatUsersActivity.this.info.participants.participants.set(iIndexOf, tL_chatParticipant);
                        }
                        ChatUsersActivity.this.loadChatParticipants(0, 200);
                    }
                    i5++;
                }
                if (i3 != 1 || z4) {
                    return;
                }
                zArr[0] = true;
            }

            @Override // org.telegram.ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didChangeOwner(TLRPC.User user) {
                ChatUsersActivity.this.onOwnerChaged(user);
            }
        });
        presentFragment(chatRightsEditActivity);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        return checkDiscard(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openRightsEdit(final long j, final TLObject tLObject, TLRPC.TL_chatAdminRights tL_chatAdminRights, TLRPC.TL_chatBannedRights tL_chatBannedRights, String str, boolean z, int i, final boolean z2) {
        ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(j, this.chatId, tL_chatAdminRights, this.defaultBannedRights, tL_chatBannedRights, str, i, z, tLObject == null, null);
        chatRightsEditActivity.setDelegate(new ChatRightsEditActivity.ChatRightsEditActivityDelegate() { // from class: org.telegram.ui.ChatUsersActivity.15
            @Override // org.telegram.ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didSetRights(int i2, TLRPC.TL_chatAdminRights tL_chatAdminRights2, TLRPC.TL_chatBannedRights tL_chatBannedRights2, String str2) {
                TLObject tLObject2 = tLObject;
                if (tLObject2 instanceof TLRPC.ChannelParticipant) {
                    TLRPC.ChannelParticipant channelParticipant = (TLRPC.ChannelParticipant) tLObject2;
                    channelParticipant.admin_rights = tL_chatAdminRights2;
                    channelParticipant.banned_rights = tL_chatBannedRights2;
                    channelParticipant.rank = str2;
                }
                if (ChatUsersActivity.this.delegate != null && i2 == 1) {
                    ChatUsersActivity.this.delegate.didSelectUser(j);
                } else if (ChatUsersActivity.this.delegate != null) {
                    ChatUsersActivity.this.delegate.didAddParticipantToList(j, tLObject);
                }
                if (z2) {
                    ChatUsersActivity.this.removeSelfFromStack();
                }
            }

            @Override // org.telegram.ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didChangeOwner(TLRPC.User user) {
                ChatUsersActivity.this.onOwnerChaged(user);
            }
        });
        presentFragment(chatRightsEditActivity, z2);
    }

    private void removeParticipant(long j) {
        if (ChatObject.isChannel(this.currentChat)) {
            getMessagesController().deleteParticipantFromChat(this.chatId, getMessagesController().getUser(Long.valueOf(j)));
            ChatUsersActivityDelegate chatUsersActivityDelegate = this.delegate;
            if (chatUsersActivityDelegate != null) {
                chatUsersActivityDelegate.didKickParticipant(j);
            }
            finishFragment();
        }
    }

    private TLObject getAnyParticipant(long j) {
        LongSparseArray<TLObject> longSparseArray;
        for (int i = 0; i < 3; i++) {
            if (i == 0) {
                longSparseArray = this.contactsMap;
            } else if (i == 1) {
                longSparseArray = this.botsMap;
            } else {
                longSparseArray = this.participantsMap;
            }
            TLObject tLObject = longSparseArray.get(j);
            if (tLObject != null) {
                return tLObject;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeParticipants(long j) {
        LongSparseArray<TLObject> longSparseArray;
        ArrayList<TLObject> arrayList;
        TLRPC.ChatFull chatFull;
        DiffCallback diffCallbackSaveState = saveState();
        boolean z = false;
        for (int i = 0; i < 3; i++) {
            if (i == 0) {
                longSparseArray = this.contactsMap;
                arrayList = this.contacts;
            } else if (i == 1) {
                longSparseArray = this.botsMap;
                arrayList = this.bots;
            } else {
                longSparseArray = this.participantsMap;
                arrayList = this.participants;
            }
            TLObject tLObject = longSparseArray.get(j);
            if (tLObject != null) {
                longSparseArray.remove(j);
                arrayList.remove(tLObject);
                if (this.type == 0 && (chatFull = this.info) != null) {
                    chatFull.kicked_count--;
                }
                z = true;
            }
        }
        if (z) {
            updateListAnimated(diffCallbackSaveState);
        }
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        SearchAdapter searchAdapter = this.searchListViewAdapter;
        if (adapter == searchAdapter) {
            searchAdapter.removeUserId(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateParticipantWithRights(TLRPC.ChannelParticipant channelParticipant, TLRPC.TL_chatAdminRights tL_chatAdminRights, TLRPC.TL_chatBannedRights tL_chatBannedRights, long j, boolean z) {
        LongSparseArray<TLObject> longSparseArray;
        ChatUsersActivityDelegate chatUsersActivityDelegate;
        boolean z2 = false;
        for (int i = 0; i < 3; i++) {
            if (i == 0) {
                longSparseArray = this.contactsMap;
            } else if (i == 1) {
                longSparseArray = this.botsMap;
            } else {
                longSparseArray = this.participantsMap;
            }
            TLObject tLObject = longSparseArray.get(MessageObject.getPeerId(channelParticipant.peer));
            if (tLObject instanceof TLRPC.ChannelParticipant) {
                channelParticipant = (TLRPC.ChannelParticipant) tLObject;
                channelParticipant.admin_rights = tL_chatAdminRights;
                channelParticipant.banned_rights = tL_chatBannedRights;
                if (z) {
                    channelParticipant.promoted_by = getUserConfig().getClientUserId();
                }
            }
            if (z && tLObject != null && !z2 && (chatUsersActivityDelegate = this.delegate) != null) {
                chatUsersActivityDelegate.didAddParticipantToList(j, tLObject);
                z2 = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean createMenuForParticipant(final TLObject tLObject, boolean z, View view) {
        long j;
        final TLRPC.TL_chatBannedRights tL_chatBannedRights;
        final String str;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        int i;
        boolean zCanAddAdmins;
        int i2;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2;
        final boolean z2;
        String str2;
        int i3;
        if (tLObject == null || this.selectType != 0) {
            return false;
        }
        final long j2 = 0;
        if (tLObject instanceof TLRPC.ChannelParticipant) {
            TLRPC.ChannelParticipant channelParticipant = (TLRPC.ChannelParticipant) tLObject;
            long peerId = MessageObject.getPeerId(channelParticipant.peer);
            zCanAddAdmins = channelParticipant.can_edit;
            TLRPC.TL_chatBannedRights tL_chatBannedRights2 = channelParticipant.banned_rights;
            tL_chatAdminRights = channelParticipant.admin_rights;
            i2 = channelParticipant.date;
            j = 0;
            j2 = peerId;
            tL_chatBannedRights = tL_chatBannedRights2;
            str = channelParticipant.rank;
            i = i2;
        } else if (tLObject instanceof TLRPC.ChatParticipant) {
            TLRPC.ChatParticipant chatParticipant = (TLRPC.ChatParticipant) tLObject;
            long j3 = chatParticipant.user_id;
            int i4 = chatParticipant.date;
            zCanAddAdmins = ChatObject.canAddAdmins(this.currentChat);
            i2 = chatParticipant.date;
            i = i4;
            j = 0;
            j2 = j3;
            tL_chatBannedRights = null;
            str = _UrlKt.FRAGMENT_ENCODE_SET;
            tL_chatAdminRights = null;
        } else {
            j = 0;
            tL_chatBannedRights = null;
            str = null;
            tL_chatAdminRights = null;
            i = 0;
            zCanAddAdmins = false;
            i2 = 0;
        }
        if (j2 == j || j2 == getUserConfig().getClientUserId()) {
            return false;
        }
        if (this.type == 2) {
            final TLRPC.User user = getMessagesController().getUser(Long.valueOf(j2));
            boolean z3 = ChatObject.canAddAdmins(this.currentChat) && ((tLObject instanceof TLRPC.TL_channelParticipant) || (tLObject instanceof TLRPC.TL_channelParticipantBanned) || (tLObject instanceof TLRPC.TL_chatParticipant) || zCanAddAdmins);
            boolean z4 = tLObject instanceof TLRPC.TL_channelParticipantAdmin;
            if ((z4 || (tLObject instanceof TLRPC.TL_channelParticipantCreator) || (tLObject instanceof TLRPC.TL_chatParticipantCreator) || (tLObject instanceof TLRPC.TL_chatParticipantAdmin)) && !zCanAddAdmins) {
                tL_chatAdminRights2 = tL_chatAdminRights;
                z2 = false;
            } else {
                tL_chatAdminRights2 = tL_chatAdminRights;
                z2 = true;
            }
            boolean z5 = z4 || (tLObject instanceof TLRPC.TL_chatParticipantAdmin);
            boolean z6 = ChatObject.canBlockUsers(this.currentChat) && z2 && !this.isChannel && ChatObject.isChannel(this.currentChat) && !this.currentChat.gigagroup;
            if (this.selectType == 0) {
                z3 &= !UserObject.isDeleted(user);
            }
            boolean z7 = z3;
            boolean z8 = (i2 == 0 || ChatObject.isChannelAndNotMegaGroup(this.currentChat)) ? false : true;
            boolean z9 = z7 || (ChatObject.canBlockUsers(this.currentChat) && z2);
            if (z || !(z9 || z8)) {
                return z9;
            }
            final TLRPC.TL_chatAdminRights tL_chatAdminRights3 = tL_chatAdminRights2;
            final TLRPC.TL_chatBannedRights tL_chatBannedRights3 = tL_chatBannedRights;
            final int i5 = i;
            final String str3 = str;
            final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda9
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$createMenuForParticipant$10(j2, i5, tLObject, tL_chatAdminRights3, tL_chatBannedRights3, str3, z2, (Integer) obj);
                }
            };
            ItemOptions itemOptionsAddIf = ItemOptions.makeOptions(this, view).setScrimViewBackground(this.listView.getClipBackground(view)).addIf(z7, C2665R.drawable.msg_admins, LocaleController.getString(z5 ? C2665R.string.EditAdminRights : C2665R.string.SetAsAdmin), new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(0);
                }
            }).addIf(z6, C2665R.drawable.msg_permissions, LocaleController.getString("ChangePermissions", C2665R.string.ChangePermissions), new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createMenuForParticipant$13(tLObject, user, callback);
                }
            });
            boolean z10 = ChatObject.canBlockUsers(this.currentChat) && z2;
            int i6 = C2665R.drawable.msg_remove;
            if (this.isChannel) {
                str2 = "ChannelRemoveUser";
                i3 = C2665R.string.ChannelRemoveUser;
            } else {
                str2 = "KickFromGroup";
                i3 = C2665R.string.KickFromGroup;
            }
            ItemOptions minWidth = itemOptionsAddIf.addIf(z10, i6, (CharSequence) LocaleController.getString(str2, i3), true, new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createMenuForParticipant$14(user, j2);
                }
            }).setMinWidth(190);
            if (z8) {
                if (z9) {
                    minWidth.addGap();
                }
                minWidth.addText(LocaleController.formatGroupMemberJoined(i2), 13);
            }
            minWidth.show();
            return true;
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        if (this.type == 3 && ChatObject.canBlockUsers(this.currentChat)) {
            itemOptionsMakeOptions.add(C2665R.drawable.msg_permissions, LocaleController.getString(C2665R.string.ChannelEditPermissions), new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createMenuForParticipant$15(j2, tL_chatBannedRights, str, tLObject);
                }
            });
            itemOptionsMakeOptions.add(C2665R.drawable.msg_delete, (CharSequence) LocaleController.getString("ChannelDeleteFromList", C2665R.string.ChannelDeleteFromList), true, new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createMenuForParticipant$16(j2);
                }
            });
        } else if (this.type == 0 && ChatObject.canBlockUsers(this.currentChat)) {
            if (ChatObject.canAddUsers(this.currentChat) && j2 > j && !ChatObject.isCommunity(this.currentChat)) {
                itemOptionsMakeOptions.add(C2665R.drawable.msg_contact_add, LocaleController.getString(this.isChannel ? C2665R.string.ChannelAddToChannel : C2665R.string.ChannelAddToGroup), new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createMenuForParticipant$17(j2);
                    }
                });
            }
            itemOptionsMakeOptions.add(C2665R.drawable.msg_delete, (CharSequence) LocaleController.getString("ChannelDeleteFromList", C2665R.string.ChannelDeleteFromList), true, new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createMenuForParticipant$18(j2);
                }
            });
        } else if (this.type == 1 && ChatObject.canAddAdmins(this.currentChat) && zCanAddAdmins) {
            if (this.currentChat.creator || !(tLObject instanceof TLRPC.TL_channelParticipantCreator)) {
                final TLRPC.TL_chatAdminRights tL_chatAdminRights4 = tL_chatAdminRights;
                itemOptionsMakeOptions.add(C2665R.drawable.msg_admins, LocaleController.getString("EditAdminRights", C2665R.string.EditAdminRights), new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createMenuForParticipant$19(j2, tL_chatAdminRights4, str, tLObject);
                    }
                });
            }
            itemOptionsMakeOptions.add(C2665R.drawable.msg_remove, (CharSequence) LocaleController.getString("ChannelRemoveUserAdmin", C2665R.string.ChannelRemoveUserAdmin), true, new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createMenuForParticipant$20(j2);
                }
            });
        }
        itemOptionsMakeOptions.setScrimViewBackground(this.listView.getClipBackground(view));
        itemOptionsMakeOptions.setMinWidth(190);
        boolean z11 = itemOptionsMakeOptions.getItemsCount() > 0;
        if (z || !z11) {
            return z11;
        }
        itemOptionsMakeOptions.show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMenuForParticipant$10(long j, int i, TLObject tLObject, TLRPC.TL_chatAdminRights tL_chatAdminRights, TLRPC.TL_chatBannedRights tL_chatBannedRights, String str, boolean z, Integer num) {
        openRightsEdit2(j, i, tLObject, tL_chatAdminRights, tL_chatBannedRights, str, z, num.intValue(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMenuForParticipant$13(TLObject tLObject, TLRPC.User user, final Utilities.Callback callback) {
        if ((tLObject instanceof TLRPC.TL_channelParticipantAdmin) || (tLObject instanceof TLRPC.TL_chatParticipantAdmin)) {
            showDialog(new AlertDialog.Builder(getParentActivity()).setTitle(LocaleController.getString("AppName", C2665R.string.AppName)).setMessage(LocaleController.formatString(C2665R.string.AdminWillBeRemoved, UserObject.getUserName(user))).setPositiveButton(LocaleController.getString("OK", C2665R.string.OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda30
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    callback.run(1);
                }
            }).setNegativeButton(LocaleController.getString("Cancel", C2665R.string.Cancel), null).create());
        } else {
            callback.run(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMenuForParticipant$14(TLRPC.User user, long j) {
        getMessagesController().deleteParticipantFromChat(this.chatId, user);
        removeParticipants(j);
        if (this.currentChat == null || user == null || !BulletinFactory.canShowBulletin(this)) {
            return;
        }
        BulletinFactory.createRemoveFromChatBulletin(this, user, this.currentChat.title).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMenuForParticipant$15(long j, TLRPC.TL_chatBannedRights tL_chatBannedRights, String str, final TLObject tLObject) {
        ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(j, this.chatId, null, this.defaultBannedRights, tL_chatBannedRights, str, 1, true, false, null);
        chatRightsEditActivity.setDelegate(new ChatRightsEditActivity.ChatRightsEditActivityDelegate() { // from class: org.telegram.ui.ChatUsersActivity.16
            @Override // org.telegram.ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didSetRights(int i, TLRPC.TL_chatAdminRights tL_chatAdminRights, TLRPC.TL_chatBannedRights tL_chatBannedRights2, String str2) {
                TLObject tLObject2 = tLObject;
                if (tLObject2 instanceof TLRPC.ChannelParticipant) {
                    TLRPC.ChannelParticipant channelParticipant = (TLRPC.ChannelParticipant) tLObject2;
                    channelParticipant.admin_rights = tL_chatAdminRights;
                    channelParticipant.banned_rights = tL_chatBannedRights2;
                    channelParticipant.rank = str2;
                    ChatUsersActivity.this.updateParticipantWithRights(channelParticipant, tL_chatAdminRights, tL_chatBannedRights2, 0L, false);
                }
            }

            @Override // org.telegram.ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didChangeOwner(TLRPC.User user) {
                ChatUsersActivity.this.onOwnerChaged(user);
            }
        });
        presentFragment(chatRightsEditActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMenuForParticipant$17(long j) {
        lambda$createMenuForParticipant$18(j);
        getMessagesController().addUserToChat(this.chatId, getMessagesController().getUser(Long.valueOf(j)), 0, null, this, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMenuForParticipant$19(long j, TLRPC.TL_chatAdminRights tL_chatAdminRights, String str, final TLObject tLObject) {
        ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(j, this.chatId, tL_chatAdminRights, null, null, str, 0, true, false, null);
        chatRightsEditActivity.setDelegate(new ChatRightsEditActivity.ChatRightsEditActivityDelegate() { // from class: org.telegram.ui.ChatUsersActivity.17
            @Override // org.telegram.ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didSetRights(int i, TLRPC.TL_chatAdminRights tL_chatAdminRights2, TLRPC.TL_chatBannedRights tL_chatBannedRights, String str2) {
                TLObject tLObject2 = tLObject;
                if (tLObject2 instanceof TLRPC.ChannelParticipant) {
                    TLRPC.ChannelParticipant channelParticipant = (TLRPC.ChannelParticipant) tLObject2;
                    channelParticipant.admin_rights = tL_chatAdminRights2;
                    channelParticipant.banned_rights = tL_chatBannedRights;
                    channelParticipant.rank = str2;
                    ChatUsersActivity.this.updateParticipantWithRights(channelParticipant, tL_chatAdminRights2, tL_chatBannedRights, 0L, false);
                }
            }

            @Override // org.telegram.ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didChangeOwner(TLRPC.User user) {
                ChatUsersActivity.this.onOwnerChaged(user);
            }
        });
        presentFragment(chatRightsEditActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMenuForParticipant$20(long j) {
        getMessagesController().setUserAdminRole(this.chatId, getMessagesController().getUser(Long.valueOf(j)), new TLRPC.TL_chatAdminRights(), _UrlKt.FRAGMENT_ENCODE_SET, !this.isChannel, this, false, false, null, null);
        removeParticipants(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: deletePeer, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$createMenuForParticipant$18(long j) {
        if (this.isCommunity) {
            TL_communities.TL_communities_toggleParticipantBanned tL_communities_toggleParticipantBanned = new TL_communities.TL_communities_toggleParticipantBanned();
            tL_communities_toggleParticipantBanned.participant = getMessagesController().getInputPeer(j);
            tL_communities_toggleParticipantBanned.community = getMessagesController().getInputChannel(this.chatId);
            tL_communities_toggleParticipantBanned.unban = true;
            getConnectionsManager().sendRequestTyped(tL_communities_toggleParticipantBanned, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda31
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$deletePeer$22((TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
                }
            });
            return;
        }
        TLRPC.TL_channels_editBanned tL_channels_editBanned = new TLRPC.TL_channels_editBanned();
        tL_channels_editBanned.participant = getMessagesController().getInputPeer(j);
        tL_channels_editBanned.channel = getMessagesController().getInputChannel(this.chatId);
        tL_channels_editBanned.banned_rights = new TLRPC.TL_chatBannedRights();
        getConnectionsManager().sendRequest(tL_channels_editBanned, new RequestDelegate() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda32
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$deletePeer$24(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deletePeer$22(TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deletePeer$21();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deletePeer$21() {
        getMessagesController().loadFullChat(this.chatId, 0, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deletePeer$24(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            final TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            getMessagesController().processUpdates(updates, false);
            if (updates.chats.isEmpty()) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$deletePeer$23(updates);
                }
            }, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deletePeer$23(TLRPC.Updates updates) {
        getMessagesController().loadFullChat(updates.chats.get(0).id, 0, true);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.chatInfoDidLoad) {
            TLRPC.ChatFull chatFull = (TLRPC.ChatFull) objArr[0];
            boolean zBooleanValue = ((Boolean) objArr[2]).booleanValue();
            if (chatFull.id == this.chatId) {
                if (zBooleanValue && ChatObject.isChannel(this.currentChat)) {
                    return;
                }
                boolean z = this.info != null;
                this.info = chatFull;
                if (!z) {
                    int currentSlowmode = getCurrentSlowmode();
                    this.initialSlowmode = currentSlowmode;
                    this.selectedSlowmode = currentSlowmode;
                    int i3 = this.info.boosts_unrestrict;
                    this.isEnabledNotRestrictBoosters = i3 > 0;
                    this.notRestrictBoosters = i3;
                    TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
                    long j = chat == null ? 0L : chat.send_paid_messages_stars;
                    boolean z2 = j > 0;
                    this.enablePrice = z2;
                    this.initialEnablePrice = z2;
                    if (j <= 0) {
                        j = 10;
                    }
                    long jClamp = Utilities.clamp(j, getMessagesController().starsPaidMessageAmountMax, 1L);
                    this.starsPrice = jClamp;
                    this.initialStarsPrice = jClamp;
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$didReceivedNotification$25();
                    }
                });
                return;
            }
            return;
        }
        if (i == NotificationCenter.dialogDeleted && ((Long) objArr[0]).longValue() == (-this.chatId)) {
            INavigationLayout iNavigationLayout = this.parentLayout;
            if (iNavigationLayout != null && iNavigationLayout.getLastFragment() == this) {
                finishFragment();
            } else {
                removeSelfFromStack();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$25() {
        loadChatParticipants(0, 200);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        return checkDiscard(z);
    }

    public void setDelegate(ChatUsersActivityDelegate chatUsersActivityDelegate) {
        this.delegate = chatUsersActivityDelegate;
    }

    private int getCurrentSlowmode() {
        TLRPC.ChatFull chatFull = this.info;
        if (chatFull == null) {
            return 0;
        }
        int i = chatFull.slowmode_seconds;
        if (i == 5) {
            return 1;
        }
        if (i == 10) {
            return 2;
        }
        if (i == 30) {
            return 3;
        }
        if (i == 60) {
            return 4;
        }
        if (i == 300) {
            return 5;
        }
        if (i == 900) {
            return 6;
        }
        return i == 3600 ? 7 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatSeconds(int i) {
        if (i < 60) {
            return LocaleController.formatPluralString("Seconds", i, new Object[0]);
        }
        if (i < 3600) {
            return LocaleController.formatPluralString("Minutes", i / 60, new Object[0]);
        }
        return LocaleController.formatPluralString("Hours", (i / 60) / 60, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkDiscard(boolean z) {
        boolean z2;
        if (this.transfer) {
            return true;
        }
        if (ChatObject.getBannedRightsString(this.defaultBannedRights).equals(this.initialBannedRights) && this.initialSlowmode == this.selectedSlowmode && !hasNotRestrictBoostersChanges() && (z2 = this.signatures) == this.initialSignatures) {
            if ((z2 && this.profiles) == this.initialProfiles) {
                return true;
            }
        }
        if (z) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString("UserRestrictionsApplyChanges", C2665R.string.UserRestrictionsApplyChanges));
            if (this.isChannel) {
                builder.setMessage(LocaleController.getString("ChannelSettingsChangedAlert", C2665R.string.ChannelSettingsChangedAlert));
            } else {
                builder.setMessage(LocaleController.getString("GroupSettingsChangedAlert", C2665R.string.GroupSettingsChangedAlert));
            }
            builder.setPositiveButton(LocaleController.getString("ApplyTheme", C2665R.string.ApplyTheme), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda4
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$checkDiscard$26(alertDialog, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("PassportDiscard", C2665R.string.PassportDiscard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda5
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$checkDiscard$27(alertDialog, i);
                }
            });
            showDialog(builder.create());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$26(AlertDialog alertDialog, int i) {
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$27(AlertDialog alertDialog, int i) {
        finishFragment();
    }

    public boolean hasSelectType() {
        return this.selectType != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatUserPermissions(TLRPC.TL_chatBannedRights tL_chatBannedRights) {
        if (tL_chatBannedRights == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = tL_chatBannedRights.view_messages;
        if (z && this.defaultBannedRights.view_messages != z) {
            sb.append(LocaleController.getString("UserRestrictionsNoRead", C2665R.string.UserRestrictionsNoRead));
        }
        if (tL_chatBannedRights.send_messages && this.defaultBannedRights.send_plain != tL_chatBannedRights.send_plain) {
            if (sb.length() != 0) {
                sb.append(", ");
            }
            sb.append(LocaleController.getString("UserRestrictionsNoSendText", C2665R.string.UserRestrictionsNoSendText));
        }
        boolean z2 = tL_chatBannedRights.send_media;
        if (z2 && this.defaultBannedRights.send_media != z2) {
            if (sb.length() != 0) {
                sb.append(", ");
            }
            sb.append(LocaleController.getString("UserRestrictionsNoSendMedia", C2665R.string.UserRestrictionsNoSendMedia));
        } else {
            boolean z3 = tL_chatBannedRights.send_photos;
            if (z3 && this.defaultBannedRights.send_photos != z3) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(LocaleController.getString("UserRestrictionsNoSendPhotos", C2665R.string.UserRestrictionsNoSendPhotos));
            }
            boolean z4 = tL_chatBannedRights.send_videos;
            if (z4 && this.defaultBannedRights.send_videos != z4) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(LocaleController.getString("UserRestrictionsNoSendVideos", C2665R.string.UserRestrictionsNoSendVideos));
            }
            boolean z5 = tL_chatBannedRights.send_audios;
            if (z5 && this.defaultBannedRights.send_audios != z5) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(LocaleController.getString("UserRestrictionsNoSendMusic", C2665R.string.UserRestrictionsNoSendMusic));
            }
            boolean z6 = tL_chatBannedRights.send_docs;
            if (z6 && this.defaultBannedRights.send_docs != z6) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(LocaleController.getString("UserRestrictionsNoSendDocs", C2665R.string.UserRestrictionsNoSendDocs));
            }
            boolean z7 = tL_chatBannedRights.send_voices;
            if (z7 && this.defaultBannedRights.send_voices != z7) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(LocaleController.getString("UserRestrictionsNoSendVoice", C2665R.string.UserRestrictionsNoSendVoice));
            }
            boolean z8 = tL_chatBannedRights.send_roundvideos;
            if (z8 && this.defaultBannedRights.send_roundvideos != z8) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(LocaleController.getString("UserRestrictionsNoSendRound", C2665R.string.UserRestrictionsNoSendRound));
            }
        }
        boolean z9 = tL_chatBannedRights.send_stickers;
        if (z9 && this.defaultBannedRights.send_stickers != z9) {
            if (sb.length() != 0) {
                sb.append(", ");
            }
            sb.append(LocaleController.getString("UserRestrictionsNoSendStickers", C2665R.string.UserRestrictionsNoSendStickers));
        }
        boolean z10 = tL_chatBannedRights.send_polls;
        if (z10 && this.defaultBannedRights.send_polls != z10) {
            if (sb.length() != 0) {
                sb.append(", ");
            }
            sb.append(LocaleController.getString("UserRestrictionsNoSendPolls", C2665R.string.UserRestrictionsNoSendPolls));
        }
        boolean z11 = tL_chatBannedRights.embed_links;
        if (z11 && !tL_chatBannedRights.send_plain && this.defaultBannedRights.embed_links != z11) {
            if (sb.length() != 0) {
                sb.append(", ");
            }
            sb.append(LocaleController.getString("UserRestrictionsNoEmbedLinks", C2665R.string.UserRestrictionsNoEmbedLinks));
        }
        boolean z12 = tL_chatBannedRights.invite_users;
        if (z12 && this.defaultBannedRights.invite_users != z12) {
            if (sb.length() != 0) {
                sb.append(", ");
            }
            sb.append(LocaleController.getString("UserRestrictionsNoInviteUsers", C2665R.string.UserRestrictionsNoInviteUsers));
        }
        boolean z13 = tL_chatBannedRights.pin_messages;
        if (z13 && this.defaultBannedRights.pin_messages != z13) {
            if (sb.length() != 0) {
                sb.append(", ");
            }
            sb.append(LocaleController.getString(C2665R.string.UserRestrictionsNoPinMessages));
        }
        boolean z14 = tL_chatBannedRights.edit_rank;
        if (z14 && this.defaultBannedRights.edit_rank != z14) {
            if (sb.length() != 0) {
                sb.append(", ");
            }
            sb.append(LocaleController.getString(C2665R.string.UserRestrictionsNoEditTags));
        }
        boolean z15 = tL_chatBannedRights.send_reactions;
        if (z15 && this.defaultBannedRights.send_reactions != z15) {
            if (sb.length() != 0) {
                sb.append(", ");
            }
            sb.append(LocaleController.getString(C2665R.string.UserRestrictionsNoSendReactions));
        }
        boolean z16 = tL_chatBannedRights.change_info;
        if (z16 && this.defaultBannedRights.change_info != z16) {
            if (sb.length() != 0) {
                sb.append(", ");
            }
            sb.append(LocaleController.getString(C2665R.string.UserRestrictionsNoChangeInfo));
        }
        if (sb.length() != 0) {
            sb.replace(0, 1, sb.substring(0, 1).toUpperCase());
            sb.append('.');
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:72:0x014e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void processDone() {
        ChatUsersActivity chatUsersActivity;
        TLRPC.ChatFull chatFull;
        int i = this.type;
        boolean z = false;
        if (i == 3) {
            TLRPC.Chat chat = this.currentChat;
            if (chat.creator && !ChatObject.isChannel(chat) && ((this.selectedSlowmode != this.initialSlowmode || this.enablePrice) && this.info != null)) {
                MessagesController.getInstance(this.currentAccount).convertToMegaGroup(getParentActivity(), this.chatId, this, new MessagesStorage.LongCallback() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda20
                    @Override // org.telegram.messenger.MessagesStorage.LongCallback
                    public final void run(long j) {
                        this.f$0.lambda$processDone$28(j);
                    }
                });
                return;
            }
            chatUsersActivity = this;
            if (!ChatObject.getBannedRightsString(chatUsersActivity.defaultBannedRights).equals(chatUsersActivity.initialBannedRights)) {
                chatUsersActivity.getMessagesController().setDefaultBannedRole(chatUsersActivity.chatId, chatUsersActivity.defaultBannedRights, ChatObject.isChannel(chatUsersActivity.currentChat), chatUsersActivity);
                TLRPC.Chat chat2 = chatUsersActivity.getMessagesController().getChat(Long.valueOf(chatUsersActivity.chatId));
                if (chat2 != null) {
                    chat2.default_banned_rights = chatUsersActivity.defaultBannedRights;
                }
            }
            int i2 = chatUsersActivity.selectedSlowmode;
            if (i2 != chatUsersActivity.initialSlowmode && (chatFull = chatUsersActivity.info) != null) {
                chatFull.slowmode_seconds = chatUsersActivity.getSecondsForIndex(i2);
                chatUsersActivity.info.flags |= 131072;
                chatUsersActivity.getMessagesController().setChannelSlowMode(chatUsersActivity.chatId, chatUsersActivity.info.slowmode_seconds);
            }
            boolean z2 = chatUsersActivity.enablePrice;
            if (z2 != chatUsersActivity.initialEnablePrice || (z2 && chatUsersActivity.initialStarsPrice != chatUsersActivity.starsPrice)) {
                TL_stars.updatePaidMessagesPrice updatepaidmessagesprice = new TL_stars.updatePaidMessagesPrice();
                updatepaidmessagesprice.channel = chatUsersActivity.getMessagesController().getInputChannel(chatUsersActivity.chatId);
                updatepaidmessagesprice.send_paid_messages_stars = chatUsersActivity.enablePrice ? chatUsersActivity.starsPrice : 0L;
                chatUsersActivity.getConnectionsManager().sendRequest(updatepaidmessagesprice, new RequestDelegate() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda21
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda28
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChatUsersActivity.m9582$r8$lambda$oeh6iY0vmOlL6KBPnQc0jiJCtA();
                            }
                        });
                    }
                });
                TLRPC.Chat chat3 = chatUsersActivity.getMessagesController().getChat(Long.valueOf(chatUsersActivity.chatId));
                if (chat3 != null) {
                    boolean z3 = chatUsersActivity.enablePrice;
                    int i3 = chat3.flags2;
                    if (z3) {
                        chat3.flags2 = i3 | 16384;
                        chat3.send_paid_messages_stars = chatUsersActivity.starsPrice;
                    } else {
                        chat3.flags2 = i3 & (-16385);
                        chat3.send_paid_messages_stars = 0L;
                    }
                    chatUsersActivity.getMessagesController().putChat(chat3, true);
                }
            }
            if (chatUsersActivity.hasNotRestrictBoostersChanges()) {
                boolean z4 = chatUsersActivity.isEnabledNotRestrictBoosters && chatUsersActivity.isNotRestrictBoostersVisible();
                if (z4 && chatUsersActivity.notRestrictBoosters == 0) {
                    chatUsersActivity.getMessagesController().setBoostsToUnblockRestrictions(chatUsersActivity.chatId, 1);
                } else if (!z4 && chatUsersActivity.notRestrictBoosters != 0) {
                    chatUsersActivity.getMessagesController().setBoostsToUnblockRestrictions(chatUsersActivity.chatId, 0);
                } else {
                    chatUsersActivity.getMessagesController().setBoostsToUnblockRestrictions(chatUsersActivity.chatId, chatUsersActivity.notRestrictBoosters);
                }
            }
        } else {
            chatUsersActivity = this;
            if (i == 1) {
                boolean z5 = chatUsersActivity.signatures;
                if (z5 != chatUsersActivity.initialSignatures) {
                    MessagesController messagesController = chatUsersActivity.getMessagesController();
                    long j = chatUsersActivity.chatId;
                    boolean z6 = chatUsersActivity.signatures;
                    if (z6 && chatUsersActivity.profiles) {
                        z = true;
                    }
                    messagesController.toggleChannelSignatures(j, z6, z);
                } else {
                    if ((z5 && chatUsersActivity.profiles) != chatUsersActivity.initialProfiles) {
                    }
                }
            }
        }
        chatUsersActivity.finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$28(long j) {
        if (j != 0) {
            this.chatId = j;
            this.currentChat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
            processDone();
        }
    }

    private boolean hasNotRestrictBoostersChanges() {
        boolean z = this.isEnabledNotRestrictBoosters && isNotRestrictBoostersVisible();
        TLRPC.ChatFull chatFull = this.info;
        if (chatFull != null) {
            int i = chatFull.boosts_unrestrict;
            int i2 = this.notRestrictBoosters;
            if (i != i2 || ((z && i2 == 0) || (!z && i2 != 0))) {
                return true;
            }
        }
        return false;
    }

    private boolean isNotRestrictBoostersVisible() {
        TLRPC.Chat chat = this.currentChat;
        if (!chat.megagroup || chat.gigagroup || !ChatObject.canUserDoAdminAction(chat, 13)) {
            return false;
        }
        if (this.selectedSlowmode > 0) {
            return true;
        }
        TLRPC.TL_chatBannedRights tL_chatBannedRights = this.defaultBannedRights;
        return tL_chatBannedRights.send_plain || tL_chatBannedRights.send_media || tL_chatBannedRights.send_photos || tL_chatBannedRights.send_videos || tL_chatBannedRights.send_stickers || tL_chatBannedRights.send_audios || tL_chatBannedRights.send_docs || tL_chatBannedRights.send_voices || tL_chatBannedRights.send_roundvideos || tL_chatBannedRights.embed_links || tL_chatBannedRights.send_polls || tL_chatBannedRights.send_reactions;
    }

    public void setInfo(TLRPC.ChatFull chatFull) {
        this.info = chatFull;
        if (chatFull != null) {
            int currentSlowmode = getCurrentSlowmode();
            this.initialSlowmode = currentSlowmode;
            this.selectedSlowmode = currentSlowmode;
            int i = this.info.boosts_unrestrict;
            this.isEnabledNotRestrictBoosters = i > 0;
            this.notRestrictBoosters = i;
            TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
            long j = chat == null ? 0L : chat.send_paid_messages_stars;
            boolean z = j > 0;
            this.enablePrice = z;
            this.initialEnablePrice = z;
            if (j <= 0) {
                j = 10;
            }
            long jClamp = Utilities.clamp(j, getMessagesController().starsPaidMessageAmountMax, 1L);
            this.starsPrice = jClamp;
            this.initialStarsPrice = jClamp;
        }
    }

    public static int getChannelAdminParticipantType(TLObject tLObject) {
        if ((tLObject instanceof TLRPC.TL_channelParticipantCreator) || (tLObject instanceof TLRPC.TL_channelParticipantSelf)) {
            return 0;
        }
        return ((tLObject instanceof TLRPC.TL_channelParticipantAdmin) || (tLObject instanceof TLRPC.TL_channelParticipant)) ? 1 : 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadChatParticipants(int i, int i2) {
        if (this.loadingUsers) {
            return;
        }
        this.contactsEndReached = false;
        this.botsEndReached = false;
        loadChatParticipants(i, i2, true);
    }

    private ArrayList<TLRPC.TL_channels_getParticipants> loadChatParticipantsRequests(int i, int i2, boolean z) {
        TLRPC.Chat chat;
        TLRPC.TL_channels_getParticipants tL_channels_getParticipants = new TLRPC.TL_channels_getParticipants();
        ArrayList<TLRPC.TL_channels_getParticipants> arrayList = new ArrayList<>();
        arrayList.add(tL_channels_getParticipants);
        tL_channels_getParticipants.channel = getMessagesController().getInputChannel(this.chatId);
        int i3 = this.type;
        if (i3 == 0) {
            tL_channels_getParticipants.filter = new TLRPC.TL_channelParticipantsKicked();
        } else if (i3 == 1) {
            tL_channels_getParticipants.filter = new TLRPC.TL_channelParticipantsAdmins();
        } else if (i3 == 2) {
            TLRPC.ChatFull chatFull = this.info;
            if (chatFull != null && chatFull.participants_count <= 200 && (chat = this.currentChat) != null && chat.megagroup) {
                tL_channels_getParticipants.filter = new TLRPC.TL_channelParticipantsRecent();
            } else {
                int i4 = this.selectType;
                boolean z2 = this.contactsEndReached;
                if (i4 == 1) {
                    if (!z2) {
                        this.delayResults = 2;
                        tL_channels_getParticipants.filter = new TLRPC.TL_channelParticipantsContacts();
                        this.contactsEndReached = true;
                        arrayList.addAll(loadChatParticipantsRequests(0, 200, false));
                    } else {
                        tL_channels_getParticipants.filter = new TLRPC.TL_channelParticipantsRecent();
                    }
                } else if (!z2) {
                    this.delayResults = 3;
                    tL_channels_getParticipants.filter = new TLRPC.TL_channelParticipantsContacts();
                    this.contactsEndReached = true;
                    arrayList.addAll(loadChatParticipantsRequests(0, 200, false));
                } else if (!this.botsEndReached) {
                    tL_channels_getParticipants.filter = new TLRPC.TL_channelParticipantsBots();
                    this.botsEndReached = true;
                    arrayList.addAll(loadChatParticipantsRequests(0, 200, false));
                } else {
                    tL_channels_getParticipants.filter = new TLRPC.TL_channelParticipantsRecent();
                }
            }
        } else if (i3 == 3) {
            tL_channels_getParticipants.filter = new TLRPC.TL_channelParticipantsBanned();
        }
        tL_channels_getParticipants.filter.f1011q = _UrlKt.FRAGMENT_ENCODE_SET;
        tL_channels_getParticipants.offset = i;
        tL_channels_getParticipants.limit = i2;
        return arrayList;
    }

    private void loadChatParticipants(int i, int i2, boolean z) {
        TLRPC.ChatFull chatFull;
        LongSparseArray<TLRPC.GroupCallParticipant> longSparseArray;
        TLRPC.ChatParticipants chatParticipants;
        int i3 = 0;
        if (this.isCommunity && this.type == 2) {
            this.loadingUsers = false;
            this.participants.clear();
            this.bots.clear();
            this.contacts.clear();
            this.participantsMap.clear();
            this.contactsMap.clear();
            this.botsMap.clear();
            HashMap<String, ArrayList<TLRPC.TL_contact>> map = ContactsController.getInstance(this.currentAccount).usersSectionsDict;
            ArrayList<String> arrayList = ContactsController.getInstance(this.currentAccount).sortedUsersSectionsArray;
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                String str = arrayList.get(i4);
                i4++;
                ArrayList<TLRPC.TL_contact> arrayList2 = map.get(str);
                int size2 = arrayList2.size();
                int i5 = 0;
                while (i5 < size2) {
                    TLRPC.TL_contact tL_contact = arrayList2.get(i5);
                    i5++;
                    this.participants.add(getMessagesController().getUser(Long.valueOf(tL_contact.user_id)));
                }
            }
            updateRows();
            ListAdapter listAdapter = this.listViewAdapter;
            if (listAdapter != null) {
                listAdapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        if (!ChatObject.isChannel(this.currentChat)) {
            this.loadingUsers = false;
            this.participants.clear();
            this.bots.clear();
            this.contacts.clear();
            this.participantsMap.clear();
            this.contactsMap.clear();
            this.botsMap.clear();
            int i6 = this.type;
            if (i6 == 1) {
                TLRPC.ChatFull chatFull2 = this.info;
                if (chatFull2 != null && (chatParticipants = chatFull2.participants) != null) {
                    int size3 = chatParticipants.participants.size();
                    while (i3 < size3) {
                        TLRPC.ChatParticipant chatParticipant = this.info.participants.participants.get(i3);
                        if ((chatParticipant instanceof TLRPC.TL_chatParticipantCreator) || (chatParticipant instanceof TLRPC.TL_chatParticipantAdmin)) {
                            this.participants.add(chatParticipant);
                        }
                        this.participantsMap.put(chatParticipant.user_id, chatParticipant);
                        i3++;
                    }
                }
            } else if (i6 == 2 && (chatFull = this.info) != null && chatFull.participants != null) {
                long j = getUserConfig().clientUserId;
                int size4 = this.info.participants.participants.size();
                while (i3 < size4) {
                    TLRPC.ChatParticipant chatParticipant2 = this.info.participants.participants.get(i3);
                    if ((this.selectType == 0 || chatParticipant2.user_id != j) && ((longSparseArray = this.ignoredUsers) == null || longSparseArray.indexOfKey(chatParticipant2.user_id) < 0)) {
                        if (this.selectType == 1) {
                            if (getContactsController().isContact(chatParticipant2.user_id)) {
                                this.contacts.add(chatParticipant2);
                                this.contactsMap.put(chatParticipant2.user_id, chatParticipant2);
                            } else if (!UserObject.isDeleted(getMessagesController().getUser(Long.valueOf(chatParticipant2.user_id)))) {
                                this.participants.add(chatParticipant2);
                                this.participantsMap.put(chatParticipant2.user_id, chatParticipant2);
                            }
                        } else if (getContactsController().isContact(chatParticipant2.user_id)) {
                            this.contacts.add(chatParticipant2);
                            this.contactsMap.put(chatParticipant2.user_id, chatParticipant2);
                        } else {
                            TLRPC.User user = getMessagesController().getUser(Long.valueOf(chatParticipant2.user_id));
                            if (user != null && user.bot) {
                                this.bots.add(chatParticipant2);
                                this.botsMap.put(chatParticipant2.user_id, chatParticipant2);
                            } else {
                                this.participants.add(chatParticipant2);
                                this.participantsMap.put(chatParticipant2.user_id, chatParticipant2);
                            }
                        }
                    }
                    i3++;
                }
            }
            ListAdapter listAdapter2 = this.listViewAdapter;
            if (listAdapter2 != null) {
                listAdapter2.notifyDataSetChanged();
            }
            updateRows();
            ListAdapter listAdapter3 = this.listViewAdapter;
            if (listAdapter3 != null) {
                listAdapter3.notifyDataSetChanged();
                return;
            }
            return;
        }
        this.loadingUsers = true;
        StickerEmptyView stickerEmptyView = this.emptyView;
        if (stickerEmptyView != null) {
            stickerEmptyView.showProgress(true, false);
        }
        ListAdapter listAdapter4 = this.listViewAdapter;
        if (listAdapter4 != null) {
            listAdapter4.notifyDataSetChanged();
        }
        final ArrayList<TLRPC.TL_channels_getParticipants> arrayListLoadChatParticipantsRequests = loadChatParticipantsRequests(i, i2, z);
        final ArrayList arrayList3 = new ArrayList();
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadChatParticipants$31(arrayListLoadChatParticipantsRequests, arrayList3);
            }
        };
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        for (final int i7 = 0; i7 < arrayListLoadChatParticipantsRequests.size(); i7++) {
            arrayList3.add(null);
            getConnectionsManager().bindRequestToGuid(getConnectionsManager().sendRequest(arrayListLoadChatParticipantsRequests.get(i7), new RequestDelegate() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda3
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda22
                        @Override // java.lang.Runnable
                        public final void run() {
                            ChatUsersActivity.m9569$r8$lambda$55ORjWHfEEiMA1jWmi42a1piM(tL_error, tLObject, arrayList, i, atomicInteger, arrayList, runnable);
                        }
                    });
                }
            }), this.classGuid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:80:0x016b  */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12, types: [int] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [int] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$loadChatParticipants$31(ArrayList arrayList, ArrayList arrayList2) {
        int i;
        ArrayList<TLObject> arrayList3;
        LongSparseArray<TLObject> longSparseArray;
        int i2;
        TLRPC.Chat chat;
        LongSparseArray<TLRPC.GroupCallParticipant> longSparseArray2;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        while (i4 < arrayList.size()) {
            TLRPC.TL_channels_getParticipants tL_channels_getParticipants = (TLRPC.TL_channels_getParticipants) arrayList.get(i4);
            TLRPC.TL_channels_channelParticipants tL_channels_channelParticipants = (TLRPC.TL_channels_channelParticipants) arrayList2.get(i4);
            if (tL_channels_getParticipants == null || tL_channels_channelParticipants == null) {
                i = i4;
            } else {
                if (this.type == 1) {
                    getMessagesController().processLoadedAdminsResponse(this.chatId, tL_channels_channelParticipants);
                }
                getMessagesController().putUsers(tL_channels_channelParticipants.users, z);
                getMessagesController().putChats(tL_channels_channelParticipants.chats, z);
                long clientUserId = getUserConfig().getClientUserId();
                if (this.selectType != 0) {
                    ?? r12 = z;
                    while (true) {
                        if (r12 >= tL_channels_channelParticipants.participants.size()) {
                            break;
                        }
                        if (MessageObject.getPeerId(tL_channels_channelParticipants.participants.get(r12).peer) == clientUserId) {
                            tL_channels_channelParticipants.participants.remove((int) r12);
                            break;
                        }
                        r12++;
                    }
                }
                if (this.type == 2) {
                    this.delayResults--;
                    TLRPC.ChannelParticipantsFilter channelParticipantsFilter = tL_channels_getParticipants.filter;
                    if (channelParticipantsFilter instanceof TLRPC.TL_channelParticipantsContacts) {
                        arrayList3 = this.contacts;
                        longSparseArray = this.contactsMap;
                    } else if (channelParticipantsFilter instanceof TLRPC.TL_channelParticipantsBots) {
                        arrayList3 = this.bots;
                        longSparseArray = this.botsMap;
                    } else {
                        arrayList3 = this.participants;
                        longSparseArray = this.participantsMap;
                    }
                } else {
                    arrayList3 = this.participants;
                    longSparseArray = this.participantsMap;
                    longSparseArray.clear();
                }
                arrayList3.clear();
                arrayList3.addAll(tL_channels_channelParticipants.participants);
                int size = tL_channels_channelParticipants.participants.size();
                for (?? r14 = z; r14 < size; r14++) {
                    TLRPC.ChannelParticipant channelParticipant = tL_channels_channelParticipants.participants.get(r14);
                    int i5 = i4;
                    if (channelParticipant.user_id == clientUserId) {
                        arrayList3.remove(channelParticipant);
                    } else {
                        longSparseArray.put(MessageObject.getPeerId(channelParticipant.peer), channelParticipant);
                    }
                    i4 = i5;
                }
                i = i4;
                int size2 = arrayList3.size() + i3;
                if (this.type == 2) {
                    int size3 = this.participants.size();
                    int i6 = 0;
                    while (i6 < size3) {
                        TLObject tLObject = this.participants.get(i6);
                        if (!(tLObject instanceof TLRPC.ChannelParticipant)) {
                            this.participants.remove(i6);
                        } else {
                            long peerId = MessageObject.getPeerId(((TLRPC.ChannelParticipant) tLObject).peer);
                            if (this.contactsMap.get(peerId) == null && this.botsMap.get(peerId) == null && (!(this.selectType == 1 && peerId > 0 && UserObject.isDeleted(getMessagesController().getUser(Long.valueOf(peerId)))) && ((longSparseArray2 = this.ignoredUsers) == null || longSparseArray2.indexOfKey(peerId) < 0))) {
                                i6++;
                            } else {
                                this.participants.remove(i6);
                                this.participantsMap.remove(peerId);
                            }
                        }
                        i6--;
                        size3--;
                        i6++;
                    }
                }
                try {
                    i2 = this.type;
                } catch (Exception e) {
                    FileLog.m992e(e);
                }
                if ((i2 == 0 || i2 == 3 || i2 == 2) && (chat = this.currentChat) != null && chat.megagroup) {
                    TLRPC.ChatFull chatFull = this.info;
                    if ((chatFull instanceof TLRPC.TL_channelFull) && chatFull.participants_count <= 200) {
                        sortUsers(arrayList3);
                    } else if (i2 == 1) {
                        sortAdmins(this.participants);
                    }
                    i3 = size2;
                }
            }
            i4 = i + 1;
            z = false;
        }
        if (this.type != 2 || this.delayResults <= 0) {
            ListAdapter listAdapter = this.listViewAdapter;
            showItemsAnimated(listAdapter != null ? listAdapter.getItemCount() : 0);
            this.loadingUsers = false;
            this.firstLoaded = true;
            ActionBarMenuItem actionBarMenuItem = this.searchItem;
            if (actionBarMenuItem != null) {
                actionBarMenuItem.setVisibility((this.type != 0 || i3 > 5) ? 0 : 8);
            }
        }
        updateRows();
        if (this.listViewAdapter != null) {
            this.listView.setAnimateEmptyView(this.openTransitionStarted, 0);
            this.listViewAdapter.notifyDataSetChanged();
            if (this.emptyView != null && this.listViewAdapter.getItemCount() == 0 && this.firstLoaded) {
                this.emptyView.showProgress(false, true);
            }
        }
        resumeDelayedFragmentAnimation();
    }

    /* JADX INFO: renamed from: $r8$lambda$55ORjWHfEEiMA-1j-Wmi42a1piM, reason: not valid java name */
    public static /* synthetic */ void m9569$r8$lambda$55ORjWHfEEiMA1jWmi42a1piM(TLRPC.TL_error tL_error, TLObject tLObject, ArrayList arrayList, int i, AtomicInteger atomicInteger, ArrayList arrayList2, Runnable runnable) {
        if (tL_error == null && (tLObject instanceof TLRPC.TL_channels_channelParticipants)) {
            arrayList.set(i, (TLRPC.TL_channels_channelParticipants) tLObject);
        }
        atomicInteger.getAndIncrement();
        if (atomicInteger.get() == arrayList2.size()) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sortUsers(ArrayList<TLObject> arrayList) {
        final int currentTime = getConnectionsManager().getCurrentTime();
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda8
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return this.f$0.lambda$sortUsers$34(currentTime, (TLObject) obj, (TLObject) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$sortUsers$34(int i, TLObject tLObject, TLObject tLObject2) {
        int i2;
        TLRPC.UserStatus userStatus;
        TLRPC.UserStatus userStatus2;
        TLRPC.ChannelParticipant channelParticipant = (TLRPC.ChannelParticipant) tLObject;
        TLRPC.ChannelParticipant channelParticipant2 = (TLRPC.ChannelParticipant) tLObject2;
        long peerId = MessageObject.getPeerId(channelParticipant.peer);
        long peerId2 = MessageObject.getPeerId(channelParticipant2.peer);
        int i3 = -100;
        if (peerId > 0) {
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(MessageObject.getPeerId(channelParticipant.peer)));
            if (user == null || (userStatus2 = user.status) == null) {
                i2 = 0;
            } else {
                i2 = user.self ? i + 50000 : userStatus2.expires;
            }
        } else {
            i2 = -100;
        }
        if (peerId2 > 0) {
            TLRPC.User user2 = getMessagesController().getUser(Long.valueOf(MessageObject.getPeerId(channelParticipant2.peer)));
            if (user2 == null || (userStatus = user2.status) == null) {
                i3 = 0;
            } else {
                i3 = user2.self ? i + 50000 : userStatus.expires;
            }
        }
        if (i2 > 0 && i3 > 0) {
            if (i2 > i3) {
                return 1;
            }
            return i2 < i3 ? -1 : 0;
        }
        if (i2 < 0 && i3 < 0) {
            if (i2 > i3) {
                return 1;
            }
            return i2 < i3 ? -1 : 0;
        }
        if ((i2 >= 0 || i3 <= 0) && (i2 != 0 || i3 == 0)) {
            return ((i3 >= 0 || i2 <= 0) && (i3 != 0 || i2 == 0)) ? 0 : 1;
        }
        return -1;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        ListAdapter listAdapter = this.listViewAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        StickerEmptyView stickerEmptyView = this.emptyView;
        if (stickerEmptyView != null) {
            stickerEmptyView.requestLayout();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        UndoView undoView = this.undoView;
        if (undoView != null) {
            undoView.hide(true, 0);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        UndoView undoView = this.undoView;
        if (undoView != null) {
            undoView.hide(true, 0);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z) {
            this.openTransitionStarted = true;
        }
        if (z && !z2 && this.needOpenSearch) {
            this.searchItem.getSearchField().requestFocus();
            AndroidUtilities.showKeyboard(this.searchItem.getSearchField());
            this.searchItem.setVisibility(8);
        }
    }

    public class SearchAdapter extends RecyclerListView.SelectionAdapter {
        private int contactsStartRow;
        private int globalStartRow;
        private int groupStartRow;
        private Context mContext;
        private SearchAdapterHelper searchAdapterHelper;
        private boolean searchInProgress;
        private Runnable searchRunnable;
        private ArrayList<Object> searchResult = new ArrayList<>();
        private LongSparseArray<TLObject> searchResultMap = new LongSparseArray<>();
        private ArrayList<CharSequence> searchResultNames = new ArrayList<>();
        private int totalCount = 0;

        public SearchAdapter(Context context) {
            this.mContext = context;
            SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(true);
            this.searchAdapterHelper = searchAdapterHelper;
            searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public final void onDataSetChanged(int i) {
                    this.f$0.lambda$new$0(i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i) {
            if (this.searchAdapterHelper.isSearchInProgress()) {
                return;
            }
            int itemCount = getItemCount();
            notifyDataSetChanged();
            if (getItemCount() > itemCount) {
                ChatUsersActivity.this.showItemsAnimated(itemCount);
            }
            if (this.searchInProgress || getItemCount() != 0 || i == 0) {
                return;
            }
            ChatUsersActivity.this.emptyView.showProgress(false, true);
        }

        public void searchUsers(final String str) {
            if (this.searchRunnable != null) {
                Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                this.searchRunnable = null;
            }
            this.searchResult.clear();
            this.searchResultMap.clear();
            this.searchResultNames.clear();
            this.searchAdapterHelper.mergeResults(null);
            this.searchAdapterHelper.queryServerSearch(null, ChatUsersActivity.this.type != 0, false, true, false, false, ChatObject.isChannel(ChatUsersActivity.this.currentChat) ? ChatUsersActivity.this.chatId : 0L, false, ChatUsersActivity.this.type, 0);
            notifyDataSetChanged();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.searchInProgress = true;
            ChatUsersActivity.this.emptyView.showProgress(true, true);
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchUsers$1(str);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: processSearch, reason: merged with bridge method [inline-methods] */
        public void lambda$searchUsers$1(final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processSearch$3(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processSearch$3(String str) {
            final String str2;
            Runnable runnable = null;
            this.searchRunnable = null;
            final ArrayList arrayList = (ChatObject.isChannel(ChatUsersActivity.this.currentChat) || ChatUsersActivity.this.info == null) ? null : new ArrayList(ChatUsersActivity.this.info.participants.participants);
            final ArrayList arrayList2 = ChatUsersActivity.this.selectType == 1 ? new ArrayList(ChatUsersActivity.this.getContactsController().contacts) : null;
            if (arrayList != null || arrayList2 != null) {
                str2 = str;
                runnable = new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$processSearch$2(str2, arrayList, arrayList2);
                    }
                };
            } else {
                this.searchInProgress = false;
                str2 = str;
            }
            this.searchAdapterHelper.queryServerSearch(str2, ChatUsersActivity.this.selectType != 0, false, true, false, false, ChatObject.isChannel(ChatUsersActivity.this.currentChat) ? ChatUsersActivity.this.chatId : 0L, false, ChatUsersActivity.this.type, 1, 0L, runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:102:0x027a A[LOOP:3: B:79:0x01f2->B:102:0x027a, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:111:0x0157 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:115:0x023a A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0186 A[LOOP:1: B:40:0x010a->B:64:0x0186, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:95:0x0237  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$processSearch$2(String str, ArrayList arrayList, ArrayList arrayList2) {
            LongSparseArray<TLObject> longSparseArray;
            int i;
            long peerId;
            LongSparseArray<TLObject> longSparseArray2;
            int i2;
            String[] strArr;
            int i3;
            int i4;
            String lowerCase;
            String publicUsername;
            String str2;
            String str3;
            char c2;
            ArrayList arrayList3 = arrayList;
            String lowerCase2 = str.trim().toLowerCase();
            if (lowerCase2.length() == 0) {
                updateSearchResults(new ArrayList<>(), new LongSparseArray<>(), new ArrayList<>(), new ArrayList<>());
                return;
            }
            String translitString = LocaleController.getInstance().getTranslitString(lowerCase2);
            if (lowerCase2.equals(translitString) || translitString.length() == 0) {
                translitString = null;
            }
            int i5 = 0;
            int i6 = (translitString != null ? 1 : 0) + 1;
            String[] strArr2 = new String[i6];
            strArr2[0] = lowerCase2;
            if (translitString != null) {
                strArr2[1] = translitString;
            }
            ArrayList<Object> arrayList4 = new ArrayList<>();
            LongSparseArray<TLObject> longSparseArray3 = new LongSparseArray<>();
            ArrayList<CharSequence> arrayList5 = new ArrayList<>();
            ArrayList<TLObject> arrayList6 = new ArrayList<>();
            if (arrayList3 != null) {
                int size = arrayList3.size();
                while (i5 < size) {
                    TLObject tLObject = (TLObject) arrayList3.get(i5);
                    if (tLObject instanceof TLRPC.ChatParticipant) {
                        i = i6;
                        peerId = ((TLRPC.ChatParticipant) tLObject).user_id;
                    } else {
                        i = i6;
                        if (tLObject instanceof TLRPC.ChannelParticipant) {
                            peerId = MessageObject.getPeerId(((TLRPC.ChannelParticipant) tLObject).peer);
                        }
                        longSparseArray2 = longSparseArray3;
                        i3 = i5;
                        strArr = strArr2;
                        i2 = size;
                        i4 = i;
                        i5 = i3 + 1;
                        arrayList3 = arrayList;
                        i6 = i4;
                        strArr2 = strArr;
                        size = i2;
                        longSparseArray3 = longSparseArray2;
                    }
                    ChatUsersActivity chatUsersActivity = ChatUsersActivity.this;
                    if (peerId > 0) {
                        TLRPC.User user = chatUsersActivity.getMessagesController().getUser(Long.valueOf(peerId));
                        if (user.id != ChatUsersActivity.this.getUserConfig().getClientUserId()) {
                            lowerCase = UserObject.getUserName(user).toLowerCase();
                            publicUsername = UserObject.getPublicUsername(user);
                            str2 = user.first_name;
                            str3 = user.last_name;
                        }
                        longSparseArray2 = longSparseArray3;
                        i3 = i5;
                        strArr = strArr2;
                        i2 = size;
                        i4 = i;
                        i5 = i3 + 1;
                        arrayList3 = arrayList;
                        i6 = i4;
                        strArr2 = strArr;
                        size = i2;
                        longSparseArray3 = longSparseArray2;
                    } else {
                        TLRPC.Chat chat = chatUsersActivity.getMessagesController().getChat(Long.valueOf(-peerId));
                        lowerCase = chat.title.toLowerCase();
                        publicUsername = ChatObject.getPublicUsername(chat);
                        str2 = chat.title;
                        str3 = null;
                    }
                    i3 = i5;
                    String translitString2 = LocaleController.getInstance().getTranslitString(lowerCase);
                    if (lowerCase.equals(translitString2)) {
                        translitString2 = null;
                    }
                    strArr = strArr2;
                    i2 = size;
                    i4 = i;
                    int i7 = 0;
                    char c3 = 0;
                    while (true) {
                        if (i7 >= i4) {
                            longSparseArray2 = longSparseArray3;
                            break;
                        }
                        int i8 = i7;
                        String str4 = strArr[i8];
                        if (lowerCase.startsWith(str4)) {
                            longSparseArray2 = longSparseArray3;
                        } else {
                            longSparseArray2 = longSparseArray3;
                            if (!lowerCase.contains(" " + str4)) {
                                if (translitString2 != null) {
                                    if (!translitString2.startsWith(str4)) {
                                        if (translitString2.contains(" " + str4)) {
                                        }
                                        if (c2 != 0) {
                                            if (c2 == 1) {
                                                arrayList5.add(AndroidUtilities.generateSearchName(str2, str3, str4));
                                            } else {
                                                arrayList5.add(AndroidUtilities.generateSearchName("@" + publicUsername, null, "@" + str4));
                                            }
                                            arrayList6.add(tLObject);
                                        } else {
                                            i7 = i8 + 1;
                                            c3 = c2;
                                            longSparseArray3 = longSparseArray2;
                                        }
                                    }
                                }
                                c2 = (publicUsername == null || !publicUsername.startsWith(str4)) ? c3 : (char) 2;
                                if (c2 != 0) {
                                }
                            }
                        }
                        c2 = 1;
                        if (c2 != 0) {
                        }
                    }
                    i5 = i3 + 1;
                    arrayList3 = arrayList;
                    i6 = i4;
                    strArr2 = strArr;
                    size = i2;
                    longSparseArray3 = longSparseArray2;
                }
            }
            LongSparseArray<TLObject> longSparseArray4 = longSparseArray3;
            String[] strArr3 = strArr2;
            int i9 = i6;
            if (arrayList2 != null) {
                int i10 = 0;
                while (i10 < arrayList2.size()) {
                    TLRPC.User user2 = ChatUsersActivity.this.getMessagesController().getUser(Long.valueOf(((TLRPC.TL_contact) arrayList2.get(i10)).user_id));
                    if (user2.id == ChatUsersActivity.this.getUserConfig().getClientUserId()) {
                        longSparseArray = longSparseArray4;
                    } else {
                        String lowerCase3 = UserObject.getUserName(user2).toLowerCase();
                        String translitString3 = LocaleController.getInstance().getTranslitString(lowerCase3);
                        if (lowerCase3.equals(translitString3)) {
                            translitString3 = null;
                        }
                        char c4 = 0;
                        for (int i11 = 0; i11 < i9; i11++) {
                            String str5 = strArr3[i11];
                            if (!lowerCase3.startsWith(str5)) {
                                if (lowerCase3.contains(" " + str5)) {
                                    c4 = 1;
                                    if (c4 == 0) {
                                        if (c4 == 1) {
                                            arrayList5.add(AndroidUtilities.generateSearchName(user2.first_name, user2.last_name, str5));
                                        } else {
                                            arrayList5.add(AndroidUtilities.generateSearchName("@" + UserObject.getPublicUsername(user2), null, "@" + str5));
                                        }
                                        arrayList4.add(user2);
                                        LongSparseArray<TLObject> longSparseArray5 = longSparseArray4;
                                        longSparseArray5.put(user2.id, user2);
                                        longSparseArray = longSparseArray5;
                                    }
                                } else {
                                    if (translitString3 != null) {
                                        if (!translitString3.startsWith(str5)) {
                                            if (translitString3.contains(" " + str5)) {
                                            }
                                            if (c4 == 0) {
                                            }
                                        }
                                        c4 = 1;
                                        if (c4 == 0) {
                                        }
                                    }
                                    String publicUsername2 = UserObject.getPublicUsername(user2);
                                    if (publicUsername2 != null && publicUsername2.startsWith(str5)) {
                                        c4 = 2;
                                    }
                                    if (c4 == 0) {
                                    }
                                }
                            }
                        }
                        longSparseArray = longSparseArray4;
                    }
                    i10++;
                    longSparseArray4 = longSparseArray;
                }
            }
            updateSearchResults(arrayList4, longSparseArray4, arrayList5, arrayList6);
        }

        private void updateSearchResults(final ArrayList<Object> arrayList, final LongSparseArray<TLObject> longSparseArray, final ArrayList<CharSequence> arrayList2, final ArrayList<TLObject> arrayList3) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateSearchResults$4(arrayList, longSparseArray, arrayList2, arrayList3);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$4(ArrayList arrayList, LongSparseArray longSparseArray, ArrayList arrayList2, ArrayList arrayList3) {
            if (ChatUsersActivity.this.searching) {
                this.searchInProgress = false;
                this.searchResult = arrayList;
                this.searchResultMap = longSparseArray;
                this.searchResultNames = arrayList2;
                this.searchAdapterHelper.mergeResults(arrayList);
                if (!ChatObject.isChannel(ChatUsersActivity.this.currentChat)) {
                    ArrayList<TLObject> groupSearch = this.searchAdapterHelper.getGroupSearch();
                    groupSearch.clear();
                    groupSearch.addAll(arrayList3);
                }
                int itemCount = getItemCount();
                notifyDataSetChanged();
                if (getItemCount() > itemCount) {
                    ChatUsersActivity.this.showItemsAnimated(itemCount);
                }
                if (this.searchAdapterHelper.isSearchInProgress() || getItemCount() != 0) {
                    return;
                }
                ChatUsersActivity.this.emptyView.showProgress(false, true);
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() != 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.totalCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            this.totalCount = 0;
            int size = this.searchAdapterHelper.getGroupSearch().size();
            if (size != 0) {
                this.groupStartRow = 0;
                this.totalCount += size + 1;
            } else {
                this.groupStartRow = -1;
            }
            int size2 = this.searchResult.size();
            if (size2 != 0) {
                int i = this.totalCount;
                this.contactsStartRow = i;
                this.totalCount = i + size2 + 1;
            } else {
                this.contactsStartRow = -1;
            }
            int size3 = this.searchAdapterHelper.getGlobalSearch().size();
            if (size3 != 0) {
                int i2 = this.totalCount;
                this.globalStartRow = i2;
                this.totalCount = i2 + size3 + 1;
            } else {
                this.globalStartRow = -1;
            }
            if (ChatUsersActivity.this.searching && ChatUsersActivity.this.listView != null && ChatUsersActivity.this.listView.getAdapter() != ChatUsersActivity.this.searchListViewAdapter) {
                ChatUsersActivity.this.listView.setAnimateEmptyView(true, 0);
                ChatUsersActivity.this.listView.setAdapter(ChatUsersActivity.this.searchListViewAdapter);
                ChatUsersActivity.this.listView.setFastScrollVisible(false);
                ChatUsersActivity.this.listView.setVerticalScrollBarEnabled(true);
            }
            super.notifyDataSetChanged();
        }

        public void removeUserId(long j) {
            this.searchAdapterHelper.removeUserId(j);
            TLObject tLObject = this.searchResultMap.get(j);
            if (tLObject != null) {
                this.searchResult.remove(tLObject);
            }
            notifyDataSetChanged();
        }

        public TLObject getItem(int i) {
            int size = this.searchAdapterHelper.getGroupSearch().size();
            if (size != 0) {
                int i2 = size + 1;
                if (i2 > i) {
                    if (i == 0) {
                        return null;
                    }
                    return this.searchAdapterHelper.getGroupSearch().get(i - 1);
                }
                i -= i2;
            }
            int size2 = this.searchResult.size();
            if (size2 != 0) {
                int i3 = size2 + 1;
                if (i3 > i) {
                    if (i == 0) {
                        return null;
                    }
                    return (TLObject) this.searchResult.get(i - 1);
                }
                i -= i3;
            }
            int size3 = this.searchAdapterHelper.getGlobalSearch().size();
            if (size3 == 0 || size3 + 1 <= i || i == 0) {
                return null;
            }
            return this.searchAdapterHelper.getGlobalSearch().get(i - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onCreateViewHolder$5(ManageChatUserCell manageChatUserCell, boolean z) {
            TLObject item = getItem(((Integer) manageChatUserCell.getTag()).intValue());
            if (!(item instanceof TLRPC.ChannelParticipant)) {
                return false;
            }
            return ChatUsersActivity.this.createMenuForParticipant((TLRPC.ChannelParticipant) item, !z, manageChatUserCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            if (i == 0) {
                ManageChatUserCell manageChatUserCell = new ManageChatUserCell(this.mContext, 2, 2, ChatUsersActivity.this.selectType == 0);
                manageChatUserCell.setUsernameSubtitle();
                manageChatUserCell.setDelegate(new ManageChatUserCell.ManageChatUserCellDelegate() { // from class: org.telegram.ui.ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.Cells.ManageChatUserCell.ManageChatUserCellDelegate
                    public final boolean onOptionsButtonCheck(ManageChatUserCell manageChatUserCell2, boolean z) {
                        return this.f$0.lambda$onCreateViewHolder$5(manageChatUserCell2, z);
                    }
                });
                view = manageChatUserCell;
            } else {
                GraySectionCell graySectionCell = new GraySectionCell(this.mContext, 26, ((BaseFragment) ChatUsersActivity.this).resourceProvider);
                graySectionCell.setBackground(null);
                view = graySectionCell;
            }
            return new RecyclerListView.Holder(view);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v2, types: [android.view.View, org.telegram.ui.Cells.ManageChatUserCell] */
        /* JADX WARN: Type inference failed for: r6v16 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.CharSequence] */
        /* JADX WARN: Type inference failed for: r6v6, types: [android.text.SpannableStringBuilder] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String publicUsername;
            Object obj;
            String lastFoundChannel;
            boolean z;
            boolean z2;
            ?? spannableStringBuilder;
            int size;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    return;
                }
                GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                if (i == this.groupStartRow) {
                    if (ChatUsersActivity.this.type == 0) {
                        graySectionCell.setText(LocaleController.getString(C2665R.string.ChannelBlockedUsers));
                        return;
                    }
                    if (ChatUsersActivity.this.type == 3) {
                        graySectionCell.setText(LocaleController.getString(C2665R.string.ChannelRestrictedUsers));
                        return;
                    } else if (ChatUsersActivity.this.isChannel) {
                        graySectionCell.setText(LocaleController.getString(C2665R.string.ChannelSubscribers));
                        return;
                    } else {
                        graySectionCell.setText(LocaleController.getString(C2665R.string.ChannelMembers));
                        return;
                    }
                }
                if (i == this.globalStartRow) {
                    graySectionCell.setText(LocaleController.getString(C2665R.string.GlobalSearch));
                    return;
                } else {
                    if (i == this.contactsStartRow) {
                        graySectionCell.setText(LocaleController.getString(C2665R.string.Contacts));
                        return;
                    }
                    return;
                }
            }
            TLObject item = getItem(i);
            boolean z3 = item instanceof TLRPC.User;
            CharSequence charSequence = null;
            charSequence = null;
            charSequence = null;
            CharSequence charSequence2 = null;
            Object user = item;
            if (z3) {
                publicUsername = null;
                obj = user;
            } else {
                if (item instanceof TLRPC.ChannelParticipant) {
                    long peerId = MessageObject.getPeerId(((TLRPC.ChannelParticipant) item).peer);
                    ChatUsersActivity chatUsersActivity = ChatUsersActivity.this;
                    if (peerId >= 0) {
                        TLRPC.User user2 = chatUsersActivity.getMessagesController().getUser(Long.valueOf(peerId));
                        user = user2;
                        if (user2 != null) {
                            publicUsername = UserObject.getPublicUsername(user2);
                            obj = user2;
                        }
                    } else {
                        TLRPC.Chat chat = chatUsersActivity.getMessagesController().getChat(Long.valueOf(-peerId));
                        user = chat;
                        if (chat != null) {
                            publicUsername = ChatObject.getPublicUsername(chat);
                            obj = chat;
                        }
                    }
                } else if (!(item instanceof TLRPC.ChatParticipant)) {
                    return;
                } else {
                    user = ChatUsersActivity.this.getMessagesController().getUser(Long.valueOf(((TLRPC.ChatParticipant) item).user_id));
                }
                publicUsername = null;
                obj = user;
            }
            int size2 = this.searchAdapterHelper.getGroupSearch().size();
            if (size2 == 0) {
                lastFoundChannel = null;
                z = false;
            } else {
                int i2 = size2 + 1;
                if (i2 > i) {
                    lastFoundChannel = this.searchAdapterHelper.getLastFoundChannel();
                    z = true;
                } else {
                    i -= i2;
                    lastFoundChannel = null;
                    z = false;
                }
            }
            if (z || (size = this.searchResult.size()) == 0) {
                z2 = z;
                spannableStringBuilder = 0;
            } else {
                int i3 = size + 1;
                if (i3 > i) {
                    CharSequence charSequence3 = this.searchResultNames.get(i - 1);
                    CharSequence charSequence4 = charSequence3;
                    if (charSequence3 != null) {
                        charSequence4 = charSequence3;
                        if (!TextUtils.isEmpty(publicUsername)) {
                            String string = charSequence3.toString();
                            charSequence4 = charSequence3;
                            if (string.startsWith("@" + publicUsername)) {
                                charSequence4 = null;
                                charSequence2 = charSequence3;
                            }
                        }
                    }
                    z2 = true;
                    charSequence = charSequence2;
                    spannableStringBuilder = charSequence4;
                } else {
                    i -= i3;
                    z2 = z;
                    spannableStringBuilder = 0;
                }
            }
            CharSequence charSequence5 = charSequence;
            charSequence5 = charSequence;
            if (!z2 && publicUsername != null) {
                int size3 = this.searchAdapterHelper.getGlobalSearch().size();
                charSequence5 = charSequence;
                if (size3 != 0) {
                    charSequence5 = charSequence;
                    if (size3 + 1 > i) {
                        String lastFoundUsername = this.searchAdapterHelper.getLastFoundUsername();
                        if (lastFoundUsername.startsWith("@")) {
                            lastFoundUsername = lastFoundUsername.substring(1);
                        }
                        try {
                            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                            spannableStringBuilder2.append((CharSequence) "@");
                            spannableStringBuilder2.append((CharSequence) publicUsername);
                            int iIndexOfIgnoreCase = AndroidUtilities.indexOfIgnoreCase(publicUsername, lastFoundUsername);
                            charSequence5 = spannableStringBuilder2;
                            if (iIndexOfIgnoreCase != -1) {
                                int length = lastFoundUsername.length();
                                if (iIndexOfIgnoreCase == 0) {
                                    length++;
                                } else {
                                    iIndexOfIgnoreCase++;
                                }
                                spannableStringBuilder2.setSpan(new ForegroundColorSpan(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4)), iIndexOfIgnoreCase, length + iIndexOfIgnoreCase, 33);
                                charSequence5 = spannableStringBuilder2;
                            }
                        } catch (Exception e) {
                            FileLog.m992e(e);
                            charSequence5 = publicUsername;
                        }
                    }
                }
            }
            if (lastFoundChannel != null && publicUsername != null) {
                spannableStringBuilder = new SpannableStringBuilder(publicUsername);
                int iIndexOfIgnoreCase2 = AndroidUtilities.indexOfIgnoreCase(publicUsername, lastFoundChannel);
                if (iIndexOfIgnoreCase2 != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4)), iIndexOfIgnoreCase2, lastFoundChannel.length() + iIndexOfIgnoreCase2, 33);
                }
            }
            ?? r11 = (ManageChatUserCell) viewHolder.itemView;
            r11.setTag(Integer.valueOf(i));
            r11.setData(obj, spannableStringBuilder, charSequence5, false);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof ManageChatUserCell) {
                ((ManageChatUserCell) view).recycle();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return (i == this.globalStartRow || i == this.groupStartRow || i == this.contactsStartRow) ? 1 : 0;
        }
    }

    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 16) {
                return true;
            }
            if (itemViewType == 7 || itemViewType == 14 || itemViewType == 13) {
                return ChatObject.canBlockUsers(ChatUsersActivity.this.currentChat);
            }
            if (itemViewType == 0) {
                Object currentObject = ((ManageChatUserCell) viewHolder.itemView).getCurrentObject();
                return (ChatUsersActivity.this.type != 1 && (currentObject instanceof TLRPC.User) && ((TLRPC.User) currentObject).self) ? false : true;
            }
            int adapterPosition = viewHolder.getAdapterPosition();
            if (itemViewType == 0 || itemViewType == 2 || itemViewType == 6) {
                return true;
            }
            if (itemViewType == 12) {
                int i = ChatUsersActivity.this.antiSpamRow;
                ChatUsersActivity chatUsersActivity = ChatUsersActivity.this;
                if (adapterPosition == i) {
                    return ChatObject.canUserDoAdminAction(chatUsersActivity.currentChat, 13);
                }
                int i2 = chatUsersActivity.hideMembersRow;
                ChatUsersActivity chatUsersActivity2 = ChatUsersActivity.this;
                if (adapterPosition == i2) {
                    return ChatObject.canUserDoAdminAction(chatUsersActivity2.currentChat, 2);
                }
                if (adapterPosition == chatUsersActivity2.tagsRow) {
                    return true;
                }
            }
            return itemViewType == 13;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ChatUsersActivity.this.rowCount;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onCreateViewHolder$0(ManageChatUserCell manageChatUserCell, boolean z) {
            return ChatUsersActivity.this.createMenuForParticipant(ChatUsersActivity.this.listViewAdapter.getItem(((Integer) manageChatUserCell.getTag()).intValue()), !z, manageChatUserCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View textInfoPrivacyCell;
            int i2 = 6;
            switch (i) {
                case 0:
                    Context context = this.mContext;
                    int i3 = (ChatUsersActivity.this.type == 0 || ChatUsersActivity.this.type == 3) ? 7 : 6;
                    if (ChatUsersActivity.this.type != 0 && ChatUsersActivity.this.type != 3) {
                        i2 = 2;
                    }
                    ManageChatUserCell manageChatUserCell = new ManageChatUserCell(context, i3, i2, ChatUsersActivity.this.selectType == 0);
                    manageChatUserCell.setDelegate(new ManageChatUserCell.ManageChatUserCellDelegate() { // from class: org.telegram.ui.ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda2
                        @Override // org.telegram.ui.Cells.ManageChatUserCell.ManageChatUserCellDelegate
                        public final boolean onOptionsButtonCheck(ManageChatUserCell manageChatUserCell2, boolean z) {
                            return this.f$0.lambda$onCreateViewHolder$0(manageChatUserCell2, z);
                        }
                    });
                    textInfoPrivacyCell = manageChatUserCell;
                    break;
                case 1:
                    textInfoPrivacyCell = new TextInfoPrivacyCell(this.mContext);
                    break;
                case 2:
                    textInfoPrivacyCell = new ManageChatTextCell(this.mContext);
                    break;
                case 3:
                    textInfoPrivacyCell = new ShadowSectionCell(this.mContext);
                    break;
                case 4:
                    TextInfoPrivacyCell textInfoPrivacyCell2 = new TextInfoPrivacyCell(this.mContext);
                    if (ChatUsersActivity.this.isChannel) {
                        textInfoPrivacyCell2.setText(LocaleController.getString(C2665R.string.NoBlockedChannel2));
                        textInfoPrivacyCell = textInfoPrivacyCell2;
                    } else if (ChatUsersActivity.this.isCommunity) {
                        textInfoPrivacyCell2.setText(LocaleController.getString(C2665R.string.NoBlockedCommunity2));
                        textInfoPrivacyCell = textInfoPrivacyCell2;
                    } else {
                        textInfoPrivacyCell2.setText(LocaleController.getString(C2665R.string.NoBlockedGroup2));
                        textInfoPrivacyCell = textInfoPrivacyCell2;
                    }
                    break;
                case 5:
                    HeaderCell headerCell = new HeaderCell(this.mContext, Theme.key_windowBackgroundWhiteBlueHeader, 21, 11, false);
                    headerCell.setHeight(43);
                    textInfoPrivacyCell = headerCell;
                    break;
                case 6:
                    textInfoPrivacyCell = new TextSettingsCell(this.mContext);
                    break;
                case 7:
                case 14:
                    textInfoPrivacyCell = new TextCheckCell2(this.mContext);
                    break;
                case 8:
                    GraySectionCell graySectionCell = new GraySectionCell(this.mContext, 26, ((BaseFragment) ChatUsersActivity.this).resourceProvider);
                    graySectionCell.setBackground(null);
                    textInfoPrivacyCell = graySectionCell;
                    break;
                case 9:
                default:
                    SlideChooseView slideChooseView = new SlideChooseView(this.mContext);
                    slideChooseView.setAllowSlide(ChatObject.hasAdminRights(ChatUsersActivity.this.currentChat));
                    slideChooseView.setOptions(ChatUsersActivity.this.selectedSlowmode, LocaleController.getString("SlowmodeOff", C2665R.string.SlowmodeOff), LocaleController.formatString(C2665R.string.SlowmodeSeconds, 5), LocaleController.formatString(C2665R.string.SlowmodeSeconds, 10), LocaleController.formatString(C2665R.string.SlowmodeSeconds, 30), LocaleController.formatString(C2665R.string.SlowmodeMinutes, 1), LocaleController.formatString(C2665R.string.SlowmodeMinutes, 5), LocaleController.formatString(C2665R.string.SlowmodeMinutes, 15), LocaleController.formatString(C2665R.string.SlowmodeHours, 1));
                    slideChooseView.setCallback(new SlideChooseView.Callback() { // from class: org.telegram.ui.ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda3
                        @Override // org.telegram.ui.Components.SlideChooseView.Callback
                        public final void onOptionSelected(int i4) {
                            this.f$0.lambda$onCreateViewHolder$1(i4);
                        }
                    });
                    textInfoPrivacyCell = slideChooseView;
                    break;
                case 10:
                    textInfoPrivacyCell = new LoadingCell(this.mContext, AndroidUtilities.dp(40.0f), AndroidUtilities.dp(120.0f));
                    break;
                case 11:
                    FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this.mContext);
                    flickerLoadingView.setIsSingleCell(true);
                    flickerLoadingView.setViewType(6);
                    flickerLoadingView.showDate(false);
                    flickerLoadingView.setUseHeaderOffset(false);
                    flickerLoadingView.setPaddingLeft(AndroidUtilities.dp(5.0f));
                    RecyclerView.LayoutParams layoutParams = new RecyclerView.LayoutParams(-1, -1);
                    int iDp = AndroidUtilities.dp(12.0f);
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = iDp;
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = iDp;
                    ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = AndroidUtilities.dp(30.0f);
                    flickerLoadingView.setLayoutParams(layoutParams);
                    textInfoPrivacyCell = flickerLoadingView;
                    break;
                case 12:
                    TextCell textCell = new TextCell(this.mContext, 23, false, true, ChatUsersActivity.this.getResourceProvider());
                    textCell.heightDp = 50;
                    textInfoPrivacyCell = textCell;
                    break;
                case 13:
                    CheckBoxCell checkBoxCell = new CheckBoxCell(this.mContext, 4, 21, ChatUsersActivity.this.getResourceProvider());
                    checkBoxCell.getCheckBoxRound().setDrawBackgroundAsArc(14);
                    checkBoxCell.getCheckBoxRound().setColor(Theme.key_switch2TrackChecked, Theme.key_radioBackground, Theme.key_checkboxCheck);
                    checkBoxCell.setEnabled(true);
                    textInfoPrivacyCell = checkBoxCell;
                    break;
                case 15:
                    SlideChooseView slideChooseView2 = new SlideChooseView(this.mContext);
                    slideChooseView2.setOptions(ChatUsersActivity.this.notRestrictBoosters > 0 ? ChatUsersActivity.this.notRestrictBoosters - 1 : 0, new Drawable[]{ContextCompat.getDrawable(ChatUsersActivity.this.getContext(), C2665R.drawable.mini_boost_profile_badge), ContextCompat.getDrawable(ChatUsersActivity.this.getContext(), C2665R.drawable.mini_boost_profile_badge2), ContextCompat.getDrawable(ChatUsersActivity.this.getContext(), C2665R.drawable.mini_boost_profile_badge2), ContextCompat.getDrawable(ChatUsersActivity.this.getContext(), C2665R.drawable.mini_boost_profile_badge2), ContextCompat.getDrawable(ChatUsersActivity.this.getContext(), C2665R.drawable.mini_boost_profile_badge2)}, "1", "2", "3", "4", "5");
                    slideChooseView2.setCallback(new SlideChooseView.Callback() { // from class: org.telegram.ui.ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda4
                        @Override // org.telegram.ui.Components.SlideChooseView.Callback
                        public final void onOptionSelected(int i4) {
                            this.f$0.lambda$onCreateViewHolder$2(i4);
                        }
                    });
                    textInfoPrivacyCell = slideChooseView2;
                    break;
                case 16:
                    textInfoPrivacyCell = new TextCheckCell(this.mContext, ChatUsersActivity.this.getResourceProvider());
                    break;
                case 17:
                    textInfoPrivacyCell = new SlideIntChooseView(this.mContext, ChatUsersActivity.this.getResourceProvider());
                    break;
            }
            return new RecyclerListView.Holder(textInfoPrivacyCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$1(int i) {
            if (ChatUsersActivity.this.info == null) {
                return;
            }
            boolean z = (ChatUsersActivity.this.selectedSlowmode > 0 && i == 0) || (ChatUsersActivity.this.selectedSlowmode == 0 && i > 0);
            ChatUsersActivity.this.selectedSlowmode = i;
            if (z) {
                DiffCallback diffCallbackSaveState = ChatUsersActivity.this.saveState();
                ChatUsersActivity.this.updateRows();
                ChatUsersActivity.this.updateListAnimated(diffCallbackSaveState);
            }
            ChatUsersActivity.this.listViewAdapter.notifyItemChanged(ChatUsersActivity.this.slowmodeInfoRow);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$2(int i) {
            ChatUsersActivity.this.notRestrictBoosters = i + 1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:473:0x0aac A[PHI: r4
  0x0aac: PHI (r4v32 int) = (r4v10 int), (r4v36 int) binds: [B:481:0x0ad8, B:472:0x0aaa] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int i2;
            Object[] objArr;
            Object[] objArr2;
            boolean z;
            long j;
            long peerId;
            int i3;
            boolean z2;
            boolean z3;
            long j2;
            long j3;
            TLRPC.TL_chatBannedRights tL_chatBannedRights;
            boolean z4;
            boolean z5;
            int i4;
            Object chat;
            CharSequence string;
            TLRPC.User user;
            TLRPC.User user2;
            z = true;
            z = true;
            boolean z6 = true;
            switch (viewHolder.getItemViewType()) {
                case 0:
                    ManageChatUserCell manageChatUserCell = (ManageChatUserCell) viewHolder.itemView;
                    manageChatUserCell.setTag(Integer.valueOf(i));
                    TLObject item = getItem(i);
                    if (i >= ChatUsersActivity.this.participantsStartRow && i < ChatUsersActivity.this.participantsEndRow) {
                        i2 = ChatUsersActivity.this.participantsEndRow;
                        if (!ChatObject.isChannel(ChatUsersActivity.this.currentChat) || ChatUsersActivity.this.currentChat.megagroup) {
                            objArr = false;
                        }
                    } else {
                        if (i >= ChatUsersActivity.this.contactsStartRow && i < ChatUsersActivity.this.contactsEndRow) {
                            i2 = ChatUsersActivity.this.contactsEndRow;
                            if (ChatObject.isChannel(ChatUsersActivity.this.currentChat) && !ChatUsersActivity.this.currentChat.megagroup) {
                                objArr = true;
                            }
                        } else {
                            i2 = ChatUsersActivity.this.botEndRow;
                        }
                        objArr = false;
                    }
                    if (item instanceof TLRPC.User) {
                        peerId = ((TLRPC.User) item).id;
                        objArr2 = objArr;
                        z3 = false;
                        i3 = 0;
                        z = true;
                        j2 = 0;
                        j3 = 0;
                        j = 0;
                        tL_chatBannedRights = null;
                        z2 = false;
                        z4 = false;
                    } else if (item instanceof TLRPC.ChannelParticipant) {
                        TLRPC.ChannelParticipant channelParticipant = (TLRPC.ChannelParticipant) item;
                        peerId = MessageObject.getPeerId(channelParticipant.peer);
                        j = 0;
                        j3 = channelParticipant.kicked_by;
                        objArr2 = objArr;
                        j2 = channelParticipant.promoted_by;
                        tL_chatBannedRights = channelParticipant.banned_rights;
                        i3 = channelParticipant.date;
                        z = true;
                        z4 = channelParticipant instanceof TLRPC.TL_channelParticipantBanned;
                        z2 = channelParticipant instanceof TLRPC.TL_channelParticipantCreator;
                        z3 = channelParticipant instanceof TLRPC.TL_channelParticipantAdmin;
                    } else {
                        objArr2 = objArr;
                        z = true;
                        j = 0;
                        if (item instanceof TLRPC.ChatParticipant) {
                            TLRPC.ChatParticipant chatParticipant = (TLRPC.ChatParticipant) item;
                            peerId = chatParticipant.user_id;
                            i3 = chatParticipant.date;
                            z2 = chatParticipant instanceof TLRPC.TL_chatParticipantCreator;
                            z3 = chatParticipant instanceof TLRPC.TL_chatParticipantAdmin;
                            j2 = 0;
                            j3 = 0;
                            tL_chatBannedRights = null;
                            z4 = false;
                        }
                    }
                    ChatUsersActivity chatUsersActivity = ChatUsersActivity.this;
                    if (peerId > j) {
                        z5 = z3;
                        chat = chatUsersActivity.getMessagesController().getUser(Long.valueOf(peerId));
                        i4 = i2;
                    } else {
                        z5 = z3;
                        i4 = i2;
                        chat = chatUsersActivity.getMessagesController().getChat(Long.valueOf(-peerId));
                    }
                    if (chat != null) {
                        int i5 = ChatUsersActivity.this.type;
                        ChatUsersActivity chatUsersActivity2 = ChatUsersActivity.this;
                        long j4 = j2;
                        if (i5 == 3) {
                            manageChatUserCell.setData(chat, null, chatUsersActivity2.formatUserPermissions(tL_chatBannedRights), i != i4 + (-1) ? z : false);
                        } else if (chatUsersActivity2.type == 0) {
                            manageChatUserCell.setData(chat, null, (!z4 || (user2 = ChatUsersActivity.this.getMessagesController().getUser(Long.valueOf(j3))) == null) ? null : LocaleController.formatString(C2665R.string.UserRemovedBy, UserObject.getUserName(user2)), i != i4 + (-1) ? z : false);
                        } else if (ChatUsersActivity.this.type == z) {
                            if (z2) {
                                string = LocaleController.getString(C2665R.string.ChannelCreator);
                            } else if (!z5 || (user = ChatUsersActivity.this.getMessagesController().getUser(Long.valueOf(j4))) == null) {
                                string = null;
                            } else if (user.id == peerId) {
                                string = LocaleController.getString(C2665R.string.ChannelAdministrator);
                            } else {
                                string = LocaleController.formatString(C2665R.string.EditAdminPromotedBy, UserObject.getUserName(user));
                            }
                            manageChatUserCell.setData(chat, null, string, i != i4 + (-1));
                        } else if (ChatUsersActivity.this.type == 2) {
                            manageChatUserCell.setData(chat, null, (!objArr2 == true || i3 == 0) ? null : LocaleController.formatJoined(i3), i != i4 + (-1));
                        }
                    }
                    break;
                case 1:
                    TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    if (i == ChatUsersActivity.this.antiSpamInfoRow) {
                        textInfoPrivacyCell.setText(LocaleController.getString("ChannelAntiSpamInfo", C2665R.string.ChannelAntiSpamInfo));
                    } else {
                        int i6 = ChatUsersActivity.this.participantsInfoRow;
                        ChatUsersActivity chatUsersActivity3 = ChatUsersActivity.this;
                        if (i == i6) {
                            if (chatUsersActivity3.type == 0 || ChatUsersActivity.this.type == 3) {
                                if (ChatUsersActivity.this.isChannel) {
                                    textInfoPrivacyCell.setText(LocaleController.getString(C2665R.string.NoBlockedChannel2));
                                } else if (ChatUsersActivity.this.isCommunity) {
                                    textInfoPrivacyCell.setText(LocaleController.getString(C2665R.string.NoBlockedCommunity2));
                                } else {
                                    textInfoPrivacyCell.setText(LocaleController.getString(C2665R.string.NoBlockedGroup2));
                                }
                            } else {
                                int i7 = ChatUsersActivity.this.type;
                                ChatUsersActivity chatUsersActivity4 = ChatUsersActivity.this;
                                if (i7 == 1) {
                                    if (chatUsersActivity4.addNewRow != -1) {
                                        if (ChatUsersActivity.this.isChannel) {
                                            textInfoPrivacyCell.setText(LocaleController.getString("ChannelAdminsInfo", C2665R.string.ChannelAdminsInfo));
                                        } else {
                                            textInfoPrivacyCell.setText(LocaleController.getString("MegaAdminsInfo", C2665R.string.MegaAdminsInfo));
                                        }
                                    } else {
                                        textInfoPrivacyCell.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                                    }
                                } else if (chatUsersActivity4.type == 2) {
                                    if (!ChatUsersActivity.this.isChannel || ChatUsersActivity.this.selectType != 0) {
                                        textInfoPrivacyCell.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                                    } else {
                                        textInfoPrivacyCell.setText(LocaleController.getString("ChannelMembersInfo", C2665R.string.ChannelMembersInfo));
                                    }
                                }
                            }
                        } else {
                            int i8 = chatUsersActivity3.slowmodeInfoRow;
                            ChatUsersActivity chatUsersActivity5 = ChatUsersActivity.this;
                            if (i == i8) {
                                int secondsForIndex = chatUsersActivity5.getSecondsForIndex(chatUsersActivity5.selectedSlowmode);
                                if (ChatUsersActivity.this.info == null || secondsForIndex == 0) {
                                    textInfoPrivacyCell.setText(LocaleController.getString(C2665R.string.SlowmodeInfoOff));
                                } else {
                                    textInfoPrivacyCell.setText(LocaleController.formatString(C2665R.string.SlowmodeInfoSelected, ChatUsersActivity.this.formatSeconds(secondsForIndex)));
                                }
                            } else if (i == chatUsersActivity5.payInfoRow) {
                                textInfoPrivacyCell.setText(LocaleController.getString(C2665R.string.GroupMessagesChargePriceInfo));
                            } else {
                                int i9 = ChatUsersActivity.this.priceInfoRow;
                                ChatUsersActivity chatUsersActivity6 = ChatUsersActivity.this;
                                if (i == i9) {
                                    textInfoPrivacyCell.setText(LocaleController.formatString(C2665R.string.GroupMessagesPriceInfo, AffiliateProgramFragment.percents(ChatUsersActivity.this.getMessagesController().starsPaidMessageCommissionPermille), String.valueOf(((double) ((int) ((((double) (ChatUsersActivity.this.starsPrice * (chatUsersActivity6.getMessagesController().starsPaidMessageCommissionPermille / 1000.0f))) / 1000.0d) * ((double) ChatUsersActivity.this.getMessagesController().starsUsdWithdrawRate1000)))) / 100.0d)));
                                } else if (i == chatUsersActivity6.hideMembersInfoRow) {
                                    textInfoPrivacyCell.setText(LocaleController.getString(C2665R.string.ChannelHideMembersInfo));
                                } else if (i == ChatUsersActivity.this.tagsInfoRow) {
                                    textInfoPrivacyCell.setText(LocaleController.getString(C2665R.string.ChannelMemberTagsInfo));
                                } else if (i == ChatUsersActivity.this.gigaInfoRow) {
                                    textInfoPrivacyCell.setText(LocaleController.getString(C2665R.string.BroadcastGroupConvertInfo));
                                } else {
                                    int i10 = ChatUsersActivity.this.dontRestrictBoostersInfoRow;
                                    ChatUsersActivity chatUsersActivity7 = ChatUsersActivity.this;
                                    if (i == i10) {
                                        if (chatUsersActivity7.isEnabledNotRestrictBoosters) {
                                            textInfoPrivacyCell.setText(LocaleController.getString(C2665R.string.GroupNotRestrictBoostersInfo2));
                                        } else {
                                            textInfoPrivacyCell.setText(LocaleController.getString(C2665R.string.GroupNotRestrictBoostersInfo));
                                        }
                                    } else if (i == chatUsersActivity7.signMessagesInfoRow) {
                                        textInfoPrivacyCell.setText(LocaleController.getString(ChatUsersActivity.this.signatures ? C2665R.string.ChannelSignProfilesInfo : C2665R.string.ChannelSignInfo));
                                    }
                                }
                            }
                        }
                    }
                    break;
                case 2:
                    ManageChatTextCell manageChatTextCell = (ManageChatTextCell) viewHolder.itemView;
                    manageChatTextCell.setColors(Theme.key_windowBackgroundWhiteGrayIcon, Theme.key_windowBackgroundWhiteBlackText);
                    int i11 = ChatUsersActivity.this.addNewRow;
                    ChatUsersActivity chatUsersActivity8 = ChatUsersActivity.this;
                    if (i == i11) {
                        if (chatUsersActivity8.type == 3) {
                            manageChatTextCell.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
                            manageChatTextCell.setText(LocaleController.getString("ChannelAddException", C2665R.string.ChannelAddException), null, C2665R.drawable.msg_contact_add, ChatUsersActivity.this.participantsStartRow != -1);
                        } else if (ChatUsersActivity.this.type == 0) {
                            manageChatTextCell.setText(LocaleController.getString("ChannelBlockUser", C2665R.string.ChannelBlockUser), null, C2665R.drawable.msg_user_remove, false);
                        } else if (ChatUsersActivity.this.type == 1) {
                            manageChatTextCell.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
                            manageChatTextCell.setText(LocaleController.getString("ChannelAddAdmin", C2665R.string.ChannelAddAdmin), null, C2665R.drawable.msg_admin_add, !ChatUsersActivity.this.loadingUsers || ChatUsersActivity.this.firstLoaded);
                        } else if (ChatUsersActivity.this.type == 2) {
                            manageChatTextCell.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
                            if (ChatUsersActivity.this.addNew2Row != -1 || ((!ChatUsersActivity.this.loadingUsers || ChatUsersActivity.this.firstLoaded) && ChatUsersActivity.this.membersHeaderRow == -1 && !ChatUsersActivity.this.participants.isEmpty())) {
                                z = true;
                            }
                            if (ChatUsersActivity.this.isChannel) {
                                manageChatTextCell.setText(LocaleController.getString(C2665R.string.AddSubscriber), null, C2665R.drawable.msg_contact_add, z);
                            } else {
                                manageChatTextCell.setText(LocaleController.getString(C2665R.string.AddMember), null, C2665R.drawable.msg_contact_add, z);
                            }
                        }
                    } else if (i == chatUsersActivity8.recentActionsRow) {
                        manageChatTextCell.setText(LocaleController.getString(C2665R.string.EventLog), null, C2665R.drawable.msg_log, ChatUsersActivity.this.antiSpamRow > ChatUsersActivity.this.recentActionsRow);
                    } else if (i == ChatUsersActivity.this.addNew2Row) {
                        manageChatTextCell.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
                        if ((!ChatUsersActivity.this.loadingUsers || ChatUsersActivity.this.firstLoaded) && ChatUsersActivity.this.membersHeaderRow == -1 && !ChatUsersActivity.this.participants.isEmpty()) {
                            z = true;
                        }
                        manageChatTextCell.setText(LocaleController.getString("ChannelInviteViaLink", C2665R.string.ChannelInviteViaLink), null, C2665R.drawable.msg_link2, z);
                    } else if (i == ChatUsersActivity.this.gigaConvertRow) {
                        manageChatTextCell.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
                        manageChatTextCell.setText(LocaleController.getString("BroadcastGroupConvert", C2665R.string.BroadcastGroupConvert), null, C2665R.drawable.msg_channel, false);
                    }
                    break;
                case 5:
                    HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                    int i12 = ChatUsersActivity.this.restricted1SectionRow;
                    ChatUsersActivity chatUsersActivity9 = ChatUsersActivity.this;
                    if (i == i12) {
                        if (chatUsersActivity9.type == 0) {
                            TLRPC.ChatFull chatFull = ChatUsersActivity.this.info;
                            ChatUsersActivity chatUsersActivity10 = ChatUsersActivity.this;
                            int size = chatFull != null ? chatUsersActivity10.info.kicked_count : chatUsersActivity10.participants.size();
                            if (size != 0) {
                                headerCell.setText(LocaleController.formatPluralString("RemovedUser", size, new Object[0]));
                            } else {
                                headerCell.setText(LocaleController.getString(C2665R.string.ChannelBlockedUsers));
                            }
                        } else {
                            headerCell.setText(LocaleController.getString(C2665R.string.ChannelRestrictedUsers));
                        }
                    } else {
                        int i13 = chatUsersActivity9.permissionsSectionRow;
                        ChatUsersActivity chatUsersActivity11 = ChatUsersActivity.this;
                        if (i == i13) {
                            headerCell.setText(LocaleController.getString(chatUsersActivity11.isCommunity ? C2665R.string.CommunityPermissionsHeader : C2665R.string.ChannelPermissionsHeader));
                        } else if (i == chatUsersActivity11.slowmodeRow) {
                            headerCell.setText(LocaleController.getString(C2665R.string.Slowmode));
                        } else if (i == ChatUsersActivity.this.gigaHeaderRow) {
                            headerCell.setText(LocaleController.getString(C2665R.string.BroadcastGroup));
                        } else if (i == ChatUsersActivity.this.priceHeaderRow) {
                            headerCell.setText(LocaleController.getString(C2665R.string.GroupMessagesPriceHeader));
                        }
                    }
                    break;
                case 6:
                    ((TextSettingsCell) viewHolder.itemView).setTextAndValue(LocaleController.getString("ChannelBlacklist", C2665R.string.ChannelBlacklist), String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(ChatUsersActivity.this.info != null ? ChatUsersActivity.this.info.kicked_count : 0)), false);
                    break;
                case 7:
                case 14:
                    final TextCheckCell2 textCheckCell2 = (TextCheckCell2) viewHolder.itemView;
                    textCheckCell2.getCheckBox().setDrawIconType(1);
                    Switch checkBox = textCheckCell2.getCheckBox();
                    int i14 = Theme.key_fill_RedNormal;
                    int i15 = Theme.key_switch2TrackChecked;
                    int i16 = Theme.key_windowBackgroundWhite;
                    checkBox.setColors(i14, i15, i16, i16);
                    boolean z7 = textCheckCell2.getTag() != null && ((Integer) textCheckCell2.getTag()).intValue() == i;
                    textCheckCell2.setTag(Integer.valueOf(i));
                    int i17 = ChatUsersActivity.this.changeInfoRow;
                    ChatUsersActivity chatUsersActivity12 = ChatUsersActivity.this;
                    if (i == i17) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(chatUsersActivity12.isCommunity ? C2665R.string.CommunityAdminRightEditCommunityName : C2665R.string.UserRestrictionsChangeInfo), (ChatUsersActivity.this.defaultBannedRights.change_info || ChatObject.isPublic(ChatUsersActivity.this.currentChat)) ? false : true, ChatUsersActivity.this.manageTopicsRow != -1, z7);
                    } else if (i == chatUsersActivity12.manageLinkedPeersRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2665R.string.CommunityAdminRightEditGroupList), !ChatUsersActivity.this.defaultBannedRights.manage_linked_peers, false, z7);
                    } else if (i == ChatUsersActivity.this.addUsersRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString("UserRestrictionsInviteUsers", C2665R.string.UserRestrictionsInviteUsers), !ChatUsersActivity.this.defaultBannedRights.invite_users, true, z7);
                    } else if (i == ChatUsersActivity.this.pinMessagesRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2665R.string.UserRestrictionsPinMessages), (ChatUsersActivity.this.defaultBannedRights.pin_messages || ChatObject.isPublic(ChatUsersActivity.this.currentChat)) ? false : true, true, z7);
                    } else if (i == ChatUsersActivity.this.editTagRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2665R.string.UserRestrictionsEditTags), !ChatUsersActivity.this.defaultBannedRights.edit_rank, true, z7);
                    } else if (i == ChatUsersActivity.this.sendMessagesRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString("UserRestrictionsSendText", C2665R.string.UserRestrictionsSendText), !ChatUsersActivity.this.defaultBannedRights.send_plain, true, z7);
                    } else if (i == ChatUsersActivity.this.dontRestrictBoostersRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2665R.string.GroupNotRestrictBoosters), ChatUsersActivity.this.isEnabledNotRestrictBoosters, false, z7);
                        textCheckCell2.getCheckBox().setDrawIconType(0);
                        textCheckCell2.getCheckBox().setColors(Theme.key_switchTrack, Theme.key_switchTrackChecked, i16, i16);
                    } else {
                        int i18 = ChatUsersActivity.this.sendMediaRow;
                        ChatUsersActivity chatUsersActivity13 = ChatUsersActivity.this;
                        if (i == i18) {
                            int sendMediaSelectedCount = chatUsersActivity13.getSendMediaSelectedCount();
                            textCheckCell2.setTextAndCheck(LocaleController.getString("UserRestrictionsSendMedia", C2665R.string.UserRestrictionsSendMedia), sendMediaSelectedCount > 0, true, z7);
                            textCheckCell2.setCollapseArrow(String.format(Locale.US, "%d/10", Integer.valueOf(sendMediaSelectedCount)), !ChatUsersActivity.this.sendMediaExpanded, new Runnable() { // from class: org.telegram.ui.ChatUsersActivity.ListAdapter.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (ChatObject.canBlockUsers(ChatUsersActivity.this.currentChat)) {
                                        boolean z8 = !textCheckCell2.isChecked();
                                        textCheckCell2.setChecked(z8);
                                        ChatUsersActivity.this.setSendMediaEnabled(z8);
                                    }
                                }
                            });
                        } else if (i == chatUsersActivity13.sendStickersRow) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("UserRestrictionsSendStickers", C2665R.string.UserRestrictionsSendStickers), !ChatUsersActivity.this.defaultBannedRights.send_stickers, true, z7);
                        } else if (i == ChatUsersActivity.this.embedLinksRow) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("UserRestrictionsEmbedLinks", C2665R.string.UserRestrictionsEmbedLinks), !ChatUsersActivity.this.defaultBannedRights.embed_links, true, z7);
                        } else if (i == ChatUsersActivity.this.sendPollsRow) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("UserRestrictionsSendPollsShort", C2665R.string.UserRestrictionsSendPollsShort), !ChatUsersActivity.this.defaultBannedRights.send_polls, true);
                        } else if (i == ChatUsersActivity.this.manageTopicsRow) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("CreateTopicsPermission", C2665R.string.CreateTopicsPermission), !ChatUsersActivity.this.defaultBannedRights.manage_topics, false, z7);
                        }
                    }
                    if ((i == ChatUsersActivity.this.pinMessagesRow || i == ChatUsersActivity.this.changeInfoRow) && ChatObject.isDiscussionGroup(((BaseFragment) ChatUsersActivity.this).currentAccount, ChatUsersActivity.this.chatId)) {
                        textCheckCell2.setIcon(C2665R.drawable.permission_locked);
                    } else if (ChatObject.canBlockUsers(ChatUsersActivity.this.currentChat)) {
                        if ((i == ChatUsersActivity.this.addUsersRow && !ChatObject.canUserDoAdminAction(ChatUsersActivity.this.currentChat, 3)) || ((i == ChatUsersActivity.this.pinMessagesRow && !ChatObject.canUserDoAdminAction(ChatUsersActivity.this.currentChat, 0)) || ((i == ChatUsersActivity.this.changeInfoRow && !ChatObject.canUserDoAdminAction(ChatUsersActivity.this.currentChat, 1)) || ((i == ChatUsersActivity.this.manageTopicsRow && !ChatObject.canManageTopics(ChatUsersActivity.this.currentChat)) || (ChatObject.isPublic(ChatUsersActivity.this.currentChat) && (i == ChatUsersActivity.this.pinMessagesRow || i == ChatUsersActivity.this.changeInfoRow)))))) {
                            textCheckCell2.setIcon(C2665R.drawable.permission_locked);
                        } else {
                            textCheckCell2.setIcon(0);
                        }
                    } else {
                        textCheckCell2.setIcon(0);
                    }
                    break;
                case 8:
                    GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                    int i19 = ChatUsersActivity.this.membersHeaderRow;
                    ChatUsersActivity chatUsersActivity14 = ChatUsersActivity.this;
                    if (i == i19) {
                        if (ChatObject.isChannel(chatUsersActivity14.currentChat) && !ChatUsersActivity.this.currentChat.megagroup) {
                            graySectionCell.setText(LocaleController.getString("ChannelOtherSubscribers", C2665R.string.ChannelOtherSubscribers));
                        } else {
                            graySectionCell.setText(LocaleController.getString("ChannelOtherMembers", C2665R.string.ChannelOtherMembers));
                        }
                    } else if (i == chatUsersActivity14.botHeaderRow) {
                        graySectionCell.setText(LocaleController.getString("ChannelBots", C2665R.string.ChannelBots));
                    } else {
                        int i20 = ChatUsersActivity.this.contactsHeaderRow;
                        ChatUsersActivity chatUsersActivity15 = ChatUsersActivity.this;
                        if (i == i20) {
                            if (ChatObject.isChannel(chatUsersActivity15.currentChat) && !ChatUsersActivity.this.currentChat.megagroup) {
                                graySectionCell.setText(LocaleController.getString("ChannelContacts", C2665R.string.ChannelContacts));
                            } else {
                                graySectionCell.setText(LocaleController.getString("GroupContacts", C2665R.string.GroupContacts));
                            }
                        } else if (i == chatUsersActivity15.loadingHeaderRow) {
                            graySectionCell.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                        }
                    }
                    break;
                case 11:
                    FlickerLoadingView flickerLoadingView = (FlickerLoadingView) viewHolder.itemView;
                    if (ChatUsersActivity.this.type == 0) {
                        flickerLoadingView.setItemsCount(ChatUsersActivity.this.info != null ? ChatUsersActivity.this.info.kicked_count : 1);
                    } else {
                        flickerLoadingView.setItemsCount(1);
                    }
                    break;
                case 12:
                    TextCell textCell = (TextCell) viewHolder.itemView;
                    if (i == ChatUsersActivity.this.antiSpamRow) {
                        textCell.getCheckBox().setIcon((ChatObject.canUserDoAdminAction(ChatUsersActivity.this.currentChat, 13) && (ChatUsersActivity.this.info == null || ChatUsersActivity.this.info.antispam || ChatUsersActivity.this.getParticipantsCount() >= ChatUsersActivity.this.getMessagesController().telegramAntispamGroupSizeMin)) ? 0 : C2665R.drawable.permission_locked);
                        textCell.setTextAndCheckAndIcon(LocaleController.getString("ChannelAntiSpam", C2665R.string.ChannelAntiSpam), ChatUsersActivity.this.info != null && ChatUsersActivity.this.info.antispam, C2665R.drawable.msg_policy, false);
                    } else if (i == ChatUsersActivity.this.hideMembersRow) {
                        textCell.getCheckBox().setIcon((ChatObject.canUserDoAdminAction(ChatUsersActivity.this.currentChat, 2) && (ChatUsersActivity.this.info == null || ChatUsersActivity.this.info.participants_hidden || ChatUsersActivity.this.getParticipantsCount() >= ChatUsersActivity.this.getMessagesController().hiddenMembersGroupSizeMin)) ? 0 : C2665R.drawable.permission_locked);
                        textCell.setTextAndCheck(LocaleController.getString(C2665R.string.ChannelHideMembers), ChatUsersActivity.this.info != null && ChatUsersActivity.this.info.participants_hidden, false);
                    } else if (i == ChatUsersActivity.this.tagsRow) {
                        textCell.getCheckBox().setIcon(0);
                        String string2 = LocaleController.getString(C2665R.string.ChannelMemberTags);
                        if (ChatUsersActivity.this.currentChat != null && ChatUsersActivity.this.currentChat.default_banned_rights != null && ChatUsersActivity.this.currentChat.default_banned_rights.edit_rank) {
                            z6 = false;
                        }
                        textCell.setTextAndCheck(string2, z6, false);
                    }
                    break;
                case 13:
                    CheckBoxCell checkBoxCell = (CheckBoxCell) viewHolder.itemView;
                    boolean z8 = checkBoxCell.getTag() != null && ((Integer) checkBoxCell.getTag()).intValue() == i;
                    checkBoxCell.setTag(Integer.valueOf(i));
                    if (i == ChatUsersActivity.this.sendMediaPhotosRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionPhotos", C2665R.string.SendMediaPermissionPhotos), _UrlKt.FRAGMENT_ENCODE_SET, !ChatUsersActivity.this.defaultBannedRights.send_photos, true, z8);
                    } else if (i == ChatUsersActivity.this.sendMediaVideosRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionVideos", C2665R.string.SendMediaPermissionVideos), _UrlKt.FRAGMENT_ENCODE_SET, !ChatUsersActivity.this.defaultBannedRights.send_videos, true, z8);
                    } else if (i == ChatUsersActivity.this.sendMediaStickerGifsRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionStickersGifs", C2665R.string.SendMediaPermissionStickersGifs), _UrlKt.FRAGMENT_ENCODE_SET, !ChatUsersActivity.this.defaultBannedRights.send_stickers, true, z8);
                    } else if (i == ChatUsersActivity.this.sendMediaMusicRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionMusic", C2665R.string.SendMediaPermissionMusic), _UrlKt.FRAGMENT_ENCODE_SET, !ChatUsersActivity.this.defaultBannedRights.send_audios, true, z8);
                    } else if (i == ChatUsersActivity.this.sendMediaFilesRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionFiles", C2665R.string.SendMediaPermissionFiles), _UrlKt.FRAGMENT_ENCODE_SET, !ChatUsersActivity.this.defaultBannedRights.send_docs, true, z8);
                    } else if (i == ChatUsersActivity.this.sendMediaVoiceMessagesRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionVoice", C2665R.string.SendMediaPermissionVoice), _UrlKt.FRAGMENT_ENCODE_SET, !ChatUsersActivity.this.defaultBannedRights.send_voices, true, z8);
                    } else if (i == ChatUsersActivity.this.sendMediaVideoMessagesRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionRound", C2665R.string.SendMediaPermissionRound), _UrlKt.FRAGMENT_ENCODE_SET, !ChatUsersActivity.this.defaultBannedRights.send_roundvideos, true, z8);
                    } else if (i == ChatUsersActivity.this.sendMediaEmbededLinksRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaEmbededLinks", C2665R.string.SendMediaEmbededLinks), _UrlKt.FRAGMENT_ENCODE_SET, (ChatUsersActivity.this.defaultBannedRights.embed_links || ChatUsersActivity.this.defaultBannedRights.send_plain) ? false : true, true, z8);
                    } else if (i == ChatUsersActivity.this.sendReactionsRow) {
                        checkBoxCell.setText(LocaleController.getString(C2665R.string.UserRestrictionsSendReactions), _UrlKt.FRAGMENT_ENCODE_SET, !ChatUsersActivity.this.defaultBannedRights.send_reactions, false, z8);
                    } else if (i == ChatUsersActivity.this.sendPollsRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPolls", C2665R.string.SendMediaPolls), _UrlKt.FRAGMENT_ENCODE_SET, !ChatUsersActivity.this.defaultBannedRights.send_polls, true, z8);
                    } else {
                        checkBoxCell.setPad(1);
                    }
                    break;
                case 16:
                    TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                    if (i == ChatUsersActivity.this.signMessagesRow) {
                        textCheckCell.setTextAndCheck(LocaleController.getString(C2665R.string.ChannelSignMessages), ChatUsersActivity.this.signatures, ChatUsersActivity.this.signatures);
                    } else if (i == ChatUsersActivity.this.signMessagesProfilesRow) {
                        textCheckCell.setTextAndCheck(LocaleController.getString(C2665R.string.ChannelSignMessagesWithProfile), ChatUsersActivity.this.profiles, false);
                    } else if (i == ChatUsersActivity.this.payRow) {
                        textCheckCell.setTextAndCheck(LocaleController.getString(C2665R.string.GroupMessagesChargePrice), ChatUsersActivity.this.enablePrice, false);
                    }
                    break;
                case 17:
                    SlideIntChooseView slideIntChooseView = (SlideIntChooseView) viewHolder.itemView;
                    if (i == ChatUsersActivity.this.priceRow) {
                        slideIntChooseView.set((int) Utilities.clamp(ChatUsersActivity.this.starsPrice, ChatUsersActivity.this.getMessagesController().starsPaidMessageAmountMax, 1L), SlideIntChooseView.Options.make(1, SlideIntChooseView.cut(new int[]{1, 10, 50, 100, 200, 250, MediaError.DetailedErrorCode.MANIFEST_UNKNOWN, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, 1000, 2500, 5000, 7500, 9000, 10000}, (int) ChatUsersActivity.this.getMessagesController().starsPaidMessageAmountMax), 20, (Utilities.Callback2Return<Integer, Integer, CharSequence>) new Utilities.Callback2Return() { // from class: org.telegram.ui.ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda0
                            @Override // org.telegram.messenger.Utilities.Callback2Return
                            public final Object run(Object obj, Object obj2) {
                                return ChatUsersActivity.ListAdapter.$r8$lambda$irSbMzWtKnWL3PuWL5_LR9R9gR0((Integer) obj, (Integer) obj2);
                            }
                        }), new Utilities.Callback() { // from class: org.telegram.ui.ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda1
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                this.f$0.lambda$onBindViewHolder$4((Integer) obj);
                            }
                        });
                    }
                    break;
            }
        }

        public static /* synthetic */ CharSequence $r8$lambda$irSbMzWtKnWL3PuWL5_LR9R9gR0(Integer num, Integer num2) {
            if (num.intValue() == 0) {
                return LocaleController.formatPluralStringComma("Stars", num2.intValue());
            }
            return _UrlKt.FRAGMENT_ENCODE_SET + num2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$4(Integer num) {
            ChatUsersActivity.this.starsPrice = num.intValue();
            AndroidUtilities.updateVisibleRow(ChatUsersActivity.this.listView, ChatUsersActivity.this.priceInfoRow);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof ManageChatUserCell) {
                ((ManageChatUserCell) view).recycle();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == ChatUsersActivity.this.addNewRow || i == ChatUsersActivity.this.addNew2Row || i == ChatUsersActivity.this.recentActionsRow || i == ChatUsersActivity.this.gigaConvertRow) {
                return 2;
            }
            if ((i >= ChatUsersActivity.this.participantsStartRow && i < ChatUsersActivity.this.participantsEndRow) || ((i >= ChatUsersActivity.this.botStartRow && i < ChatUsersActivity.this.botEndRow) || (i >= ChatUsersActivity.this.contactsStartRow && i < ChatUsersActivity.this.contactsEndRow))) {
                return 0;
            }
            if (i == ChatUsersActivity.this.addNewSectionRow || i == ChatUsersActivity.this.participantsDividerRow || i == ChatUsersActivity.this.participantsDivider2Row) {
                return 3;
            }
            if (i == ChatUsersActivity.this.restricted1SectionRow || i == ChatUsersActivity.this.permissionsSectionRow || i == ChatUsersActivity.this.slowmodeRow || i == ChatUsersActivity.this.gigaHeaderRow || i == ChatUsersActivity.this.priceHeaderRow) {
                return 5;
            }
            if (i == ChatUsersActivity.this.participantsInfoRow || i == ChatUsersActivity.this.slowmodeInfoRow || i == ChatUsersActivity.this.dontRestrictBoostersInfoRow || i == ChatUsersActivity.this.gigaInfoRow || i == ChatUsersActivity.this.antiSpamInfoRow || i == ChatUsersActivity.this.hideMembersInfoRow || i == ChatUsersActivity.this.tagsInfoRow || i == ChatUsersActivity.this.signMessagesInfoRow || i == ChatUsersActivity.this.payInfoRow || i == ChatUsersActivity.this.priceInfoRow) {
                return 1;
            }
            if (i == ChatUsersActivity.this.blockedEmptyRow) {
                return 4;
            }
            if (i == ChatUsersActivity.this.removedUsersRow) {
                return 6;
            }
            if (i == ChatUsersActivity.this.changeInfoRow || i == ChatUsersActivity.this.addUsersRow || i == ChatUsersActivity.this.manageLinkedPeersRow || i == ChatUsersActivity.this.pinMessagesRow || i == ChatUsersActivity.this.editTagRow || i == ChatUsersActivity.this.sendMessagesRow || i == ChatUsersActivity.this.sendStickersRow || i == ChatUsersActivity.this.embedLinksRow || i == ChatUsersActivity.this.manageTopicsRow || i == ChatUsersActivity.this.dontRestrictBoostersRow) {
                return 7;
            }
            if (i == ChatUsersActivity.this.membersHeaderRow || i == ChatUsersActivity.this.contactsHeaderRow || i == ChatUsersActivity.this.botHeaderRow || i == ChatUsersActivity.this.loadingHeaderRow) {
                return 8;
            }
            if (i == ChatUsersActivity.this.slowmodeSelectRow) {
                return 9;
            }
            if (i == ChatUsersActivity.this.loadingProgressRow) {
                return 10;
            }
            if (i == ChatUsersActivity.this.loadingUserCellRow) {
                return 11;
            }
            if (i == ChatUsersActivity.this.antiSpamRow || i == ChatUsersActivity.this.hideMembersRow || i == ChatUsersActivity.this.tagsRow) {
                return 12;
            }
            if (ChatUsersActivity.this.isExpandableSendMediaRow(i)) {
                return 13;
            }
            if (i == ChatUsersActivity.this.sendMediaRow) {
                return 14;
            }
            if (i == ChatUsersActivity.this.dontRestrictBoostersSliderRow) {
                return 15;
            }
            if (i == ChatUsersActivity.this.signMessagesRow || i == ChatUsersActivity.this.signMessagesProfilesRow || i == ChatUsersActivity.this.payRow) {
                return 16;
            }
            return i == ChatUsersActivity.this.priceRow ? 17 : 0;
        }

        public TLObject getItem(int i) {
            if (i >= ChatUsersActivity.this.participantsStartRow && i < ChatUsersActivity.this.participantsEndRow) {
                return (TLObject) ChatUsersActivity.this.participants.get(i - ChatUsersActivity.this.participantsStartRow);
            }
            if (i >= ChatUsersActivity.this.contactsStartRow && i < ChatUsersActivity.this.contactsEndRow) {
                return (TLObject) ChatUsersActivity.this.contacts.get(i - ChatUsersActivity.this.contactsStartRow);
            }
            if (i < ChatUsersActivity.this.botStartRow || i >= ChatUsersActivity.this.botEndRow) {
                return null;
            }
            return (TLObject) ChatUsersActivity.this.bots.get(i - ChatUsersActivity.this.botStartRow);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSendMediaEnabled(boolean z) {
        TLRPC.TL_chatBannedRights tL_chatBannedRights = this.defaultBannedRights;
        tL_chatBannedRights.send_media = !z;
        tL_chatBannedRights.send_gifs = !z;
        tL_chatBannedRights.send_inline = !z;
        tL_chatBannedRights.send_games = !z;
        tL_chatBannedRights.send_photos = !z;
        tL_chatBannedRights.send_videos = !z;
        tL_chatBannedRights.send_stickers = !z;
        tL_chatBannedRights.send_audios = !z;
        tL_chatBannedRights.send_docs = !z;
        tL_chatBannedRights.send_voices = !z;
        tL_chatBannedRights.send_roundvideos = !z;
        tL_chatBannedRights.embed_links = !z;
        tL_chatBannedRights.send_polls = !z;
        tL_chatBannedRights.send_reactions = !z;
        AndroidUtilities.updateVisibleRows(this.listView);
        DiffCallback diffCallbackSaveState = saveState();
        updateRows();
        updateListAnimated(diffCallbackSaveState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isExpandableSendMediaRow(int i) {
        return i == this.sendMediaPhotosRow || i == this.sendMediaVideosRow || i == this.sendMediaStickerGifsRow || i == this.sendMediaMusicRow || i == this.sendMediaFilesRow || i == this.sendMediaVoiceMessagesRow || i == this.sendReactionsRow || i == this.sendMediaVideoMessagesRow || i == this.sendMediaEmbededLinksRow || i == this.sendPollsRow;
    }

    public DiffCallback saveState() {
        DiffCallback diffCallback = new DiffCallback();
        diffCallback.oldRowCount = this.rowCount;
        diffCallback.oldBotStartRow = this.botStartRow;
        diffCallback.oldBotEndRow = this.botEndRow;
        diffCallback.oldBots.clear();
        diffCallback.oldBots.addAll(this.bots);
        diffCallback.oldContactsEndRow = this.contactsEndRow;
        diffCallback.oldContactsStartRow = this.contactsStartRow;
        diffCallback.oldContacts.clear();
        diffCallback.oldContacts.addAll(this.contacts);
        diffCallback.oldParticipantsStartRow = this.participantsStartRow;
        diffCallback.oldParticipantsEndRow = this.participantsEndRow;
        diffCallback.oldParticipants.clear();
        diffCallback.oldParticipants.addAll(this.participants);
        diffCallback.fillPositions(diffCallback.oldPositionToItem);
        return diffCallback;
    }

    public void updateListAnimated(DiffCallback diffCallback) {
        View childAt;
        if (this.listViewAdapter == null) {
            updateRows();
            return;
        }
        updateRows();
        diffCallback.fillPositions(diffCallback.newPositionToItem);
        DiffUtil.calculateDiff(diffCallback).dispatchUpdatesTo(this.listViewAdapter);
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView == null || this.layoutManager == null || recyclerListView.getChildCount() <= 0) {
            return;
        }
        int i = 0;
        int childAdapterPosition = -1;
        while (true) {
            if (i >= this.listView.getChildCount()) {
                childAt = null;
                break;
            }
            RecyclerListView recyclerListView2 = this.listView;
            childAdapterPosition = recyclerListView2.getChildAdapterPosition(recyclerListView2.getChildAt(i));
            if (childAdapterPosition != -1) {
                childAt = this.listView.getChildAt(i);
                break;
            }
            i++;
        }
        if (childAt != null) {
            this.layoutManager.scrollToPositionWithOffset(childAdapterPosition, childAt.getTop() - this.listView.getPaddingTop());
        }
    }

    public class DiffCallback extends DiffUtil.Callback {
        SparseIntArray newPositionToItem;
        int oldBotEndRow;
        int oldBotStartRow;
        private ArrayList<TLObject> oldBots;
        private ArrayList<TLObject> oldContacts;
        int oldContactsEndRow;
        int oldContactsStartRow;
        private ArrayList<TLObject> oldParticipants;
        int oldParticipantsEndRow;
        int oldParticipantsStartRow;
        SparseIntArray oldPositionToItem;
        int oldRowCount;

        private DiffCallback() {
            this.oldPositionToItem = new SparseIntArray();
            this.newPositionToItem = new SparseIntArray();
            this.oldParticipants = new ArrayList<>();
            this.oldBots = new ArrayList<>();
            this.oldContacts = new ArrayList<>();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getOldListSize() {
            return this.oldRowCount;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getNewListSize() {
            return ChatUsersActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areItemsTheSame(int i, int i2) {
            if (i >= this.oldBotStartRow && i < this.oldBotEndRow && i2 >= ChatUsersActivity.this.botStartRow && i2 < ChatUsersActivity.this.botEndRow) {
                return this.oldBots.get(i - this.oldBotStartRow).equals(ChatUsersActivity.this.bots.get(i2 - ChatUsersActivity.this.botStartRow));
            }
            if (i >= this.oldContactsStartRow && i < this.oldContactsEndRow && i2 >= ChatUsersActivity.this.contactsStartRow && i2 < ChatUsersActivity.this.contactsEndRow) {
                return this.oldContacts.get(i - this.oldContactsStartRow).equals(ChatUsersActivity.this.contacts.get(i2 - ChatUsersActivity.this.contactsStartRow));
            }
            if (i < this.oldParticipantsStartRow || i >= this.oldParticipantsEndRow || i2 < ChatUsersActivity.this.participantsStartRow || i2 >= ChatUsersActivity.this.participantsEndRow) {
                return this.oldPositionToItem.get(i) == this.newPositionToItem.get(i2);
            }
            return this.oldParticipants.get(i - this.oldParticipantsStartRow).equals(ChatUsersActivity.this.participants.get(i2 - ChatUsersActivity.this.participantsStartRow));
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areContentsTheSame(int i, int i2) {
            return areItemsTheSame(i, i2) && ChatUsersActivity.this.restricted1SectionRow != i2;
        }

        public void fillPositions(SparseIntArray sparseIntArray) {
            sparseIntArray.clear();
            put(1, ChatUsersActivity.this.recentActionsRow, sparseIntArray);
            put(2, ChatUsersActivity.this.addNewRow, sparseIntArray);
            put(3, ChatUsersActivity.this.addNew2Row, sparseIntArray);
            put(4, ChatUsersActivity.this.addNewSectionRow, sparseIntArray);
            put(5, ChatUsersActivity.this.restricted1SectionRow, sparseIntArray);
            put(6, ChatUsersActivity.this.participantsDividerRow, sparseIntArray);
            put(7, ChatUsersActivity.this.participantsDivider2Row, sparseIntArray);
            put(8, ChatUsersActivity.this.gigaHeaderRow, sparseIntArray);
            put(9, ChatUsersActivity.this.gigaConvertRow, sparseIntArray);
            put(10, ChatUsersActivity.this.gigaInfoRow, sparseIntArray);
            put(11, ChatUsersActivity.this.participantsInfoRow, sparseIntArray);
            put(12, ChatUsersActivity.this.blockedEmptyRow, sparseIntArray);
            put(13, ChatUsersActivity.this.permissionsSectionRow, sparseIntArray);
            put(14, ChatUsersActivity.this.sendMessagesRow, sparseIntArray);
            put(15, ChatUsersActivity.this.sendMediaRow, sparseIntArray);
            put(16, ChatUsersActivity.this.sendStickersRow, sparseIntArray);
            put(17, ChatUsersActivity.this.sendPollsRow, sparseIntArray);
            put(18, ChatUsersActivity.this.embedLinksRow, sparseIntArray);
            put(19, ChatUsersActivity.this.addUsersRow, sparseIntArray);
            put(20, ChatUsersActivity.this.manageLinkedPeersRow, sparseIntArray);
            put(21, ChatUsersActivity.this.pinMessagesRow, sparseIntArray);
            put(22, ChatUsersActivity.this.editTagRow, sparseIntArray);
            int i = 23;
            put(23, ChatUsersActivity.this.sendReactionsRow, sparseIntArray);
            if (ChatUsersActivity.this.isForum) {
                i = 24;
                put(24, ChatUsersActivity.this.manageTopicsRow, sparseIntArray);
            }
            put(i + 1, ChatUsersActivity.this.changeInfoRow, sparseIntArray);
            put(i + 2, ChatUsersActivity.this.removedUsersRow, sparseIntArray);
            put(i + 3, ChatUsersActivity.this.contactsHeaderRow, sparseIntArray);
            put(i + 4, ChatUsersActivity.this.botHeaderRow, sparseIntArray);
            put(i + 5, ChatUsersActivity.this.membersHeaderRow, sparseIntArray);
            put(i + 6, ChatUsersActivity.this.slowmodeRow, sparseIntArray);
            put(i + 7, ChatUsersActivity.this.slowmodeSelectRow, sparseIntArray);
            put(i + 8, ChatUsersActivity.this.slowmodeInfoRow, sparseIntArray);
            put(i + 9, ChatUsersActivity.this.dontRestrictBoostersRow, sparseIntArray);
            put(i + 10, ChatUsersActivity.this.dontRestrictBoostersSliderRow, sparseIntArray);
            put(i + 11, ChatUsersActivity.this.dontRestrictBoostersInfoRow, sparseIntArray);
            put(i + 12, ChatUsersActivity.this.loadingProgressRow, sparseIntArray);
            put(i + 13, ChatUsersActivity.this.loadingUserCellRow, sparseIntArray);
            put(i + 14, ChatUsersActivity.this.loadingHeaderRow, sparseIntArray);
            put(i + 15, ChatUsersActivity.this.signMessagesRow, sparseIntArray);
            put(i + 16, ChatUsersActivity.this.signMessagesProfilesRow, sparseIntArray);
            put(i + 17, ChatUsersActivity.this.signMessagesInfoRow, sparseIntArray);
            put(i + 18, ChatUsersActivity.this.payRow, sparseIntArray);
            put(i + 19, ChatUsersActivity.this.payInfoRow, sparseIntArray);
            put(i + 20, ChatUsersActivity.this.priceHeaderRow, sparseIntArray);
            put(i + 21, ChatUsersActivity.this.priceRow, sparseIntArray);
            put(i + 22, ChatUsersActivity.this.priceInfoRow, sparseIntArray);
        }

        private void put(int i, int i2, SparseIntArray sparseIntArray) {
            if (i2 >= 0) {
                sparseIntArray.put(i2, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSendMediaSelectedCount() {
        return getSendMediaSelectedCount(this.defaultBannedRights);
    }

    public static int getSendMediaSelectedCount(TLRPC.TL_chatBannedRights tL_chatBannedRights) {
        int i = !tL_chatBannedRights.send_photos ? 1 : 0;
        if (!tL_chatBannedRights.send_videos) {
            i++;
        }
        if (!tL_chatBannedRights.send_stickers) {
            i++;
        }
        if (!tL_chatBannedRights.send_audios) {
            i++;
        }
        if (!tL_chatBannedRights.send_docs) {
            i++;
        }
        if (!tL_chatBannedRights.send_voices) {
            i++;
        }
        if (!tL_chatBannedRights.send_roundvideos) {
            i++;
        }
        if (!tL_chatBannedRights.embed_links && !tL_chatBannedRights.send_plain) {
            i++;
        }
        if (!tL_chatBannedRights.send_polls) {
            i++;
        }
        return !tL_chatBannedRights.send_reactions ? i + 1 : i;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ChatUsersActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$35();
            }
        };
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class, ManageChatUserCell.class, ManageChatTextCell.class, TextCheckCell2.class, TextSettingsCell.class, SlideChooseView.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        int i = Theme.key_windowBackgroundGrayShadow;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{GraySectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_graySectionText));
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell2.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell2.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell2.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switch2Track));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell2.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switch2TrackChecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ManageChatUserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        int i3 = Theme.key_windowBackgroundWhiteGrayText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ManageChatUserCell.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ManageChatUserCell.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlueText));
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_undo_background));
        int i4 = Theme.key_undo_cancelColor;
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        int i5 = Theme.key_undo_infoColor;
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"infoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"textPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"progressPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{UndoView.class}, new String[]{"leftImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{ManageChatTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{ManageChatTextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayIcon));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{ManageChatTextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueButton));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{ManageChatTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueIcon));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{StickerEmptyView.class}, new String[]{"title"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{StickerEmptyView.class}, new String[]{MediaTrack.ROLE_SUBTITLE}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.emptyView.title, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.emptyView.subtitle, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ManageChatUserCell.class}, null, Theme.avatarDrawables, null, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$35() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof ManageChatUserCell) {
                    ((ManageChatUserCell) childAt).update(0);
                }
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
        this.undoView.setTranslationY(-i4);
    }
}
