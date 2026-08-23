package org.telegram.p029ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.DatePickerDialog;
import android.app.TimePickerDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.DatePicker;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TimePicker;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenu;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.INavigationLayout;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Cells.CheckBoxCell;
import org.telegram.p029ui.Cells.DialogRadioCell;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.Cells.PollEditTextCell;
import org.telegram.p029ui.Cells.ShadowSectionCell;
import org.telegram.p029ui.Cells.TextCheckCell2;
import org.telegram.p029ui.Cells.TextDetailCell;
import org.telegram.p029ui.Cells.TextInfoPrivacyCell;
import org.telegram.p029ui.Cells.TextSettingsCell;
import org.telegram.p029ui.Cells.UserCell2;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CircularProgressDrawable;
import org.telegram.p029ui.Components.CrossfadeDrawable;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.TagEditCell;
import org.telegram.p029ui.TwoStepVerificationActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes3.dex */
public class ChatRightsEditActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private int addAdminsRow;
    private FrameLayout addBotButton;
    private FrameLayout addBotButtonContainer;
    private int addBotButtonRow;
    private AnimatedTextView addBotButtonText;
    private int addUsersRow;
    private TLRPC.TL_chatAdminRights adminRights;
    private int anonymousRow;
    private boolean asAdmin;
    private ValueAnimator asAdminAnimator;
    private float asAdminT;
    private int banUsersRow;
    private TLRPC.TL_chatBannedRights bannedRights;
    public boolean banning;
    private String botHash;
    private boolean canEdit;
    private int cantEditInfoRow;
    private int changeInfoRow;
    private int channelDeleteMessagesRow;
    private int channelDeleteStoriesRow;
    private int channelEditMessagesRow;
    private int channelEditStoriesRow;
    private boolean channelMessagesExpanded;
    private int channelMessagesRow;
    private int channelPostMessagesRow;
    private int channelPostStoriesRow;
    private boolean channelStoriesExpanded;
    private int channelStoriesRow;
    private long chatId;
    private boolean closingKeyboardAfterFinish;
    private String currentBannedRights;
    private TLRPC.Chat currentChat;
    private String currentRank;
    private int currentType;
    private TLRPC.User currentUser;
    private TLRPC.TL_chatBannedRights defaultBannedRights;
    private ChatRightsEditActivityDelegate delegate;
    private int deleteMessagesRow;
    private CrossfadeDrawable doneDrawable;
    private ValueAnimator doneDrawableAnimator;
    private int editMesagesRow;
    private int editTagsRow;
    private int embedLinksRow;
    private boolean initialAsAdmin;
    private boolean initialIsSet;
    private String initialRank;
    private boolean isAddingNew;
    private boolean isChannel;
    private boolean isForum;
    private LinearLayoutManager linearLayoutManager;
    private RecyclerListView listView;
    private ListAdapter listViewAdapter;
    private boolean loading = false;
    private int manageDirectRow;
    private int manageRow;
    private int manageTopicsRow;
    private TLRPC.TL_chatAdminRights myAdminRights;
    private int permissionsEndRow;
    private int permissionsStartRow;
    private int pinMessagesRow;
    private int postMessagesRow;
    private PollEditTextCell rankEditTextCell;
    private int rankHeaderRow;
    private int rankInfoRow;
    private int rankRow;
    private int removeAdminRow;
    private int removeAdminShadowRow;
    private int rightsShadowRow;
    private int rowCount;
    private int sendFilesRow;
    private boolean sendMediaExpanded;
    private int sendMediaRow;
    private int sendMessagesRow;
    private int sendMusicRow;
    private int sendPhotosRow;
    private int sendPollsRow;
    private int sendRoundRow;
    private int sendStickersRow;
    private int sendVideosRow;
    private int sendVoiceRow;
    private int startVoiceChatRow;
    private int transferOwnerRow;
    private int transferOwnerShadowRow;
    private int untilDateRow;
    private int untilSectionRow;

    /* JADX INFO: loaded from: classes6.dex */
    public interface ChatRightsEditActivityDelegate {
        void didChangeOwner(TLRPC.User user);

        void didSetRights(int i, TLRPC.TL_chatAdminRights tL_chatAdminRights, TLRPC.TL_chatBannedRights tL_chatBannedRights, String str);
    }

    public static /* synthetic */ void $r8$lambda$Q3jDeh5uayCpzn49ZrZfQ7NJ9q0(DialogInterface dialogInterface, int i) {
    }

    /* JADX INFO: renamed from: $r8$lambda$XGcFDpfr-PJk_cEX0SQrzTbp-uI, reason: not valid java name */
    public static /* synthetic */ void m8215$r8$lambda$XGcFDpfrPJk_cEX0SQrzTbpuI(DialogInterface dialogInterface, int i) {
    }

    public ChatRightsEditActivity(long j, long j2, TLRPC.TL_chatAdminRights tL_chatAdminRights, TLRPC.TL_chatBannedRights tL_chatBannedRights, TLRPC.TL_chatBannedRights tL_chatBannedRights2, String str, int i, boolean z, boolean z2, String str2) {
        boolean z3;
        boolean z4;
        TLRPC.UserFull userFull;
        TLRPC.Chat chat;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2 = tL_chatAdminRights;
        this.asAdminT = 0.0f;
        this.asAdmin = false;
        this.initialAsAdmin = false;
        String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        this.currentBannedRights = _UrlKt.FRAGMENT_ENCODE_SET;
        this.closingKeyboardAfterFinish = false;
        this.isAddingNew = z2;
        this.chatId = j2;
        this.currentUser = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
        this.currentType = i;
        this.canEdit = z;
        boolean z5 = true;
        boolean z6 = !z;
        this.channelStoriesExpanded = z6;
        this.channelMessagesExpanded = z6;
        this.botHash = str2;
        TLRPC.Chat chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chatId));
        this.currentChat = chat2;
        str3 = str != null ? str : str3;
        this.currentRank = str3;
        this.initialRank = str3;
        if (chat2 != null) {
            this.isChannel = ChatObject.isChannel(chat2) && !this.currentChat.megagroup;
            this.isForum = ChatObject.isForum(this.currentChat);
            this.myAdminRights = this.currentChat.admin_rights;
        }
        if (this.myAdminRights == null) {
            this.myAdminRights = emptyAdminRights(this.currentType != 2 || ((chat = this.currentChat) != null && chat.creator));
        }
        if (i == 0 || i == 2) {
            if (i == 2 && (userFull = getMessagesController().getUserFull(j)) != null) {
                TLRPC.TL_chatAdminRights tL_chatAdminRights3 = this.isChannel ? userFull.bot_broadcast_admin_rights : userFull.bot_group_admin_rights;
                if (tL_chatAdminRights3 != null) {
                    if (tL_chatAdminRights2 == null) {
                        tL_chatAdminRights2 = tL_chatAdminRights3;
                    } else {
                        tL_chatAdminRights2.ban_users = tL_chatAdminRights2.ban_users || tL_chatAdminRights3.ban_users;
                        tL_chatAdminRights2.add_admins = tL_chatAdminRights2.add_admins || tL_chatAdminRights3.add_admins;
                        tL_chatAdminRights2.post_messages = tL_chatAdminRights2.post_messages || tL_chatAdminRights3.post_messages;
                        tL_chatAdminRights2.pin_messages = tL_chatAdminRights2.pin_messages || tL_chatAdminRights3.pin_messages;
                        tL_chatAdminRights2.manage_ranks = tL_chatAdminRights2.manage_ranks || tL_chatAdminRights3.manage_ranks;
                        tL_chatAdminRights2.delete_messages = tL_chatAdminRights2.delete_messages || tL_chatAdminRights3.delete_messages;
                        tL_chatAdminRights2.change_info = tL_chatAdminRights2.change_info || tL_chatAdminRights3.change_info;
                        tL_chatAdminRights2.anonymous = tL_chatAdminRights2.anonymous || tL_chatAdminRights3.anonymous;
                        tL_chatAdminRights2.edit_messages = tL_chatAdminRights2.edit_messages || tL_chatAdminRights3.edit_messages;
                        tL_chatAdminRights2.manage_call = tL_chatAdminRights2.manage_call || tL_chatAdminRights3.manage_call;
                        tL_chatAdminRights2.manage_topics = tL_chatAdminRights2.manage_topics || tL_chatAdminRights3.manage_topics;
                        tL_chatAdminRights2.post_stories = tL_chatAdminRights2.post_stories || tL_chatAdminRights3.post_stories;
                        tL_chatAdminRights2.edit_stories = tL_chatAdminRights2.edit_stories || tL_chatAdminRights3.edit_stories;
                        tL_chatAdminRights2.delete_stories = tL_chatAdminRights2.delete_stories || tL_chatAdminRights3.delete_stories;
                        tL_chatAdminRights2.manage_direct_messages = tL_chatAdminRights2.manage_direct_messages || tL_chatAdminRights3.manage_direct_messages;
                        tL_chatAdminRights2.other = tL_chatAdminRights2.other || tL_chatAdminRights3.other;
                    }
                }
            }
            if (tL_chatAdminRights2 == null) {
                this.initialAsAdmin = false;
                if (i == 2) {
                    this.adminRights = emptyAdminRights(false);
                    boolean z7 = this.isChannel;
                    this.asAdmin = z7;
                    this.asAdminT = z7 ? 1.0f : 0.0f;
                    this.initialIsSet = false;
                } else {
                    TLRPC.TL_chatAdminRights tL_chatAdminRights4 = new TLRPC.TL_chatAdminRights();
                    this.adminRights = tL_chatAdminRights4;
                    TLRPC.TL_chatAdminRights tL_chatAdminRights5 = this.myAdminRights;
                    tL_chatAdminRights4.change_info = tL_chatAdminRights5.change_info;
                    tL_chatAdminRights4.post_messages = tL_chatAdminRights5.post_messages;
                    tL_chatAdminRights4.edit_messages = tL_chatAdminRights5.edit_messages;
                    tL_chatAdminRights4.delete_messages = tL_chatAdminRights5.delete_messages;
                    tL_chatAdminRights4.manage_call = tL_chatAdminRights5.manage_call;
                    tL_chatAdminRights4.ban_users = tL_chatAdminRights5.ban_users;
                    tL_chatAdminRights4.invite_users = tL_chatAdminRights5.invite_users;
                    tL_chatAdminRights4.pin_messages = tL_chatAdminRights5.pin_messages;
                    tL_chatAdminRights4.manage_ranks = tL_chatAdminRights5.manage_ranks;
                    tL_chatAdminRights4.manage_topics = tL_chatAdminRights5.manage_topics;
                    tL_chatAdminRights4.post_stories = tL_chatAdminRights5.post_stories;
                    tL_chatAdminRights4.edit_stories = tL_chatAdminRights5.edit_stories;
                    tL_chatAdminRights4.delete_stories = tL_chatAdminRights5.delete_stories;
                    tL_chatAdminRights4.manage_direct_messages = tL_chatAdminRights5.manage_direct_messages;
                    tL_chatAdminRights4.other = tL_chatAdminRights5.other;
                    this.initialIsSet = false;
                }
            } else {
                this.initialAsAdmin = true;
                TLRPC.TL_chatAdminRights tL_chatAdminRights6 = new TLRPC.TL_chatAdminRights();
                this.adminRights = tL_chatAdminRights6;
                boolean z8 = tL_chatAdminRights2.change_info;
                tL_chatAdminRights6.change_info = z8;
                boolean z9 = tL_chatAdminRights2.post_messages;
                tL_chatAdminRights6.post_messages = z9;
                boolean z10 = tL_chatAdminRights2.edit_messages;
                tL_chatAdminRights6.edit_messages = z10;
                boolean z11 = tL_chatAdminRights2.delete_messages;
                tL_chatAdminRights6.delete_messages = z11;
                boolean z12 = tL_chatAdminRights2.manage_call;
                tL_chatAdminRights6.manage_call = z12;
                boolean z13 = tL_chatAdminRights2.ban_users;
                tL_chatAdminRights6.ban_users = z13;
                boolean z14 = tL_chatAdminRights2.invite_users;
                tL_chatAdminRights6.invite_users = z14;
                boolean z15 = tL_chatAdminRights2.pin_messages;
                tL_chatAdminRights6.pin_messages = z15;
                boolean z16 = tL_chatAdminRights2.manage_ranks;
                tL_chatAdminRights6.manage_ranks = z16;
                boolean z17 = tL_chatAdminRights2.manage_topics;
                tL_chatAdminRights6.manage_topics = z17;
                tL_chatAdminRights6.post_stories = tL_chatAdminRights2.post_stories;
                tL_chatAdminRights6.edit_stories = tL_chatAdminRights2.edit_stories;
                tL_chatAdminRights6.delete_stories = tL_chatAdminRights2.delete_stories;
                boolean z18 = tL_chatAdminRights2.manage_direct_messages;
                tL_chatAdminRights6.manage_direct_messages = z18;
                boolean z19 = tL_chatAdminRights2.add_admins;
                tL_chatAdminRights6.add_admins = z19;
                boolean z20 = tL_chatAdminRights2.anonymous;
                tL_chatAdminRights6.anonymous = z20;
                boolean z21 = tL_chatAdminRights2.other;
                tL_chatAdminRights6.other = z21;
                boolean z22 = z8 || z9 || z18 || z10 || z11 || z13 || z14 || z15 || z16 || z19 || z12 || z20 || z17 || z21;
                this.initialIsSet = z22;
                if (i == 2) {
                    boolean z23 = this.isChannel || z22;
                    this.asAdmin = z23;
                    this.asAdminT = z23 ? 1.0f : 0.0f;
                    this.initialIsSet = false;
                }
            }
            TLRPC.Chat chat3 = this.currentChat;
            if (chat3 != null) {
                this.defaultBannedRights = chat3.default_banned_rights;
            }
            if (this.defaultBannedRights == null) {
                TLRPC.TL_chatBannedRights tL_chatBannedRights3 = new TLRPC.TL_chatBannedRights();
                this.defaultBannedRights = tL_chatBannedRights3;
                tL_chatBannedRights3.edit_rank = false;
                tL_chatBannedRights3.send_roundvideos = false;
                tL_chatBannedRights3.send_voices = false;
                tL_chatBannedRights3.send_docs = false;
                tL_chatBannedRights3.send_audios = false;
                tL_chatBannedRights3.send_photos = false;
                tL_chatBannedRights3.send_videos = false;
                tL_chatBannedRights3.send_plain = false;
                tL_chatBannedRights3.manage_topics = false;
                tL_chatBannedRights3.pin_messages = false;
                tL_chatBannedRights3.change_info = false;
                tL_chatBannedRights3.invite_users = false;
                tL_chatBannedRights3.send_polls = false;
                tL_chatBannedRights3.send_inline = false;
                tL_chatBannedRights3.send_games = false;
                tL_chatBannedRights3.send_gifs = false;
                tL_chatBannedRights3.send_stickers = false;
                tL_chatBannedRights3.embed_links = false;
                tL_chatBannedRights3.send_messages = false;
                tL_chatBannedRights3.send_media = false;
                tL_chatBannedRights3.view_messages = false;
            }
            TLRPC.TL_chatBannedRights tL_chatBannedRights4 = this.defaultBannedRights;
            if (tL_chatBannedRights4.change_info || this.isChannel) {
                z3 = true;
            } else {
                z3 = true;
                this.adminRights.change_info = true;
            }
            if (!tL_chatBannedRights4.pin_messages) {
                this.adminRights.pin_messages = z3;
            }
            if (!tL_chatBannedRights4.edit_rank) {
                this.adminRights.manage_ranks = z3;
            }
            z4 = false;
        } else {
            if (i == 1) {
                this.defaultBannedRights = tL_chatBannedRights;
                if (tL_chatBannedRights == null) {
                    TLRPC.TL_chatBannedRights tL_chatBannedRights5 = new TLRPC.TL_chatBannedRights();
                    this.defaultBannedRights = tL_chatBannedRights5;
                    tL_chatBannedRights5.edit_rank = false;
                    tL_chatBannedRights5.send_roundvideos = false;
                    tL_chatBannedRights5.send_voices = false;
                    tL_chatBannedRights5.send_docs = false;
                    tL_chatBannedRights5.send_audios = false;
                    tL_chatBannedRights5.send_photos = false;
                    tL_chatBannedRights5.send_videos = false;
                    tL_chatBannedRights5.send_plain = false;
                    tL_chatBannedRights5.manage_topics = false;
                    tL_chatBannedRights5.pin_messages = false;
                    tL_chatBannedRights5.change_info = false;
                    tL_chatBannedRights5.invite_users = false;
                    tL_chatBannedRights5.send_polls = false;
                    tL_chatBannedRights5.send_inline = false;
                    tL_chatBannedRights5.send_games = false;
                    tL_chatBannedRights5.send_gifs = false;
                    tL_chatBannedRights5.send_stickers = false;
                    tL_chatBannedRights5.embed_links = false;
                    tL_chatBannedRights5.send_messages = false;
                    tL_chatBannedRights5.send_media = false;
                    tL_chatBannedRights5.view_messages = false;
                }
                TLRPC.TL_chatBannedRights tL_chatBannedRights6 = new TLRPC.TL_chatBannedRights();
                this.bannedRights = tL_chatBannedRights6;
                if (tL_chatBannedRights2 == null) {
                    tL_chatBannedRights6.edit_rank = false;
                    tL_chatBannedRights6.manage_topics = false;
                    tL_chatBannedRights6.pin_messages = false;
                    tL_chatBannedRights6.change_info = false;
                    tL_chatBannedRights6.invite_users = false;
                    tL_chatBannedRights6.send_polls = false;
                    tL_chatBannedRights6.send_inline = false;
                    tL_chatBannedRights6.send_games = false;
                    tL_chatBannedRights6.send_gifs = false;
                    tL_chatBannedRights6.send_stickers = false;
                    tL_chatBannedRights6.embed_links = false;
                    tL_chatBannedRights6.send_messages = false;
                    tL_chatBannedRights6.send_media = false;
                    tL_chatBannedRights6.view_messages = false;
                } else {
                    tL_chatBannedRights6.view_messages = tL_chatBannedRights2.view_messages;
                    tL_chatBannedRights6.send_messages = tL_chatBannedRights2.send_messages;
                    tL_chatBannedRights6.send_media = tL_chatBannedRights2.send_media;
                    tL_chatBannedRights6.send_stickers = tL_chatBannedRights2.send_stickers;
                    tL_chatBannedRights6.send_gifs = tL_chatBannedRights2.send_gifs;
                    tL_chatBannedRights6.send_games = tL_chatBannedRights2.send_games;
                    tL_chatBannedRights6.send_inline = tL_chatBannedRights2.send_inline;
                    tL_chatBannedRights6.embed_links = tL_chatBannedRights2.embed_links;
                    tL_chatBannedRights6.send_polls = tL_chatBannedRights2.send_polls;
                    tL_chatBannedRights6.invite_users = tL_chatBannedRights2.invite_users;
                    tL_chatBannedRights6.change_info = tL_chatBannedRights2.change_info;
                    tL_chatBannedRights6.pin_messages = tL_chatBannedRights2.pin_messages;
                    tL_chatBannedRights6.until_date = tL_chatBannedRights2.until_date;
                    tL_chatBannedRights6.manage_topics = tL_chatBannedRights2.manage_topics;
                    tL_chatBannedRights6.send_photos = tL_chatBannedRights2.send_photos;
                    tL_chatBannedRights6.send_videos = tL_chatBannedRights2.send_videos;
                    tL_chatBannedRights6.send_roundvideos = tL_chatBannedRights2.send_roundvideos;
                    tL_chatBannedRights6.send_audios = tL_chatBannedRights2.send_audios;
                    tL_chatBannedRights6.send_voices = tL_chatBannedRights2.send_voices;
                    tL_chatBannedRights6.send_docs = tL_chatBannedRights2.send_docs;
                    tL_chatBannedRights6.send_plain = tL_chatBannedRights2.send_plain;
                    tL_chatBannedRights6.edit_rank = tL_chatBannedRights2.edit_rank;
                }
                TLRPC.TL_chatBannedRights tL_chatBannedRights7 = this.defaultBannedRights;
                if (tL_chatBannedRights7.view_messages) {
                    tL_chatBannedRights6.view_messages = true;
                }
                if (tL_chatBannedRights7.send_messages) {
                    tL_chatBannedRights6.send_messages = true;
                }
                if (tL_chatBannedRights7.send_media) {
                    tL_chatBannedRights6.send_media = true;
                }
                if (tL_chatBannedRights7.send_stickers) {
                    tL_chatBannedRights6.send_stickers = true;
                }
                if (tL_chatBannedRights7.send_gifs) {
                    tL_chatBannedRights6.send_gifs = true;
                }
                if (tL_chatBannedRights7.send_games) {
                    tL_chatBannedRights6.send_games = true;
                }
                if (tL_chatBannedRights7.send_inline) {
                    tL_chatBannedRights6.send_inline = true;
                }
                if (tL_chatBannedRights7.embed_links) {
                    tL_chatBannedRights6.embed_links = true;
                }
                if (tL_chatBannedRights7.send_polls) {
                    tL_chatBannedRights6.send_polls = true;
                }
                if (tL_chatBannedRights7.invite_users) {
                    tL_chatBannedRights6.invite_users = true;
                }
                if (tL_chatBannedRights7.change_info) {
                    tL_chatBannedRights6.change_info = true;
                }
                if (tL_chatBannedRights7.pin_messages) {
                    tL_chatBannedRights6.pin_messages = true;
                }
                if (tL_chatBannedRights7.edit_rank) {
                    tL_chatBannedRights6.edit_rank = true;
                }
                if (tL_chatBannedRights7.manage_topics) {
                    tL_chatBannedRights6.manage_topics = true;
                }
                if (tL_chatBannedRights7.send_photos) {
                    tL_chatBannedRights6.send_photos = true;
                }
                if (tL_chatBannedRights7.send_videos) {
                    tL_chatBannedRights6.send_videos = true;
                }
                if (tL_chatBannedRights7.send_audios) {
                    tL_chatBannedRights6.send_audios = true;
                }
                if (tL_chatBannedRights7.send_docs) {
                    tL_chatBannedRights6.send_docs = true;
                }
                if (tL_chatBannedRights7.send_voices) {
                    tL_chatBannedRights6.send_voices = true;
                }
                if (tL_chatBannedRights7.send_roundvideos) {
                    tL_chatBannedRights6.send_roundvideos = true;
                }
                if (tL_chatBannedRights7.send_plain) {
                    tL_chatBannedRights6.send_plain = true;
                }
                this.currentBannedRights = ChatObject.getBannedRightsString(tL_chatBannedRights6);
                if (tL_chatBannedRights2 != null && tL_chatBannedRights2.view_messages) {
                    z5 = false;
                }
                this.initialIsSet = z5;
            }
            z4 = false;
        }
        updateRows(z4);
    }

    public static TLRPC.TL_chatAdminRights rightsOR(TLRPC.TL_chatAdminRights tL_chatAdminRights, TLRPC.TL_chatAdminRights tL_chatAdminRights2) {
        TLRPC.TL_chatAdminRights tL_chatAdminRights3 = new TLRPC.TL_chatAdminRights();
        boolean z = true;
        tL_chatAdminRights3.change_info = tL_chatAdminRights.change_info || tL_chatAdminRights2.change_info;
        tL_chatAdminRights3.post_messages = tL_chatAdminRights.post_messages || tL_chatAdminRights2.post_messages;
        tL_chatAdminRights3.edit_messages = tL_chatAdminRights.edit_messages || tL_chatAdminRights2.edit_messages;
        tL_chatAdminRights3.delete_messages = tL_chatAdminRights.delete_messages || tL_chatAdminRights2.delete_messages;
        tL_chatAdminRights3.ban_users = tL_chatAdminRights.ban_users || tL_chatAdminRights2.ban_users;
        tL_chatAdminRights3.invite_users = tL_chatAdminRights.invite_users || tL_chatAdminRights2.invite_users;
        tL_chatAdminRights3.pin_messages = tL_chatAdminRights.pin_messages || tL_chatAdminRights2.pin_messages;
        tL_chatAdminRights3.manage_ranks = tL_chatAdminRights.manage_ranks || tL_chatAdminRights2.manage_ranks;
        tL_chatAdminRights3.add_admins = tL_chatAdminRights.add_admins || tL_chatAdminRights2.add_admins;
        tL_chatAdminRights3.manage_call = tL_chatAdminRights.manage_call || tL_chatAdminRights2.manage_call;
        tL_chatAdminRights3.manage_topics = tL_chatAdminRights.manage_topics || tL_chatAdminRights2.manage_topics;
        tL_chatAdminRights3.post_stories = tL_chatAdminRights.post_stories || tL_chatAdminRights2.post_stories;
        tL_chatAdminRights3.edit_stories = tL_chatAdminRights.edit_stories || tL_chatAdminRights2.edit_stories;
        tL_chatAdminRights3.delete_stories = tL_chatAdminRights.delete_stories || tL_chatAdminRights2.delete_stories;
        if (!tL_chatAdminRights.manage_direct_messages && !tL_chatAdminRights2.manage_direct_messages) {
            z = false;
        }
        tL_chatAdminRights3.manage_direct_messages = z;
        return tL_chatAdminRights3;
    }

    public static TLRPC.TL_chatAdminRights emptyAdminRights(boolean z) {
        TLRPC.TL_chatAdminRights tL_chatAdminRights = new TLRPC.TL_chatAdminRights();
        tL_chatAdminRights.manage_ranks = z;
        tL_chatAdminRights.manage_direct_messages = z;
        tL_chatAdminRights.delete_stories = z;
        tL_chatAdminRights.edit_stories = z;
        tL_chatAdminRights.post_stories = z;
        tL_chatAdminRights.manage_topics = z;
        tL_chatAdminRights.manage_call = z;
        tL_chatAdminRights.add_admins = z;
        tL_chatAdminRights.pin_messages = z;
        tL_chatAdminRights.invite_users = z;
        tL_chatAdminRights.ban_users = z;
        tL_chatAdminRights.delete_messages = z;
        tL_chatAdminRights.edit_messages = z;
        tL_chatAdminRights.post_messages = z;
        tL_chatAdminRights.change_info = z;
        return tL_chatAdminRights;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        int i = this.currentType;
        if (i == 0) {
            this.actionBar.setTitle(LocaleController.getString(C2888R.string.EditAdmin));
        } else if (i == 2) {
            this.actionBar.setTitle(LocaleController.getString(C2888R.string.AddBot));
        } else {
            this.actionBar.setTitle(LocaleController.getString(C2888R.string.UserRestrictions));
        }
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ChatRightsEditActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    if (ChatRightsEditActivity.this.checkDiscard(true)) {
                        ChatRightsEditActivity.this.finishFragment();
                    }
                } else if (i2 == 1) {
                    ChatRightsEditActivity.this.onDonePressed();
                }
            }
        });
        boolean z = false;
        if (this.canEdit || (!this.isChannel && this.currentChat.creator && UserObject.isUserSelf(this.currentUser))) {
            ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
            Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.ic_ab_done).mutate();
            int i2 = Theme.key_actionBarDefaultIcon;
            drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
            this.doneDrawable = new CrossfadeDrawable(drawableMutate, new CircularProgressDrawable(Theme.getColor(i2)));
            actionBarMenuCreateMenu.addItemWithWidth(1, 0, AndroidUtilities.m1124dp(56.0f), LocaleController.getString(C2888R.string.Done));
            actionBarMenuCreateMenu.getItem(1).setIcon(this.doneDrawable);
        }
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.ChatRightsEditActivity.2
            private int previousHeight = -1;

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
                super.onLayout(z2, i3, i4, i5, i6);
                int i7 = i6 - i4;
                int i8 = this.previousHeight;
                if (i8 != -1 && Math.abs(i8 - i7) > AndroidUtilities.m1124dp(20.0f)) {
                    ChatRightsEditActivity.this.listView.smoothScrollToPosition(ChatRightsEditActivity.this.rowCount - 1);
                }
                this.previousHeight = i7;
            }
        };
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        View view = this.fragmentView;
        FrameLayout frameLayout2 = (FrameLayout) view;
        view.setFocusableInTouchMode(true);
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.ChatRightsEditActivity.3
            @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (ChatRightsEditActivity.this.loading) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }

            @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (ChatRightsEditActivity.this.loading) {
                    return false;
                }
                return super.onInterceptTouchEvent(motionEvent);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setClipChildren(this.currentType != 2);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, i, z) { // from class: org.telegram.ui.ChatRightsEditActivity.4
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            protected int getExtraLayoutSpace(RecyclerView.State state) {
                return 5000;
            }
        };
        this.linearLayoutManager = linearLayoutManager;
        linearLayoutManager.setInitialPrefetchItemCount(100);
        this.listView.setLayoutManager(this.linearLayoutManager);
        RecyclerListView recyclerListView2 = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.listViewAdapter = listAdapter;
        recyclerListView2.setAdapter(listAdapter);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        if (this.currentType == 2) {
            this.listView.setResetSelectorOnChanged(false);
        }
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.listView.setSections();
        this.actionBar.setAdaptiveBackground(this.listView);
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ChatRightsEditActivity.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i3) {
                if (i3 == 1) {
                    AndroidUtilities.hideKeyboard(ChatRightsEditActivity.this.getParentActivity().getCurrentFocus());
                }
            }
        });
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i3) {
                this.f$0.lambda$createView$6(context, view2, i3);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(Context context, View view, int i) {
        boolean z;
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        TLRPC.TL_chatBannedRights tL_chatBannedRights2;
        TLRPC.TL_chatBannedRights tL_chatBannedRights3;
        boolean z2;
        boolean z3;
        View viewFindViewByPosition;
        String string;
        if (this.canEdit || ((this.currentChat.creator && this.currentType == 0 && i == this.anonymousRow) || i == 0)) {
            boolean z4 = false;
            if (i == this.sendMediaRow) {
                if (!(view instanceof TextCheckCell2) || ((TextCheckCell2) view).isEnabled()) {
                    this.sendMediaExpanded = !this.sendMediaExpanded;
                    updateRows(false);
                    if (this.sendMediaExpanded) {
                        this.listViewAdapter.notifyItemRangeInserted(this.sendMediaRow + 1, 9);
                        return;
                    } else {
                        this.listViewAdapter.notifyItemRangeRemoved(this.sendMediaRow + 1, 9);
                        return;
                    }
                }
                return;
            }
            int i2 = this.channelMessagesRow;
            if (i == i2) {
                if (!(view instanceof TextCheckCell2) || ((TextCheckCell2) view).isEnabled()) {
                    this.channelMessagesExpanded = !this.channelMessagesExpanded;
                    updateRows(false);
                    this.listViewAdapter.notifyItemChanged(this.channelMessagesRow);
                    if (this.channelMessagesExpanded) {
                        this.listViewAdapter.notifyItemRangeInserted(this.channelMessagesRow + 1, 3);
                        return;
                    } else {
                        this.listViewAdapter.notifyItemRangeRemoved(this.channelMessagesRow + 1, 3);
                        return;
                    }
                }
                return;
            }
            int i3 = this.channelStoriesRow;
            if (i == i3) {
                if (!(view instanceof TextCheckCell2) || ((TextCheckCell2) view).isEnabled()) {
                    this.channelStoriesExpanded = !this.channelStoriesExpanded;
                    updateRows(false);
                    this.listViewAdapter.notifyItemChanged(this.channelStoriesRow);
                    if (this.channelStoriesExpanded) {
                        this.listViewAdapter.notifyItemRangeInserted(this.channelStoriesRow + 1, 3);
                        return;
                    } else {
                        this.listViewAdapter.notifyItemRangeRemoved(this.channelStoriesRow + 1, 3);
                        return;
                    }
                }
                return;
            }
            if (i == 0) {
                Bundle bundle = new Bundle();
                bundle.putLong("user_id", this.currentUser.f1825id);
                presentFragment(new ProfileActivity(bundle));
                return;
            }
            if (i == this.removeAdminRow) {
                int i4 = this.currentType;
                if (i4 == 0) {
                    MessagesController.getInstance(this.currentAccount).setUserAdminRole(this.chatId, this.currentUser, new TLRPC.TL_chatAdminRights(), this.currentRank, this.isChannel, getFragmentForAlert(0), this.isAddingNew, false, null, null);
                    ChatRightsEditActivityDelegate chatRightsEditActivityDelegate = this.delegate;
                    if (chatRightsEditActivityDelegate != null) {
                        chatRightsEditActivityDelegate.didSetRights(0, this.adminRights, this.bannedRights, this.currentRank);
                    }
                    finishFragment();
                    return;
                }
                if (i4 == 1) {
                    this.banning = true;
                    TLRPC.TL_chatBannedRights tL_chatBannedRights4 = new TLRPC.TL_chatBannedRights();
                    this.bannedRights = tL_chatBannedRights4;
                    tL_chatBannedRights4.view_messages = true;
                    tL_chatBannedRights4.send_media = true;
                    tL_chatBannedRights4.send_messages = true;
                    tL_chatBannedRights4.send_stickers = true;
                    tL_chatBannedRights4.send_gifs = true;
                    tL_chatBannedRights4.send_games = true;
                    tL_chatBannedRights4.send_inline = true;
                    tL_chatBannedRights4.embed_links = true;
                    tL_chatBannedRights4.pin_messages = true;
                    tL_chatBannedRights4.edit_rank = true;
                    tL_chatBannedRights4.send_polls = true;
                    tL_chatBannedRights4.invite_users = true;
                    tL_chatBannedRights4.change_info = true;
                    tL_chatBannedRights4.manage_topics = true;
                    tL_chatBannedRights4.until_date = 0;
                    onDonePressed();
                    return;
                }
                return;
            }
            if (i == this.transferOwnerRow) {
                lambda$initTransfer$8(null, null);
                return;
            }
            if (i == this.untilDateRow) {
                if (getParentActivity() == null) {
                    return;
                }
                final BottomSheet.Builder builder = new BottomSheet.Builder(context);
                builder.setApplyTopPadding(false);
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                HeaderCell headerCell = new HeaderCell(context, Theme.key_dialogTextBlue2, 23, 15, false);
                headerCell.setHeight(47);
                headerCell.setText(LocaleController.getString(C2888R.string.UserRestrictionsDuration));
                linearLayout.addView(headerCell);
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setOrientation(1);
                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2));
                BottomSheet.BottomSheetCell[] bottomSheetCellArr = new BottomSheet.BottomSheetCell[5];
                int i5 = 0;
                for (int i6 = 5; i5 < i6; i6 = 5) {
                    BottomSheet.BottomSheetCell bottomSheetCell = new BottomSheet.BottomSheetCell(context, 0);
                    bottomSheetCellArr[i5] = bottomSheetCell;
                    bottomSheetCell.setPadding(AndroidUtilities.m1124dp(7.0f), 0, AndroidUtilities.m1124dp(7.0f), 0);
                    bottomSheetCellArr[i5].setTag(Integer.valueOf(i5));
                    bottomSheetCellArr[i5].setBackgroundDrawable(Theme.getSelectorDrawable(false));
                    if (i5 == 0) {
                        string = LocaleController.getString(C2888R.string.UserRestrictionsUntilForever);
                    } else if (i5 == 1) {
                        string = LocaleController.formatPluralString("Days", 1, new Object[0]);
                    } else if (i5 == 2) {
                        string = LocaleController.formatPluralString("Weeks", 1, new Object[0]);
                    } else if (i5 == 3) {
                        string = LocaleController.formatPluralString("Months", 1, new Object[0]);
                    } else {
                        string = LocaleController.getString(C2888R.string.UserRestrictionsCustom);
                    }
                    bottomSheetCellArr[i5].setTextAndIcon(string, 0);
                    linearLayout2.addView(bottomSheetCellArr[i5], LayoutHelper.createLinear(-1, -2));
                    bottomSheetCellArr[i5].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$createView$5(builder, view2);
                        }
                    });
                    i5++;
                }
                builder.setCustomView(linearLayout);
                showDialog(builder.create());
                return;
            }
            if (view instanceof CheckBoxCell) {
                CheckBoxCell checkBoxCell = (CheckBoxCell) view;
                int i7 = this.channelPostMessagesRow;
                if (i == i7 || i == this.channelEditMessagesRow || i == this.channelDeleteMessagesRow) {
                    if (i == i7) {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights = this.adminRights;
                        z2 = !tL_chatAdminRights.post_messages;
                        tL_chatAdminRights.post_messages = z2;
                    } else if (i == this.channelEditMessagesRow) {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights2 = this.adminRights;
                        z2 = !tL_chatAdminRights2.edit_messages;
                        tL_chatAdminRights2.edit_messages = z2;
                    } else {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights3 = this.adminRights;
                        z2 = !tL_chatAdminRights3.delete_messages;
                        tL_chatAdminRights3.delete_messages = z2;
                    }
                    this.listViewAdapter.notifyItemChanged(i2);
                    checkBoxCell.setChecked(z2, true);
                    return;
                }
                int i8 = this.channelPostStoriesRow;
                if (i == i8 || i == this.channelEditStoriesRow || i == this.channelDeleteStoriesRow) {
                    if (i == i8) {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights4 = this.adminRights;
                        z3 = !tL_chatAdminRights4.post_stories;
                        tL_chatAdminRights4.post_stories = z3;
                    } else if (i == this.channelEditStoriesRow) {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights5 = this.adminRights;
                        z3 = !tL_chatAdminRights5.edit_stories;
                        tL_chatAdminRights5.edit_stories = z3;
                    } else {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights6 = this.adminRights;
                        z3 = !tL_chatAdminRights6.delete_stories;
                        tL_chatAdminRights6.delete_stories = z3;
                    }
                    this.listViewAdapter.notifyItemChanged(i3);
                    checkBoxCell.setChecked(z3, true);
                    return;
                }
                if (this.currentType != 1 || this.bannedRights == null) {
                    return;
                }
                checkBoxCell.isChecked();
                if (checkBoxCell.hasIcon()) {
                    if (this.currentType != 2) {
                        new AlertDialog.Builder(getParentActivity()).setTitle(LocaleController.getString(C2888R.string.UserRestrictionsCantModify)).setMessage(LocaleController.getString(C2888R.string.UserRestrictionsCantModifyDisabled)).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).create().show();
                        return;
                    }
                    return;
                }
                if (i == this.sendPhotosRow) {
                    TLRPC.TL_chatBannedRights tL_chatBannedRights5 = this.bannedRights;
                    z4 = !tL_chatBannedRights5.send_photos;
                    tL_chatBannedRights5.send_photos = z4;
                } else if (i == this.sendVideosRow) {
                    TLRPC.TL_chatBannedRights tL_chatBannedRights6 = this.bannedRights;
                    z4 = !tL_chatBannedRights6.send_videos;
                    tL_chatBannedRights6.send_videos = z4;
                } else if (i == this.sendMusicRow) {
                    TLRPC.TL_chatBannedRights tL_chatBannedRights7 = this.bannedRights;
                    z4 = !tL_chatBannedRights7.send_audios;
                    tL_chatBannedRights7.send_audios = z4;
                } else if (i == this.sendFilesRow) {
                    TLRPC.TL_chatBannedRights tL_chatBannedRights8 = this.bannedRights;
                    z4 = !tL_chatBannedRights8.send_docs;
                    tL_chatBannedRights8.send_docs = z4;
                } else if (i == this.sendRoundRow) {
                    TLRPC.TL_chatBannedRights tL_chatBannedRights9 = this.bannedRights;
                    z4 = !tL_chatBannedRights9.send_roundvideos;
                    tL_chatBannedRights9.send_roundvideos = z4;
                } else if (i == this.sendVoiceRow) {
                    TLRPC.TL_chatBannedRights tL_chatBannedRights10 = this.bannedRights;
                    z4 = !tL_chatBannedRights10.send_voices;
                    tL_chatBannedRights10.send_voices = z4;
                } else if (i == this.sendStickersRow) {
                    TLRPC.TL_chatBannedRights tL_chatBannedRights11 = this.bannedRights;
                    z4 = !tL_chatBannedRights11.send_stickers;
                    tL_chatBannedRights11.send_inline = z4;
                    tL_chatBannedRights11.send_gifs = z4;
                    tL_chatBannedRights11.send_games = z4;
                    tL_chatBannedRights11.send_stickers = z4;
                } else if (i == this.embedLinksRow) {
                    if ((this.bannedRights.send_plain || this.defaultBannedRights.send_plain) && (viewFindViewByPosition = this.linearLayoutManager.findViewByPosition(this.sendMessagesRow)) != null) {
                        AndroidUtilities.shakeViewSpring(viewFindViewByPosition);
                        BotWebViewVibrationEffect.APP_ERROR.vibrate();
                        return;
                    } else {
                        TLRPC.TL_chatBannedRights tL_chatBannedRights12 = this.bannedRights;
                        z4 = !tL_chatBannedRights12.embed_links;
                        tL_chatBannedRights12.embed_links = z4;
                    }
                } else if (i == this.sendPollsRow) {
                    TLRPC.TL_chatBannedRights tL_chatBannedRights13 = this.bannedRights;
                    z4 = !tL_chatBannedRights13.send_polls;
                    tL_chatBannedRights13.send_polls = z4;
                }
                this.listViewAdapter.notifyItemChanged(this.sendMediaRow);
                checkBoxCell.setChecked(!z4, true);
                return;
            }
            if (view instanceof TextCheckCell2) {
                TextCheckCell2 textCheckCell2 = (TextCheckCell2) view;
                if (textCheckCell2.hasIcon()) {
                    if (this.currentType != 2) {
                        new AlertDialog.Builder(getParentActivity()).setTitle(LocaleController.getString(C2888R.string.UserRestrictionsCantModify)).setMessage(LocaleController.getString(C2888R.string.UserRestrictionsCantModifyDisabled)).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).create().show();
                        return;
                    }
                    return;
                }
                if (!textCheckCell2.isEnabled()) {
                    int i9 = this.currentType;
                    if (i9 == 2 || i9 == 0) {
                        if ((i != this.changeInfoRow || (tL_chatBannedRights3 = this.defaultBannedRights) == null || tL_chatBannedRights3.change_info) && ((i != this.pinMessagesRow || (tL_chatBannedRights2 = this.defaultBannedRights) == null || tL_chatBannedRights2.pin_messages) && (i != this.editTagsRow || (tL_chatBannedRights = this.defaultBannedRights) == null || tL_chatBannedRights.edit_rank))) {
                            return;
                        }
                        new AlertDialog.Builder(getParentActivity()).setTitle(LocaleController.getString(C2888R.string.UserRestrictionsCantModify)).setMessage(LocaleController.getString(C2888R.string.UserRestrictionsCantModifyEnabled)).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).create().show();
                        return;
                    }
                    return;
                }
                if (this.currentType != 2) {
                    textCheckCell2.setChecked(!textCheckCell2.isChecked());
                }
                boolean zIsChecked = textCheckCell2.isChecked();
                if (i == this.manageRow) {
                    zIsChecked = !this.asAdmin;
                    this.asAdmin = zIsChecked;
                    updateAsAdmin(true);
                } else {
                    if (i == this.changeInfoRow) {
                        int i10 = this.currentType;
                        if (i10 == 0 || i10 == 2) {
                            TLRPC.TL_chatAdminRights tL_chatAdminRights7 = this.adminRights;
                            z = !tL_chatAdminRights7.change_info;
                            tL_chatAdminRights7.change_info = z;
                        } else {
                            TLRPC.TL_chatBannedRights tL_chatBannedRights14 = this.bannedRights;
                            z = !tL_chatBannedRights14.change_info;
                            tL_chatBannedRights14.change_info = z;
                        }
                    } else if (i == this.postMessagesRow) {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights8 = this.adminRights;
                        z = !tL_chatAdminRights8.post_messages;
                        tL_chatAdminRights8.post_messages = z;
                    } else if (i == this.manageDirectRow) {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights9 = this.adminRights;
                        z = !tL_chatAdminRights9.manage_direct_messages;
                        tL_chatAdminRights9.manage_direct_messages = z;
                    } else if (i == this.editMesagesRow) {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights10 = this.adminRights;
                        z = !tL_chatAdminRights10.edit_messages;
                        tL_chatAdminRights10.edit_messages = z;
                    } else if (i == this.deleteMessagesRow) {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights11 = this.adminRights;
                        z = !tL_chatAdminRights11.delete_messages;
                        tL_chatAdminRights11.delete_messages = z;
                    } else if (i == this.addAdminsRow) {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights12 = this.adminRights;
                        z = !tL_chatAdminRights12.add_admins;
                        tL_chatAdminRights12.add_admins = z;
                    } else if (i == this.anonymousRow) {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights13 = this.adminRights;
                        z = !tL_chatAdminRights13.anonymous;
                        tL_chatAdminRights13.anonymous = z;
                    } else if (i == this.banUsersRow) {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights14 = this.adminRights;
                        z = !tL_chatAdminRights14.ban_users;
                        tL_chatAdminRights14.ban_users = z;
                    } else if (i == this.startVoiceChatRow) {
                        TLRPC.TL_chatAdminRights tL_chatAdminRights15 = this.adminRights;
                        z = !tL_chatAdminRights15.manage_call;
                        tL_chatAdminRights15.manage_call = z;
                    } else if (i == this.manageTopicsRow) {
                        int i11 = this.currentType;
                        if (i11 == 0 || i11 == 2) {
                            TLRPC.TL_chatAdminRights tL_chatAdminRights16 = this.adminRights;
                            z = !tL_chatAdminRights16.manage_topics;
                            tL_chatAdminRights16.manage_topics = z;
                        } else {
                            TLRPC.TL_chatBannedRights tL_chatBannedRights15 = this.bannedRights;
                            z = !tL_chatBannedRights15.manage_topics;
                            tL_chatBannedRights15.manage_topics = z;
                        }
                    } else if (i == this.addUsersRow) {
                        int i12 = this.currentType;
                        if (i12 == 0 || i12 == 2) {
                            TLRPC.TL_chatAdminRights tL_chatAdminRights17 = this.adminRights;
                            z = !tL_chatAdminRights17.invite_users;
                            tL_chatAdminRights17.invite_users = z;
                        } else {
                            TLRPC.TL_chatBannedRights tL_chatBannedRights16 = this.bannedRights;
                            z = !tL_chatBannedRights16.invite_users;
                            tL_chatBannedRights16.invite_users = z;
                        }
                    } else if (i == this.pinMessagesRow) {
                        int i13 = this.currentType;
                        if (i13 == 0 || i13 == 2) {
                            TLRPC.TL_chatAdminRights tL_chatAdminRights18 = this.adminRights;
                            z = !tL_chatAdminRights18.pin_messages;
                            tL_chatAdminRights18.pin_messages = z;
                        } else {
                            TLRPC.TL_chatBannedRights tL_chatBannedRights17 = this.bannedRights;
                            z = !tL_chatBannedRights17.pin_messages;
                            tL_chatBannedRights17.pin_messages = z;
                        }
                    } else if (i == this.editTagsRow) {
                        int i14 = this.currentType;
                        if (i14 == 0 || i14 == 2) {
                            TLRPC.TL_chatAdminRights tL_chatAdminRights19 = this.adminRights;
                            z = !tL_chatAdminRights19.manage_ranks;
                            tL_chatAdminRights19.manage_ranks = z;
                        } else {
                            TLRPC.TL_chatBannedRights tL_chatBannedRights18 = this.bannedRights;
                            z = !tL_chatBannedRights18.edit_rank;
                            tL_chatBannedRights18.edit_rank = z;
                        }
                    } else if (this.currentType == 1 && this.bannedRights != null) {
                        boolean zIsChecked2 = textCheckCell2.isChecked();
                        if (i == this.sendMessagesRow) {
                            TLRPC.TL_chatBannedRights tL_chatBannedRights19 = this.bannedRights;
                            boolean z5 = !tL_chatBannedRights19.send_plain;
                            tL_chatBannedRights19.send_plain = z5;
                            zIsChecked = z5;
                        }
                        if (zIsChecked2) {
                            TLRPC.TL_chatBannedRights tL_chatBannedRights20 = this.bannedRights;
                            if ((!tL_chatBannedRights20.send_plain || !tL_chatBannedRights20.embed_links || !tL_chatBannedRights20.send_inline || !tL_chatBannedRights20.send_photos || !tL_chatBannedRights20.send_videos || !tL_chatBannedRights20.send_audios || !tL_chatBannedRights20.send_docs || !tL_chatBannedRights20.send_voices || !tL_chatBannedRights20.send_roundvideos || !tL_chatBannedRights20.send_polls) && tL_chatBannedRights20.view_messages) {
                                tL_chatBannedRights20.view_messages = false;
                            }
                        }
                        int i15 = this.embedLinksRow;
                        if (i15 >= 0) {
                            this.listViewAdapter.notifyItemChanged(i15);
                        }
                        int i16 = this.sendMediaRow;
                        if (i16 >= 0) {
                            this.listViewAdapter.notifyItemChanged(i16);
                        }
                    }
                    zIsChecked = z;
                }
                if (this.currentType == 2) {
                    if (this.asAdmin && zIsChecked) {
                        z4 = true;
                    }
                    textCheckCell2.setChecked(z4);
                }
                updateRows(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(BottomSheet.Builder builder, View view) {
        int iIntValue = ((Integer) view.getTag()).intValue();
        if (iIntValue == 0) {
            this.bannedRights.until_date = 0;
            this.listViewAdapter.notifyItemChanged(this.untilDateRow);
        } else if (iIntValue == 1) {
            this.bannedRights.until_date = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() + 86400;
            this.listViewAdapter.notifyItemChanged(this.untilDateRow);
        } else if (iIntValue == 2) {
            this.bannedRights.until_date = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() + 604800;
            this.listViewAdapter.notifyItemChanged(this.untilDateRow);
        } else if (iIntValue == 3) {
            this.bannedRights.until_date = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() + 2592000;
            this.listViewAdapter.notifyItemChanged(this.untilDateRow);
        } else if (iIntValue == 4) {
            Calendar calendar = Calendar.getInstance();
            try {
                DatePickerDialog datePickerDialog = new DatePickerDialog(getParentActivity(), new DatePickerDialog.OnDateSetListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda11
                    @Override // android.app.DatePickerDialog.OnDateSetListener
                    public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                        this.f$0.lambda$createView$2(datePicker, i, i2, i3);
                    }
                }, calendar.get(1), calendar.get(2), calendar.get(5));
                final DatePicker datePicker = datePickerDialog.getDatePicker();
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTimeInMillis(System.currentTimeMillis());
                calendar2.set(11, calendar2.getMinimum(11));
                calendar2.set(12, calendar2.getMinimum(12));
                calendar2.set(13, calendar2.getMinimum(13));
                calendar2.set(14, calendar2.getMinimum(14));
                datePicker.setMinDate(calendar2.getTimeInMillis());
                calendar2.setTimeInMillis(System.currentTimeMillis() + 31536000000L);
                calendar2.set(11, calendar2.getMaximum(11));
                calendar2.set(12, calendar2.getMaximum(12));
                calendar2.set(13, calendar2.getMaximum(13));
                calendar2.set(14, calendar2.getMaximum(14));
                datePicker.setMaxDate(calendar2.getTimeInMillis());
                datePickerDialog.setButton(-1, LocaleController.getString(C2888R.string.Set), datePickerDialog);
                datePickerDialog.setButton(-2, LocaleController.getString(C2888R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda12
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        ChatRightsEditActivity.m8215$r8$lambda$XGcFDpfrPJk_cEX0SQrzTbpuI(dialogInterface, i);
                    }
                });
                datePickerDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda13
                    @Override // android.content.DialogInterface.OnShowListener
                    public final void onShow(DialogInterface dialogInterface) {
                        ChatRightsEditActivity.$r8$lambda$zfqikcY5TEg_U6UfwCg8gxW60f0(datePicker, dialogInterface);
                    }
                });
                showDialog(datePickerDialog);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
        builder.getDismissRunnable().run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(DatePicker datePicker, int i, int i2, int i3) {
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.set(i, i2, i3);
        final int time = (int) (calendar.getTime().getTime() / 1000);
        try {
            TimePickerDialog timePickerDialog = new TimePickerDialog(getParentActivity(), new TimePickerDialog.OnTimeSetListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda19
                @Override // android.app.TimePickerDialog.OnTimeSetListener
                public final void onTimeSet(TimePicker timePicker, int i4, int i5) {
                    this.f$0.lambda$createView$0(time, timePicker, i4, i5);
                }
            }, 0, 0, true);
            timePickerDialog.setButton(-1, LocaleController.getString(C2888R.string.Set), timePickerDialog);
            timePickerDialog.setButton(-2, LocaleController.getString(C2888R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda20
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i4) {
                    ChatRightsEditActivity.$r8$lambda$Q3jDeh5uayCpzn49ZrZfQ7NJ9q0(dialogInterface, i4);
                }
            });
            showDialog(timePickerDialog);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(int i, TimePicker timePicker, int i2, int i3) {
        this.bannedRights.until_date = i + (i2 * 3600) + (i3 * 60);
        this.listViewAdapter.notifyItemChanged(this.untilDateRow);
    }

    public static /* synthetic */ void $r8$lambda$zfqikcY5TEg_U6UfwCg8gxW60f0(DatePicker datePicker, DialogInterface dialogInterface) {
        int childCount = datePicker.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = datePicker.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            layoutParams.width = -1;
            childAt.setLayoutParams(layoutParams);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listViewAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
    }

    private boolean isDefaultAdminRights() {
        TLRPC.TL_chatAdminRights tL_chatAdminRights = this.adminRights;
        boolean z = tL_chatAdminRights.change_info;
        if (z && tL_chatAdminRights.delete_messages && tL_chatAdminRights.ban_users && tL_chatAdminRights.invite_users && tL_chatAdminRights.pin_messages && tL_chatAdminRights.manage_ranks && ((!this.isForum || tL_chatAdminRights.manage_topics) && tL_chatAdminRights.manage_call && !tL_chatAdminRights.add_admins && !tL_chatAdminRights.anonymous)) {
            return true;
        }
        if (z || tL_chatAdminRights.delete_messages || tL_chatAdminRights.ban_users || tL_chatAdminRights.invite_users || tL_chatAdminRights.pin_messages || tL_chatAdminRights.manage_ranks) {
            return false;
        }
        return ((this.isForum && tL_chatAdminRights.manage_topics) || tL_chatAdminRights.manage_call || tL_chatAdminRights.add_admins || tL_chatAdminRights.anonymous) ? false : true;
    }

    private boolean hasAllAdminRights() {
        if (this.isChannel) {
            TLRPC.TL_chatAdminRights tL_chatAdminRights = this.adminRights;
            return tL_chatAdminRights.change_info && tL_chatAdminRights.post_messages && tL_chatAdminRights.edit_messages && tL_chatAdminRights.delete_messages && tL_chatAdminRights.invite_users && tL_chatAdminRights.add_admins && tL_chatAdminRights.manage_call && tL_chatAdminRights.post_stories && tL_chatAdminRights.edit_stories && tL_chatAdminRights.delete_stories && tL_chatAdminRights.manage_direct_messages;
        }
        TLRPC.TL_chatAdminRights tL_chatAdminRights2 = this.adminRights;
        return tL_chatAdminRights2.change_info && tL_chatAdminRights2.delete_messages && tL_chatAdminRights2.ban_users && tL_chatAdminRights2.invite_users && tL_chatAdminRights2.pin_messages && tL_chatAdminRights2.manage_ranks && tL_chatAdminRights2.add_admins && tL_chatAdminRights2.manage_call && (!this.isForum || tL_chatAdminRights2.manage_topics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initTransfer, reason: merged with bridge method [inline-methods] */
    public void lambda$initTransfer$8(final TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final TwoStepVerificationActivity twoStepVerificationActivity) {
        if (getParentActivity() == null) {
            return;
        }
        if (inputCheckPasswordSRP != null && !ChatObject.isChannel(this.currentChat)) {
            MessagesController.getInstance(this.currentAccount).convertToMegaGroup(getParentActivity(), this.chatId, this, new MessagesStorage.LongCallback() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda14
                @Override // org.telegram.messenger.MessagesStorage.LongCallback
                public final void run(long j) {
                    this.f$0.lambda$initTransfer$7(inputCheckPasswordSRP, twoStepVerificationActivity, j);
                }
            });
            return;
        }
        final TLRPC.TL_channels_editCreator tL_channels_editCreator = new TLRPC.TL_channels_editCreator();
        if (ChatObject.isChannel(this.currentChat)) {
            TLRPC.TL_inputChannel tL_inputChannel = new TLRPC.TL_inputChannel();
            tL_channels_editCreator.channel = tL_inputChannel;
            TLRPC.Chat chat = this.currentChat;
            tL_inputChannel.channel_id = chat.f1660id;
            tL_inputChannel.access_hash = chat.access_hash;
        } else {
            tL_channels_editCreator.channel = new TLRPC.TL_inputChannelEmpty();
        }
        tL_channels_editCreator.password = inputCheckPasswordSRP != null ? inputCheckPasswordSRP : new TLRPC.TL_inputCheckPasswordEmpty();
        tL_channels_editCreator.user_id = getMessagesController().getInputUser(this.currentUser);
        getConnectionsManager().sendRequest(tL_channels_editCreator, new RequestDelegate() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda15
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$initTransfer$14(inputCheckPasswordSRP, twoStepVerificationActivity, tL_channels_editCreator, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$7(TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, TwoStepVerificationActivity twoStepVerificationActivity, long j) {
        if (j != 0) {
            this.chatId = j;
            this.currentChat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
            lambda$initTransfer$8(inputCheckPasswordSRP, twoStepVerificationActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$14(final TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final TwoStepVerificationActivity twoStepVerificationActivity, final TLRPC.TL_channels_editCreator tL_channels_editCreator, TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initTransfer$13(tL_error, inputCheckPasswordSRP, twoStepVerificationActivity, tL_channels_editCreator);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$13(TLRPC.TL_error tL_error, TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final TwoStepVerificationActivity twoStepVerificationActivity, TLRPC.TL_channels_editCreator tL_channels_editCreator) {
        int i;
        if (tL_error == null) {
            if (inputCheckPasswordSRP != null) {
                this.delegate.didChangeOwner(this.currentUser);
                removeSelfFromStack();
                twoStepVerificationActivity.needHideProgress();
                twoStepVerificationActivity.finishFragment();
                return;
            }
            return;
        }
        if (getParentActivity() == null) {
            return;
        }
        if ("PASSWORD_HASH_INVALID".equals(tL_error.text)) {
            if (inputCheckPasswordSRP == null) {
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                if (this.isChannel) {
                    builder.setTitle(LocaleController.getString(C2888R.string.EditAdminChannelTransfer));
                } else {
                    builder.setTitle(LocaleController.getString(C2888R.string.EditAdminGroupTransfer));
                }
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.EditAdminTransferReadyAlertText, this.currentChat.title, UserObject.getFirstName(this.currentUser))));
                builder.setPositiveButton(LocaleController.getString(C2888R.string.EditAdminTransferChangeOwner), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda22
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$initTransfer$9(alertDialog, i2);
                    }
                });
                builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
                showDialog(builder.create());
                return;
            }
            return;
        }
        if ("PASSWORD_MISSING".equals(tL_error.text) || tL_error.text.startsWith("PASSWORD_TOO_FRESH_") || tL_error.text.startsWith("SESSION_TOO_FRESH_")) {
            if (twoStepVerificationActivity != null) {
                twoStepVerificationActivity.needHideProgress();
            }
            AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity());
            builder2.setTitle(LocaleController.getString(C2888R.string.EditAdminTransferAlertTitle));
            LinearLayout linearLayout = new LinearLayout(getParentActivity());
            linearLayout.setPadding(AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(24.0f), 0);
            linearLayout.setOrientation(1);
            builder2.setView(linearLayout);
            TextView textView = new TextView(getParentActivity());
            int i2 = Theme.key_dialogTextBlack;
            textView.setTextColor(Theme.getColor(i2));
            textView.setTextSize(1, 16.0f);
            textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            if (this.isChannel) {
                textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("EditChannelAdminTransferAlertText", C2888R.string.EditChannelAdminTransferAlertText, UserObject.getFirstName(this.currentUser))));
            } else {
                textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("EditAdminTransferAlertText", C2888R.string.EditAdminTransferAlertText, UserObject.getFirstName(this.currentUser))));
            }
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
            LinearLayout linearLayout2 = new LinearLayout(getParentActivity());
            linearLayout2.setOrientation(0);
            linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
            ImageView imageView = new ImageView(getParentActivity());
            imageView.setImageResource(C2888R.drawable.list_circle);
            imageView.setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(11.0f) : 0, AndroidUtilities.m1124dp(9.0f), LocaleController.isRTL ? 0 : AndroidUtilities.m1124dp(11.0f), 0);
            int color = Theme.getColor(i2);
            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
            imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
            TextView textView2 = new TextView(getParentActivity());
            textView2.setTextColor(Theme.getColor(i2));
            textView2.setTextSize(1, 16.0f);
            textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.EditAdminTransferAlertText1)));
            if (LocaleController.isRTL) {
                linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
                linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2, 5));
            } else {
                linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2));
                linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
            }
            LinearLayout linearLayout3 = new LinearLayout(getParentActivity());
            linearLayout3.setOrientation(0);
            linearLayout.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
            ImageView imageView2 = new ImageView(getParentActivity());
            imageView2.setImageResource(C2888R.drawable.list_circle);
            imageView2.setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(11.0f) : 0, AndroidUtilities.m1124dp(9.0f), LocaleController.isRTL ? 0 : AndroidUtilities.m1124dp(11.0f), 0);
            imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), mode));
            TextView textView3 = new TextView(getParentActivity());
            textView3.setTextColor(Theme.getColor(i2));
            textView3.setTextSize(1, 16.0f);
            textView3.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            textView3.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.EditAdminTransferAlertText2)));
            if (LocaleController.isRTL) {
                linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
                i = 5;
                linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2, 5));
            } else {
                i = 5;
                linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2));
                linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
            }
            if ("PASSWORD_MISSING".equals(tL_error.text)) {
                builder2.setPositiveButton(LocaleController.getString(C2888R.string.EditAdminTransferSetPassword), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda23
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i3) {
                        this.f$0.lambda$initTransfer$10(alertDialog, i3);
                    }
                });
                builder2.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            } else {
                TextView textView4 = new TextView(getParentActivity());
                textView4.setTextColor(Theme.getColor(i2));
                textView4.setTextSize(1, 16.0f);
                if (!LocaleController.isRTL) {
                    i = 3;
                }
                textView4.setGravity(i | 48);
                textView4.setText(LocaleController.getString(C2888R.string.EditAdminTransferAlertText3));
                linearLayout.addView(textView4, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
                builder2.setNegativeButton(LocaleController.getString(C2888R.string.f1606OK), null);
            }
            showDialog(builder2.create());
            return;
        }
        if ("SRP_ID_INVALID".equals(tL_error.text)) {
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda24
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error2) {
                    this.f$0.lambda$initTransfer$12(twoStepVerificationActivity, tLObject, tL_error2);
                }
            }, 8);
            return;
        }
        if (tL_error.text.equals("CHANNELS_TOO_MUCH")) {
            if (getParentActivity() != null && !AccountInstance.getInstance(this.currentAccount).getUserConfig().isPremium()) {
                showDialog(new LimitReachedBottomSheet(this, getParentActivity(), 5, this.currentAccount, null));
                return;
            } else {
                presentFragment(new TooManyCommunitiesActivity(1));
                return;
            }
        }
        if (twoStepVerificationActivity != null) {
            twoStepVerificationActivity.needHideProgress();
            twoStepVerificationActivity.finishFragment();
        }
        AlertsCreator.showAddUserAlert(tL_error.text, this, this.isChannel, tL_channels_editCreator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$9(AlertDialog alertDialog, int i) {
        final TwoStepVerificationActivity twoStepVerificationActivity = new TwoStepVerificationActivity();
        twoStepVerificationActivity.setDelegate(0, new TwoStepVerificationActivity.TwoStepVerificationActivityDelegate() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda26
            @Override // org.telegram.ui.TwoStepVerificationActivity.TwoStepVerificationActivityDelegate
            public final void didEnterPassword(TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
                this.f$0.lambda$initTransfer$8(twoStepVerificationActivity, inputCheckPasswordSRP);
            }
        });
        presentFragment(twoStepVerificationActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$10(AlertDialog alertDialog, int i) {
        presentFragment(new TwoStepVerificationSetupActivity(6, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$12(final TwoStepVerificationActivity twoStepVerificationActivity, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initTransfer$11(tL_error, tLObject, twoStepVerificationActivity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$11(TLRPC.TL_error tL_error, TLObject tLObject, TwoStepVerificationActivity twoStepVerificationActivity) {
        if (tL_error == null) {
            TL_account.Password password = (TL_account.Password) tLObject;
            twoStepVerificationActivity.setCurrentPasswordInfo(null, password);
            TwoStepVerificationActivity.initPasswordNewAlgo(password);
            lambda$initTransfer$8(twoStepVerificationActivity.getNewSrpPassword(), twoStepVerificationActivity);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.dialogDeleted);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.dialogDeleted);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.dialogDeleted) {
            if ((-this.chatId) == ((Long) objArr[0]).longValue()) {
                INavigationLayout iNavigationLayout = this.parentLayout;
                if (iNavigationLayout != null && iNavigationLayout.getLastFragment() == this) {
                    finishFragment();
                } else {
                    removeSelfFromStack();
                }
            }
        }
    }

    private void updateRows(boolean z) {
        int i;
        int i2;
        int iMin = Math.min(this.transferOwnerShadowRow, this.transferOwnerRow);
        this.manageRow = -1;
        this.changeInfoRow = -1;
        this.postMessagesRow = -1;
        this.manageDirectRow = -1;
        this.editMesagesRow = -1;
        this.deleteMessagesRow = -1;
        this.addAdminsRow = -1;
        this.anonymousRow = -1;
        this.banUsersRow = -1;
        this.addUsersRow = -1;
        this.pinMessagesRow = -1;
        this.editTagsRow = -1;
        this.rightsShadowRow = -1;
        this.removeAdminRow = -1;
        this.removeAdminShadowRow = -1;
        this.cantEditInfoRow = -1;
        this.transferOwnerShadowRow = -1;
        this.transferOwnerRow = -1;
        this.rankHeaderRow = -1;
        this.rankRow = -1;
        this.rankInfoRow = -1;
        this.sendMessagesRow = -1;
        this.sendMediaRow = -1;
        this.channelMessagesRow = -1;
        this.channelPostMessagesRow = -1;
        this.channelEditMessagesRow = -1;
        this.channelDeleteMessagesRow = -1;
        this.channelStoriesRow = -1;
        this.channelPostStoriesRow = -1;
        this.channelEditStoriesRow = -1;
        this.channelDeleteStoriesRow = -1;
        this.sendPhotosRow = -1;
        this.sendVideosRow = -1;
        this.sendMusicRow = -1;
        this.sendFilesRow = -1;
        this.sendVoiceRow = -1;
        this.sendRoundRow = -1;
        this.sendStickersRow = -1;
        this.sendPollsRow = -1;
        this.embedLinksRow = -1;
        this.startVoiceChatRow = -1;
        this.untilSectionRow = -1;
        this.untilDateRow = -1;
        this.addBotButtonRow = -1;
        this.manageTopicsRow = -1;
        this.rowCount = 3;
        this.permissionsStartRow = 3;
        int i3 = this.currentType;
        if (i3 == 0 || i3 == 2) {
            if (this.isChannel) {
                int i4 = 3 + 1;
                this.changeInfoRow = 3;
                int i5 = i4 + 1;
                this.rowCount = i5;
                this.channelMessagesRow = i4;
                if (this.channelMessagesExpanded) {
                    this.channelPostMessagesRow = i5;
                    this.channelEditMessagesRow = i4 + 2;
                    this.rowCount = i4 + 4;
                    this.channelDeleteMessagesRow = i4 + 3;
                }
                int i6 = this.rowCount;
                int i7 = i6 + 1;
                this.rowCount = i7;
                this.channelStoriesRow = i6;
                if (this.channelStoriesExpanded) {
                    this.channelPostStoriesRow = i7;
                    this.channelEditStoriesRow = i6 + 2;
                    this.rowCount = i6 + 4;
                    this.channelDeleteStoriesRow = i6 + 3;
                }
                int i8 = this.rowCount;
                this.manageDirectRow = i8;
                this.addUsersRow = i8 + 1;
                this.startVoiceChatRow = i8 + 2;
                this.addAdminsRow = i8 + 3;
                this.rowCount = i8 + 5;
                this.banUsersRow = i8 + 4;
            } else {
                if (i3 == 2) {
                    this.rowCount = 3 + 1;
                    this.manageRow = 3;
                }
                int i9 = this.rowCount;
                this.changeInfoRow = i9;
                this.deleteMessagesRow = i9 + 1;
                this.banUsersRow = i9 + 2;
                this.addUsersRow = i9 + 3;
                int i10 = i9 + 5;
                this.rowCount = i10;
                this.pinMessagesRow = i9 + 4;
                if (i3 != 2) {
                    this.rowCount = i9 + 6;
                    this.editTagsRow = i10;
                }
                if (ChatObject.isChannel(this.currentChat)) {
                    int i11 = this.rowCount;
                    int i12 = i11 + 1;
                    this.rowCount = i12;
                    this.channelStoriesRow = i11;
                    if (this.channelStoriesExpanded) {
                        this.channelPostStoriesRow = i12;
                        this.channelEditStoriesRow = i11 + 2;
                        this.rowCount = i11 + 4;
                        this.channelDeleteStoriesRow = i11 + 3;
                    }
                }
                int i13 = this.rowCount;
                this.startVoiceChatRow = i13;
                this.addAdminsRow = i13 + 1;
                int i14 = i13 + 3;
                this.rowCount = i14;
                this.anonymousRow = i13 + 2;
                if (this.isForum) {
                    this.rowCount = i13 + 4;
                    this.manageTopicsRow = i14;
                }
            }
        } else if (i3 == 1) {
            int i15 = 3 + 1;
            this.sendMessagesRow = 3;
            int i16 = i15 + 1;
            this.rowCount = i16;
            this.sendMediaRow = i15;
            if (this.sendMediaExpanded) {
                this.sendPhotosRow = i16;
                this.sendVideosRow = i15 + 2;
                this.sendFilesRow = i15 + 3;
                this.sendMusicRow = i15 + 4;
                this.sendVoiceRow = i15 + 5;
                this.sendRoundRow = i15 + 6;
                this.sendStickersRow = i15 + 7;
                this.sendPollsRow = i15 + 8;
                this.rowCount = i15 + 10;
                this.embedLinksRow = i15 + 9;
            }
            int i17 = this.rowCount;
            this.addUsersRow = i17;
            this.pinMessagesRow = i17 + 1;
            this.editTagsRow = i17 + 2;
            int i18 = i17 + 4;
            this.rowCount = i18;
            this.changeInfoRow = i17 + 3;
            if (this.isForum) {
                this.rowCount = i17 + 5;
                this.manageTopicsRow = i18;
            }
            int i19 = this.rowCount;
            this.untilSectionRow = i19;
            this.rowCount = i19 + 2;
            this.untilDateRow = i19 + 1;
        }
        int i20 = this.rowCount;
        this.permissionsEndRow = i20;
        if (this.canEdit) {
            if (!this.isChannel && ((i2 = this.currentType) == 0 || ((i2 == 2 && this.asAdmin) || i2 == 1))) {
                this.rightsShadowRow = i20;
                this.rankRow = i20 + 1;
                this.rowCount = i20 + 3;
                this.rankInfoRow = i20 + 2;
            }
            TLRPC.Chat chat = this.currentChat;
            if (chat != null && chat.creator && this.currentType == 0 && hasAllAdminRights() && !this.currentUser.bot) {
                int i21 = this.rightsShadowRow;
                if (i21 == -1) {
                    int i22 = this.rowCount;
                    this.rowCount = i22 + 1;
                    this.transferOwnerShadowRow = i22;
                }
                int i23 = this.rowCount;
                int i24 = i23 + 1;
                this.rowCount = i24;
                this.transferOwnerRow = i23;
                if (i21 != -1) {
                    this.rowCount = i23 + 2;
                    this.transferOwnerShadowRow = i24;
                }
            }
            if (this.initialIsSet) {
                if (this.rightsShadowRow == -1) {
                    int i25 = this.rowCount;
                    this.rowCount = i25 + 1;
                    this.rightsShadowRow = i25;
                }
                int i26 = this.rowCount;
                this.removeAdminRow = i26;
                this.rowCount = i26 + 2;
                this.removeAdminShadowRow = i26 + 1;
            }
        } else if (this.currentType == 0) {
            if (!this.isChannel && (!this.currentRank.isEmpty() || (this.currentChat.creator && UserObject.isUserSelf(this.currentUser)))) {
                int i27 = this.rowCount;
                this.rightsShadowRow = i27;
                this.rowCount = i27 + 2;
                this.rankRow = i27 + 1;
                if (this.currentChat.creator && UserObject.isUserSelf(this.currentUser)) {
                    int i28 = this.rowCount;
                    this.rowCount = i28 + 1;
                    this.rankInfoRow = i28;
                } else {
                    int i29 = this.rowCount;
                    this.rowCount = i29 + 1;
                    this.cantEditInfoRow = i29;
                }
            } else {
                int i30 = this.rowCount;
                this.rowCount = i30 + 1;
                this.cantEditInfoRow = i30;
            }
        } else {
            this.rowCount = i20 + 1;
            this.rightsShadowRow = i20;
        }
        if (this.currentType == 2) {
            int i31 = this.rowCount;
            this.rowCount = i31 + 1;
            this.addBotButtonRow = i31;
        }
        if (z) {
            if (iMin == -1 && (i = this.transferOwnerShadowRow) != -1) {
                this.listViewAdapter.notifyItemRangeInserted(Math.min(i, this.transferOwnerRow), 2);
            } else {
                if (iMin == -1 || this.transferOwnerShadowRow != -1) {
                    return;
                }
                this.listViewAdapter.notifyItemRangeRemoved(iMin, 2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003e, code lost:
    
        if (r4.isDefaultAdminRights() == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDonePressed() {
        String string;
        String string2;
        String str;
        final ChatRightsEditActivity chatRightsEditActivity = this;
        if (chatRightsEditActivity.loading) {
            return;
        }
        int i = 2;
        boolean z = true;
        if (!ChatObject.isChannel(chatRightsEditActivity.currentChat)) {
            int i2 = chatRightsEditActivity.currentType;
            if (i2 != 1) {
                if (i2 == 0) {
                    if (chatRightsEditActivity.isDefaultAdminRights()) {
                        if (chatRightsEditActivity.rankRow != -1) {
                            String str2 = chatRightsEditActivity.currentRank;
                            if (str2.codePointCount(0, str2.length()) > 16) {
                            }
                        }
                    }
                }
                if (chatRightsEditActivity.currentType == 2) {
                    if (chatRightsEditActivity.currentRank == null) {
                    }
                }
            }
            MessagesController.getInstance(chatRightsEditActivity.currentAccount).convertToMegaGroup(chatRightsEditActivity.getParentActivity(), chatRightsEditActivity.chatId, chatRightsEditActivity, new MessagesStorage.LongCallback() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda5
                @Override // org.telegram.messenger.MessagesStorage.LongCallback
                public final void run(long j) {
                    this.f$0.lambda$onDonePressed$15(j);
                }
            });
            return;
        }
        if (chatRightsEditActivity.rankRow != -1 && (str = chatRightsEditActivity.currentRank) != null && str.codePointCount(0, str.length()) > 16) {
            chatRightsEditActivity.listView.smoothScrollToPosition(chatRightsEditActivity.rankRow);
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = chatRightsEditActivity.listView.findViewHolderForAdapterPosition(chatRightsEditActivity.rankRow);
            viewHolderFindViewHolderForAdapterPosition.itemView.performHapticFeedback(3, 2);
            AndroidUtilities.shakeView(viewHolderFindViewHolderForAdapterPosition.itemView);
            return;
        }
        int i3 = chatRightsEditActivity.currentType;
        if (i3 == 0 || i3 == 2) {
            boolean z2 = chatRightsEditActivity.isChannel;
            if (z2) {
                TLRPC.TL_chatAdminRights tL_chatAdminRights = chatRightsEditActivity.adminRights;
                tL_chatAdminRights.pin_messages = false;
                tL_chatAdminRights.manage_ranks = false;
            } else {
                TLRPC.TL_chatAdminRights tL_chatAdminRights2 = chatRightsEditActivity.adminRights;
                tL_chatAdminRights2.edit_messages = false;
                tL_chatAdminRights2.post_messages = false;
            }
            TLRPC.TL_chatAdminRights tL_chatAdminRights3 = chatRightsEditActivity.adminRights;
            if (!tL_chatAdminRights3.change_info && !tL_chatAdminRights3.post_messages && !tL_chatAdminRights3.edit_messages && !tL_chatAdminRights3.manage_direct_messages && !tL_chatAdminRights3.delete_messages && !tL_chatAdminRights3.ban_users && !tL_chatAdminRights3.invite_users && ((!chatRightsEditActivity.isForum || !tL_chatAdminRights3.manage_topics) && !tL_chatAdminRights3.pin_messages && !tL_chatAdminRights3.manage_ranks && !tL_chatAdminRights3.add_admins && !tL_chatAdminRights3.anonymous && !tL_chatAdminRights3.manage_call && (!z2 || (!tL_chatAdminRights3.post_stories && !tL_chatAdminRights3.edit_stories && !tL_chatAdminRights3.delete_stories)))) {
                tL_chatAdminRights3.other = true;
            } else {
                tL_chatAdminRights3.other = false;
            }
        }
        if (i3 == 0) {
            boolean z3 = chatRightsEditActivity.delegate == null;
            chatRightsEditActivity.setLoading(true);
            MessagesController.getInstance(chatRightsEditActivity.currentAccount).setUserAdminRole(chatRightsEditActivity.chatId, chatRightsEditActivity.currentUser, chatRightsEditActivity.adminRights, chatRightsEditActivity.currentRank, chatRightsEditActivity.isChannel, chatRightsEditActivity, chatRightsEditActivity.isAddingNew, false, null, new Runnable() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onDonePressed$16();
                }
            }, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC.TL_error tL_error) {
                    return this.f$0.lambda$onDonePressed$17(tL_error);
                }
            });
            chatRightsEditActivity = chatRightsEditActivity;
            z = z3;
        } else {
            String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (i3 == 1) {
                if (chatRightsEditActivity.rankRow >= 0) {
                    TLRPC.TL_messages_editChatParticipantRank tL_messages_editChatParticipantRank = new TLRPC.TL_messages_editChatParticipantRank();
                    tL_messages_editChatParticipantRank.peer = MessagesController.getInputPeer(chatRightsEditActivity.currentChat);
                    tL_messages_editChatParticipantRank.participant = MessagesController.getInputPeer(chatRightsEditActivity.currentUser);
                    String str4 = chatRightsEditActivity.currentRank;
                    if (str4 != null) {
                        str3 = str4;
                    }
                    tL_messages_editChatParticipantRank.rank = str3;
                    ConnectionsManager.getInstance(chatRightsEditActivity.currentAccount).sendRequest(tL_messages_editChatParticipantRank, null);
                }
                MessagesController.getInstance(chatRightsEditActivity.currentAccount).setParticipantBannedRole(chatRightsEditActivity.chatId, chatRightsEditActivity.currentUser, null, chatRightsEditActivity.bannedRights, chatRightsEditActivity.isChannel, chatRightsEditActivity.getFragmentForAlert(1));
                TLRPC.TL_chatBannedRights tL_chatBannedRights = chatRightsEditActivity.bannedRights;
                if (tL_chatBannedRights.send_messages || tL_chatBannedRights.send_stickers || tL_chatBannedRights.embed_links || tL_chatBannedRights.send_media || tL_chatBannedRights.send_gifs || tL_chatBannedRights.send_games || tL_chatBannedRights.send_inline) {
                    i = 1;
                } else {
                    tL_chatBannedRights.until_date = 0;
                }
                ChatRightsEditActivityDelegate chatRightsEditActivityDelegate = chatRightsEditActivity.delegate;
                if (chatRightsEditActivityDelegate != null) {
                    chatRightsEditActivityDelegate.didSetRights(i, chatRightsEditActivity.adminRights, tL_chatBannedRights, chatRightsEditActivity.currentRank);
                }
            } else if (i3 == 2) {
                AlertDialog.Builder builder = new AlertDialog.Builder(chatRightsEditActivity.getParentActivity());
                if (chatRightsEditActivity.asAdmin) {
                    string = LocaleController.getString(C2888R.string.AddBotAdmin);
                } else {
                    string = LocaleController.getString(C2888R.string.AddBot);
                }
                builder.setTitle(string);
                boolean z4 = ChatObject.isChannel(chatRightsEditActivity.currentChat) && !chatRightsEditActivity.currentChat.megagroup;
                TLRPC.Chat chat = chatRightsEditActivity.currentChat;
                if (chat != null) {
                    str3 = chat.title;
                }
                if (!chatRightsEditActivity.asAdmin) {
                    string2 = LocaleController.formatString(C2888R.string.AddMembersAlertNamesText, UserObject.getUserName(chatRightsEditActivity.currentUser), str3);
                } else if (z4) {
                    string2 = LocaleController.formatString(C2888R.string.AddBotMessageAdminChannel, str3);
                } else {
                    string2 = LocaleController.formatString(C2888R.string.AddBotMessageAdminGroup, str3);
                }
                builder.setMessage(AndroidUtilities.replaceTags(string2));
                builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
                builder.setPositiveButton(LocaleController.getString(chatRightsEditActivity.asAdmin ? C2888R.string.AddAsAdmin : C2888R.string.AddBot), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda8
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i4) {
                        this.f$0.lambda$onDonePressed$21(alertDialog, i4);
                    }
                });
                chatRightsEditActivity.showDialog(builder.create());
                z = false;
            }
        }
        if (z) {
            chatRightsEditActivity.finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDonePressed$15(long j) {
        if (j != 0) {
            this.chatId = j;
            this.currentChat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
            onDonePressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDonePressed$16() {
        ChatRightsEditActivityDelegate chatRightsEditActivityDelegate = this.delegate;
        if (chatRightsEditActivityDelegate != null) {
            TLRPC.TL_chatAdminRights tL_chatAdminRights = this.adminRights;
            chatRightsEditActivityDelegate.didSetRights((tL_chatAdminRights.change_info || tL_chatAdminRights.post_messages || tL_chatAdminRights.manage_direct_messages || tL_chatAdminRights.edit_messages || tL_chatAdminRights.delete_messages || tL_chatAdminRights.ban_users || tL_chatAdminRights.invite_users || (this.isForum && tL_chatAdminRights.manage_topics) || tL_chatAdminRights.pin_messages || tL_chatAdminRights.manage_ranks || tL_chatAdminRights.add_admins || tL_chatAdminRights.anonymous || tL_chatAdminRights.manage_call || ((this.isChannel && (tL_chatAdminRights.post_stories || tL_chatAdminRights.edit_stories || tL_chatAdminRights.delete_stories)) || tL_chatAdminRights.other)) ? 1 : 0, tL_chatAdminRights, this.bannedRights, this.currentRank);
            finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onDonePressed$17(TLRPC.TL_error tL_error) {
        setLoading(false);
        if (tL_error == null || !"USER_PRIVACY_RESTRICTED".equals(tL_error.text)) {
            return true;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(this, getParentActivity(), 11, this.currentAccount, getResourceProvider());
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.currentUser);
        limitReachedBottomSheet.setRestrictedUsers(this.currentChat, arrayList, null, null, null);
        limitReachedBottomSheet.show();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDonePressed$21(AlertDialog alertDialog, int i) {
        setLoading(true);
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onDonePressed$18();
            }
        };
        if (this.asAdmin || this.initialAsAdmin) {
            getMessagesController().setUserAdminRole(this.currentChat.f1660id, this.currentUser, this.asAdmin ? this.adminRights : emptyAdminRights(false), this.currentRank, false, this, this.isAddingNew, this.asAdmin, this.botHash, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda17
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC.TL_error tL_error) {
                    return this.f$0.lambda$onDonePressed$19(tL_error);
                }
            });
        } else {
            getMessagesController().addUserToChat(this.currentChat.f1660id, this.currentUser, 0, this.botHash, this, true, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda18
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC.TL_error tL_error) {
                    return this.f$0.lambda$onDonePressed$20(tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDonePressed$18() {
        ChatRightsEditActivityDelegate chatRightsEditActivityDelegate = this.delegate;
        if (chatRightsEditActivityDelegate != null) {
            chatRightsEditActivityDelegate.didSetRights(0, this.asAdmin ? this.adminRights : null, null, this.currentRank);
        }
        this.closingKeyboardAfterFinish = true;
        Bundle bundle = new Bundle();
        bundle.putBoolean("scrollToTopOnResume", true);
        bundle.putLong("chat_id", this.currentChat.f1660id);
        if (!getMessagesController().checkCanOpenChat(bundle, this)) {
            setLoading(false);
            return;
        }
        ChatActivity chatActivity = new ChatActivity(bundle);
        presentFragment(chatActivity, true);
        if (BulletinFactory.canShowBulletin(chatActivity)) {
            boolean z = this.isAddingNew;
            if (z && this.asAdmin) {
                BulletinFactory.createAddedAsAdminBulletin(chatActivity, this.currentUser.first_name).show();
            } else {
                if (z || this.initialAsAdmin || !this.asAdmin) {
                    return;
                }
                BulletinFactory.createPromoteToAdminBulletin(chatActivity, this.currentUser.first_name).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onDonePressed$19(TLRPC.TL_error tL_error) {
        setLoading(false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onDonePressed$20(TLRPC.TL_error tL_error) {
        setLoading(false);
        return true;
    }

    public void setLoading(boolean z) {
        ValueAnimator valueAnimator = this.doneDrawableAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.loading = z;
        this.actionBar.getBackButton().setEnabled(!this.loading);
        CrossfadeDrawable crossfadeDrawable = this.doneDrawable;
        if (crossfadeDrawable != null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(crossfadeDrawable.getProgress(), this.loading ? 1.0f : 0.0f);
            this.doneDrawableAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda9
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$setLoading$22(valueAnimator2);
                }
            });
            this.doneDrawableAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChatRightsEditActivity.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    ChatRightsEditActivity.this.doneDrawable.setProgress(ChatRightsEditActivity.this.loading ? 1.0f : 0.0f);
                    ChatRightsEditActivity.this.doneDrawable.invalidateSelf();
                }
            });
            this.doneDrawableAnimator.setDuration((long) (Math.abs(this.doneDrawable.getProgress() - (this.loading ? 1.0f : 0.0f)) * 150.0f));
            this.doneDrawableAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setLoading$22(ValueAnimator valueAnimator) {
        this.doneDrawable.setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
        this.doneDrawable.invalidateSelf();
    }

    public void setDelegate(ChatRightsEditActivityDelegate chatRightsEditActivityDelegate) {
        this.delegate = chatRightsEditActivityDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkDiscard(boolean z) {
        boolean zEquals;
        int i = this.currentType;
        if (i == 2) {
            return true;
        }
        if (i == 1) {
            zEquals = this.currentBannedRights.equals(ChatObject.getBannedRightsString(this.bannedRights));
        } else {
            zEquals = this.initialRank.equals(this.currentRank);
        }
        if (!(!zEquals)) {
            return true;
        }
        if (z) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString(C2888R.string.UserRestrictionsApplyChanges));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("UserRestrictionsApplyChangesText", C2888R.string.UserRestrictionsApplyChangesText, MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chatId)).title)));
            builder.setPositiveButton(LocaleController.getString(C2888R.string.ApplyTheme), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$checkDiscard$23(alertDialog, i2);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2888R.string.PassportDiscard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$checkDiscard$24(alertDialog, i2);
                }
            });
            showDialog(builder.create());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$23(AlertDialog alertDialog, int i) {
        onDonePressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$24(AlertDialog alertDialog, int i) {
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextLeft(View view) {
        if (view instanceof HeaderCell) {
            HeaderCell headerCell = (HeaderCell) view;
            String str = this.currentRank;
            int iCodePointCount = 16 - (str != null ? str.codePointCount(0, str.length()) : 0);
            if (iCodePointCount <= 4.8f) {
                headerCell.setText2(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(iCodePointCount)));
                SimpleTextView textView2 = headerCell.getTextView2();
                int i = iCodePointCount < 0 ? Theme.key_text_RedRegular : Theme.key_windowBackgroundWhiteGrayText3;
                textView2.setTextColor(Theme.getColor(i));
                textView2.setTag(Integer.valueOf(i));
                return;
            }
            headerCell.setText2(_UrlKt.FRAGMENT_ENCODE_SET);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        return checkDiscard(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes6.dex */
    class ListAdapter extends RecyclerListView.SelectionAdapter {
        private boolean ignoreTextChange;
        private Context mContext;
        private final int VIEW_TYPE_USER_CELL = 0;
        private final int VIEW_TYPE_INFO_CELL = 1;
        private final int VIEW_TYPE_TRANSFER_CELL = 2;
        private final int VIEW_TYPE_HEADER_CELL = 3;
        private final int VIEW_TYPE_SWITCH_CELL = 4;
        private final int VIEW_TYPE_SHADOW_CELL = 5;
        private final int VIEW_TYPE_UNTIL_DATE_CELL = 6;
        private final int VIEW_TYPE_RANK_CELL = 7;
        private final int VIEW_TYPE_ADD_BOT_CELL = 8;
        private final int VIEW_TYPE_EXPANDABLE_SWITCH = 9;
        private final int VIEW_TYPE_INNER_CHECK = 10;
        private final int VIEW_TYPE_TAG_CELL = 11;

        public ListAdapter(Context context) {
            if (ChatRightsEditActivity.this.currentType == 2) {
                setHasStableIds(true);
            }
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            if (ChatRightsEditActivity.this.currentType == 2) {
                if (i == ChatRightsEditActivity.this.manageRow) {
                    return 1L;
                }
                if (i == ChatRightsEditActivity.this.changeInfoRow) {
                    return 2L;
                }
                if (i == ChatRightsEditActivity.this.postMessagesRow) {
                    return 3L;
                }
                if (i == ChatRightsEditActivity.this.editMesagesRow) {
                    return 4L;
                }
                if (i == ChatRightsEditActivity.this.deleteMessagesRow) {
                    return 5L;
                }
                if (i == ChatRightsEditActivity.this.addAdminsRow) {
                    return 6L;
                }
                if (i == ChatRightsEditActivity.this.anonymousRow) {
                    return 7L;
                }
                if (i == ChatRightsEditActivity.this.banUsersRow) {
                    return 8L;
                }
                if (i == ChatRightsEditActivity.this.addUsersRow) {
                    return 9L;
                }
                if (i == ChatRightsEditActivity.this.pinMessagesRow) {
                    return 10L;
                }
                if (i == ChatRightsEditActivity.this.rightsShadowRow) {
                    return 11L;
                }
                if (i == ChatRightsEditActivity.this.removeAdminRow) {
                    return 12L;
                }
                if (i == ChatRightsEditActivity.this.removeAdminShadowRow) {
                    return 13L;
                }
                if (i == ChatRightsEditActivity.this.cantEditInfoRow) {
                    return 14L;
                }
                if (i == ChatRightsEditActivity.this.transferOwnerShadowRow) {
                    return 15L;
                }
                if (i == ChatRightsEditActivity.this.transferOwnerRow) {
                    return 16L;
                }
                if (i == ChatRightsEditActivity.this.rankHeaderRow) {
                    return 17L;
                }
                if (i == ChatRightsEditActivity.this.rankRow) {
                    return 18L;
                }
                if (i == ChatRightsEditActivity.this.rankInfoRow) {
                    return 19L;
                }
                if (i == ChatRightsEditActivity.this.sendMessagesRow) {
                    return 20L;
                }
                if (i == ChatRightsEditActivity.this.sendPhotosRow) {
                    return 21L;
                }
                if (i == ChatRightsEditActivity.this.sendStickersRow) {
                    return 22L;
                }
                if (i == ChatRightsEditActivity.this.sendPollsRow) {
                    return 23L;
                }
                if (i == ChatRightsEditActivity.this.embedLinksRow) {
                    return 24L;
                }
                if (i == ChatRightsEditActivity.this.startVoiceChatRow) {
                    return 25L;
                }
                if (i == ChatRightsEditActivity.this.untilSectionRow) {
                    return 26L;
                }
                if (i == ChatRightsEditActivity.this.untilDateRow) {
                    return 27L;
                }
                if (i == ChatRightsEditActivity.this.addBotButtonRow) {
                    return 28L;
                }
                if (i == ChatRightsEditActivity.this.manageTopicsRow) {
                    return 29L;
                }
                if (i == ChatRightsEditActivity.this.sendVideosRow) {
                    return 30L;
                }
                if (i == ChatRightsEditActivity.this.sendFilesRow) {
                    return 31L;
                }
                if (i == ChatRightsEditActivity.this.sendMusicRow) {
                    return 32L;
                }
                if (i == ChatRightsEditActivity.this.sendVoiceRow) {
                    return 33L;
                }
                if (i == ChatRightsEditActivity.this.sendRoundRow) {
                    return 34L;
                }
                if (i == ChatRightsEditActivity.this.sendMediaRow) {
                    return 35L;
                }
                if (i == ChatRightsEditActivity.this.channelMessagesRow) {
                    return 36L;
                }
                if (i == ChatRightsEditActivity.this.channelPostMessagesRow) {
                    return 37L;
                }
                if (i == ChatRightsEditActivity.this.channelEditMessagesRow) {
                    return 38L;
                }
                if (i == ChatRightsEditActivity.this.channelDeleteMessagesRow) {
                    return 39L;
                }
                if (i == ChatRightsEditActivity.this.channelStoriesRow) {
                    return 40L;
                }
                if (i == ChatRightsEditActivity.this.channelPostStoriesRow) {
                    return 41L;
                }
                if (i == ChatRightsEditActivity.this.channelEditStoriesRow) {
                    return 42L;
                }
                if (i == ChatRightsEditActivity.this.channelDeleteStoriesRow) {
                    return 43L;
                }
                if (i == ChatRightsEditActivity.this.manageDirectRow) {
                    return 44L;
                }
                return i == ChatRightsEditActivity.this.editTagsRow ? 45L : 0L;
            }
            return super.getItemId(i);
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0 || (ChatRightsEditActivity.this.currentChat.creator && ((ChatRightsEditActivity.this.currentType == 0 || (ChatRightsEditActivity.this.currentType == 2 && ChatRightsEditActivity.this.asAdmin)) && itemViewType == 4 && viewHolder.getAdapterPosition() == ChatRightsEditActivity.this.anonymousRow))) {
                return true;
            }
            if (!ChatRightsEditActivity.this.canEdit) {
                return false;
            }
            if ((ChatRightsEditActivity.this.currentType == 0 || ChatRightsEditActivity.this.currentType == 2) && itemViewType == 4) {
                int adapterPosition = viewHolder.getAdapterPosition();
                if (adapterPosition == ChatRightsEditActivity.this.manageRow) {
                    return ChatRightsEditActivity.this.myAdminRights.add_admins || (ChatRightsEditActivity.this.currentChat != null && ChatRightsEditActivity.this.currentChat.creator);
                }
                if (ChatRightsEditActivity.this.currentType == 2 && !ChatRightsEditActivity.this.asAdmin) {
                    return false;
                }
                if (adapterPosition == ChatRightsEditActivity.this.changeInfoRow) {
                    return ChatRightsEditActivity.this.myAdminRights.change_info && (ChatRightsEditActivity.this.defaultBannedRights == null || ChatRightsEditActivity.this.defaultBannedRights.change_info || ChatRightsEditActivity.this.isChannel);
                }
                if (adapterPosition == ChatRightsEditActivity.this.postMessagesRow) {
                    return ChatRightsEditActivity.this.myAdminRights.post_messages;
                }
                if (adapterPosition == ChatRightsEditActivity.this.manageDirectRow) {
                    return ChatRightsEditActivity.this.myAdminRights.manage_direct_messages;
                }
                if (adapterPosition == ChatRightsEditActivity.this.editMesagesRow) {
                    return ChatRightsEditActivity.this.myAdminRights.edit_messages;
                }
                if (adapterPosition == ChatRightsEditActivity.this.deleteMessagesRow) {
                    return ChatRightsEditActivity.this.myAdminRights.delete_messages;
                }
                if (adapterPosition == ChatRightsEditActivity.this.startVoiceChatRow) {
                    return ChatRightsEditActivity.this.myAdminRights.manage_call;
                }
                if (adapterPosition == ChatRightsEditActivity.this.addAdminsRow) {
                    return ChatRightsEditActivity.this.myAdminRights.add_admins;
                }
                if (adapterPosition == ChatRightsEditActivity.this.anonymousRow) {
                    return ChatRightsEditActivity.this.myAdminRights.anonymous;
                }
                if (adapterPosition == ChatRightsEditActivity.this.banUsersRow) {
                    return ChatRightsEditActivity.this.myAdminRights.ban_users;
                }
                if (adapterPosition == ChatRightsEditActivity.this.addUsersRow) {
                    return ChatRightsEditActivity.this.myAdminRights.invite_users;
                }
                if (adapterPosition == ChatRightsEditActivity.this.pinMessagesRow) {
                    return ChatRightsEditActivity.this.myAdminRights.pin_messages && (ChatRightsEditActivity.this.defaultBannedRights == null || ChatRightsEditActivity.this.defaultBannedRights.pin_messages);
                }
                if (adapterPosition == ChatRightsEditActivity.this.editTagsRow) {
                    return ChatRightsEditActivity.this.myAdminRights.manage_ranks && (ChatRightsEditActivity.this.defaultBannedRights == null || ChatRightsEditActivity.this.defaultBannedRights.edit_rank);
                }
                if (adapterPosition == ChatRightsEditActivity.this.manageTopicsRow) {
                    return ChatRightsEditActivity.this.myAdminRights.manage_topics;
                }
                if (adapterPosition == ChatRightsEditActivity.this.channelPostStoriesRow) {
                    return ChatRightsEditActivity.this.myAdminRights.post_stories;
                }
                if (adapterPosition == ChatRightsEditActivity.this.channelEditStoriesRow) {
                    return ChatRightsEditActivity.this.myAdminRights.edit_stories;
                }
                if (adapterPosition == ChatRightsEditActivity.this.channelDeleteStoriesRow) {
                    return ChatRightsEditActivity.this.myAdminRights.delete_stories;
                }
            }
            return (itemViewType == 3 || itemViewType == 1 || itemViewType == 5 || itemViewType == 8 || itemViewType == 11) ? false : true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ChatRightsEditActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View headerCell;
            View view;
            View textInfoPrivacyCell;
            switch (i) {
                case 0:
                    UserCell2 userCell2 = new UserCell2(this.mContext, 4, 0);
                    userCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    view = userCell2;
                    textInfoPrivacyCell = view;
                    break;
                case 1:
                    textInfoPrivacyCell = new TextInfoPrivacyCell(this.mContext);
                    break;
                case 2:
                default:
                    TextSettingsCell textSettingsCell = new TextSettingsCell(this.mContext);
                    textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    textInfoPrivacyCell = textSettingsCell;
                    break;
                case 3:
                    headerCell = new HeaderCell(this.mContext, Theme.key_windowBackgroundWhiteBlueHeader, 21, 15, true);
                    headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    textInfoPrivacyCell = headerCell;
                    break;
                case 4:
                case 9:
                    TextCheckCell2 textCheckCell2 = new TextCheckCell2(this.mContext);
                    textCheckCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    textInfoPrivacyCell = textCheckCell2;
                    break;
                case 5:
                    textInfoPrivacyCell = new ShadowSectionCell(this.mContext);
                    break;
                case 6:
                    TextDetailCell textDetailCell = new TextDetailCell(this.mContext);
                    textDetailCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    textInfoPrivacyCell = textDetailCell;
                    break;
                case 7:
                    ChatRightsEditActivity chatRightsEditActivity = ChatRightsEditActivity.this;
                    PollEditTextCell pollEditTextCell = new PollEditTextCell(this.mContext, null);
                    chatRightsEditActivity.rankEditTextCell = pollEditTextCell;
                    pollEditTextCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    pollEditTextCell.addTextWatcher(new TextWatcher() { // from class: org.telegram.ui.ChatRightsEditActivity.ListAdapter.1
                        @Override // android.text.TextWatcher
                        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        }

                        @Override // android.text.TextWatcher
                        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                        }

                        @Override // android.text.TextWatcher
                        public void afterTextChanged(Editable editable) {
                            if (ListAdapter.this.ignoreTextChange) {
                                return;
                            }
                            ChatRightsEditActivity.this.currentRank = editable.toString();
                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = ChatRightsEditActivity.this.listView.findViewHolderForAdapterPosition(ChatRightsEditActivity.this.rankHeaderRow);
                            if (viewHolderFindViewHolderForAdapterPosition != null) {
                                ChatRightsEditActivity.this.setTextLeft(viewHolderFindViewHolderForAdapterPosition.itemView);
                            }
                        }
                    });
                    view = pollEditTextCell;
                    textInfoPrivacyCell = view;
                    break;
                case 8:
                    ChatRightsEditActivity.this.addBotButtonContainer = new FrameLayout(this.mContext);
                    FrameLayout frameLayout = ChatRightsEditActivity.this.addBotButtonContainer;
                    int i2 = Theme.key_windowBackgroundGray;
                    frameLayout.setBackgroundColor(Theme.getColor(i2));
                    ChatRightsEditActivity.this.addBotButton = new FrameLayout(this.mContext);
                    ChatRightsEditActivity.this.addBotButtonText = new AnimatedTextView(this.mContext, true, false, false);
                    ChatRightsEditActivity.this.addBotButtonText.setTypeface(AndroidUtilities.bold());
                    ChatRightsEditActivity.this.addBotButtonText.setTextColor(-1);
                    ChatRightsEditActivity.this.addBotButtonText.setTextSize(AndroidUtilities.m1124dp(14.0f));
                    ChatRightsEditActivity.this.addBotButtonText.setGravity(17);
                    AnimatedTextView animatedTextView = ChatRightsEditActivity.this.addBotButtonText;
                    StringBuilder sb = new StringBuilder();
                    sb.append(LocaleController.getString(C2888R.string.AddBotButton));
                    sb.append(" ");
                    sb.append(LocaleController.getString(ChatRightsEditActivity.this.asAdmin ? C2888R.string.AddBotButtonAsAdmin : C2888R.string.AddBotButtonAsMember));
                    animatedTextView.setText(sb.toString());
                    ChatRightsEditActivity.this.addBotButton.addView(ChatRightsEditActivity.this.addBotButtonText, LayoutHelper.createFrame(-2, -2, 17));
                    ChatRightsEditActivity.this.addBotButton.setBackground(Theme.AdaptiveRipple.filledRectByKey(Theme.key_featuredStickers_addButton, 4.0f));
                    ChatRightsEditActivity.this.addBotButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$onCreateViewHolder$0(view2);
                        }
                    });
                    ChatRightsEditActivity.this.addBotButtonContainer.addView(ChatRightsEditActivity.this.addBotButton, LayoutHelper.createFrame(-1, 48.0f, 119, 14.0f, 28.0f, 14.0f, 14.0f));
                    ChatRightsEditActivity.this.addBotButtonContainer.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                    View view2 = new View(this.mContext);
                    view2.setBackgroundColor(Theme.getColor(i2));
                    ChatRightsEditActivity.this.addBotButtonContainer.setClipChildren(false);
                    ChatRightsEditActivity.this.addBotButtonContainer.setClipToPadding(false);
                    ChatRightsEditActivity.this.addBotButtonContainer.addView(view2, LayoutHelper.createFrame(-1, 800.0f, 87, 0.0f, 0.0f, 0.0f, -800.0f));
                    textInfoPrivacyCell = ChatRightsEditActivity.this.addBotButtonContainer;
                    break;
                case 10:
                    CheckBoxCell checkBoxCell = new CheckBoxCell(this.mContext, 4, 21, ChatRightsEditActivity.this.getResourceProvider());
                    checkBoxCell.setPad(1);
                    checkBoxCell.getCheckBoxRound().setDrawBackgroundAsArc(14);
                    checkBoxCell.getCheckBoxRound().setColor(Theme.key_switch2TrackChecked, Theme.key_radioBackground, Theme.key_checkboxCheck);
                    checkBoxCell.setEnabled(true);
                    checkBoxCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    view = checkBoxCell;
                    textInfoPrivacyCell = view;
                    break;
                case 11:
                    headerCell = new TagEditCell(this.mContext, ((BaseFragment) ChatRightsEditActivity.this).currentAccount, -ChatRightsEditActivity.this.chatId, ((BaseFragment) ChatRightsEditActivity.this).resourceProvider);
                    textInfoPrivacyCell = headerCell;
                    break;
            }
            return new RecyclerListView.Holder(textInfoPrivacyCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(View view) {
            ChatRightsEditActivity.this.onDonePressed();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String string;
            String string2;
            String string3;
            String string4;
            switch (viewHolder.getItemViewType()) {
                case 0:
                    ((UserCell2) viewHolder.itemView).setData(ChatRightsEditActivity.this.currentUser, null, ChatRightsEditActivity.this.currentType == 2 ? LocaleController.getString(C2888R.string.Bot) : null, 0);
                    break;
                case 1:
                    TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    if (i == ChatRightsEditActivity.this.cantEditInfoRow) {
                        textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.EditAdminCantEdit));
                    } else if (i == ChatRightsEditActivity.this.rankInfoRow) {
                        if (UserObject.isUserSelf(ChatRightsEditActivity.this.currentUser) && ChatRightsEditActivity.this.currentChat.creator) {
                            string = LocaleController.getString(C2888R.string.ChannelCreator);
                        } else {
                            string = LocaleController.getString(C2888R.string.ChannelAdmin);
                        }
                        if (ChatRightsEditActivity.this.currentType == 0) {
                            string2 = LocaleController.formatString(C2888R.string.EditAdminRankInfo, string);
                        } else {
                            string2 = LocaleController.formatString(C2888R.string.EditMemberRankInfo, UserObject.getUserName(ChatRightsEditActivity.this.currentUser));
                        }
                        textInfoPrivacyCell.setText(string2);
                    }
                    break;
                case 2:
                    TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                    if (i == ChatRightsEditActivity.this.removeAdminRow) {
                        int i2 = Theme.key_text_RedRegular;
                        textSettingsCell.setTextColor(Theme.getColor(i2));
                        textSettingsCell.setTag(Integer.valueOf(i2));
                        if (ChatRightsEditActivity.this.currentType == 0) {
                            textSettingsCell.setText(LocaleController.getString(C2888R.string.EditAdminRemoveAdmin), false);
                        } else if (ChatRightsEditActivity.this.currentType == 1) {
                            textSettingsCell.setText(LocaleController.getString(C2888R.string.UserRestrictionsBlock), false);
                        }
                    } else if (i == ChatRightsEditActivity.this.transferOwnerRow) {
                        int i3 = Theme.key_windowBackgroundWhiteBlackText;
                        textSettingsCell.setTextColor(Theme.getColor(i3));
                        textSettingsCell.setTag(Integer.valueOf(i3));
                        if (ChatRightsEditActivity.this.isChannel) {
                            textSettingsCell.setText(LocaleController.getString(C2888R.string.EditAdminChannelTransfer), false);
                        } else {
                            textSettingsCell.setText(LocaleController.getString(C2888R.string.EditAdminGroupTransfer), false);
                        }
                    }
                    break;
                case 3:
                    HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                    if (i == 2) {
                        if (ChatRightsEditActivity.this.currentType == 2 || (ChatRightsEditActivity.this.currentUser != null && ChatRightsEditActivity.this.currentUser.bot)) {
                            headerCell.setText(LocaleController.getString(C2888R.string.BotRestrictionsCanDo));
                        } else if (ChatRightsEditActivity.this.currentType == 0) {
                            headerCell.setText(LocaleController.getString(C2888R.string.EditAdminWhatCanDo));
                        } else if (ChatRightsEditActivity.this.currentType == 1) {
                            headerCell.setText(LocaleController.getString(C2888R.string.UserRestrictionsCanDo));
                        }
                    } else if (i == ChatRightsEditActivity.this.rankHeaderRow) {
                        headerCell.setText(LocaleController.getString(C2888R.string.EditAdminRank));
                    }
                    break;
                case 4:
                case 9:
                    final TextCheckCell2 textCheckCell2 = (TextCheckCell2) viewHolder.itemView;
                    boolean z = ChatRightsEditActivity.this.currentType != 2 || ChatRightsEditActivity.this.asAdmin;
                    boolean z2 = ChatRightsEditActivity.this.currentChat != null && ChatRightsEditActivity.this.currentChat.creator;
                    if (i == ChatRightsEditActivity.this.sendMediaRow) {
                        int sendMediaSelectedCount = ChatRightsEditActivity.this.getSendMediaSelectedCount();
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.UserRestrictionsSendMedia), sendMediaSelectedCount > 0, true, true);
                        textCheckCell2.setCollapseArrow(String.format(Locale.US, "%d/9", Integer.valueOf(sendMediaSelectedCount)), !ChatRightsEditActivity.this.sendMediaExpanded, new Runnable() { // from class: org.telegram.ui.ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onBindViewHolder$1(textCheckCell2);
                            }
                        });
                        textCheckCell2.setIcon(ChatRightsEditActivity.this.allDefaultMediaBanned() ? C2888R.drawable.permission_locked : 0);
                    } else if (i == ChatRightsEditActivity.this.channelMessagesRow) {
                        int channelMessagesSelectedCount = ChatRightsEditActivity.this.getChannelMessagesSelectedCount();
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.ChannelManageMessages), channelMessagesSelectedCount > 0, true, true);
                        textCheckCell2.setCollapseArrow(String.format(Locale.US, "%d/3", Integer.valueOf(channelMessagesSelectedCount)), !ChatRightsEditActivity.this.channelMessagesExpanded, new Runnable() { // from class: org.telegram.ui.ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onBindViewHolder$2(textCheckCell2);
                            }
                        });
                    } else if (i == ChatRightsEditActivity.this.channelStoriesRow) {
                        int channelStoriesSelectedCount = ChatRightsEditActivity.this.getChannelStoriesSelectedCount();
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.ChannelManageStories), channelStoriesSelectedCount > 0, true, true);
                        textCheckCell2.setCollapseArrow(String.format(Locale.US, "%d/3", Integer.valueOf(channelStoriesSelectedCount)), !ChatRightsEditActivity.this.channelStoriesExpanded, new Runnable() { // from class: org.telegram.ui.ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onBindViewHolder$3(textCheckCell2);
                            }
                        });
                    } else if (i == ChatRightsEditActivity.this.manageRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.ManageGroup), ChatRightsEditActivity.this.asAdmin, true);
                        textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.add_admins || z2) ? 0 : C2888R.drawable.permission_locked);
                    } else if (i == ChatRightsEditActivity.this.changeInfoRow) {
                        if (ChatRightsEditActivity.this.currentType == 0 || ChatRightsEditActivity.this.currentType == 2) {
                            if (ChatRightsEditActivity.this.isChannel) {
                                textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminChangeChannelInfo), z && ChatRightsEditActivity.this.adminRights.change_info, true);
                            } else {
                                textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminChangeGroupInfo), (z && ChatRightsEditActivity.this.adminRights.change_info) || !ChatRightsEditActivity.this.defaultBannedRights.change_info, true);
                            }
                            if (ChatRightsEditActivity.this.currentType == 2) {
                                textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.change_info || z2) ? 0 : C2888R.drawable.permission_locked);
                            }
                        } else if (ChatRightsEditActivity.this.currentType == 1) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.UserRestrictionsChangeInfo), (ChatRightsEditActivity.this.bannedRights.change_info || ChatRightsEditActivity.this.defaultBannedRights.change_info) ? false : true, ChatRightsEditActivity.this.manageTopicsRow != -1);
                            textCheckCell2.setIcon(ChatRightsEditActivity.this.defaultBannedRights.change_info ? C2888R.drawable.permission_locked : 0);
                        }
                    } else if (i == ChatRightsEditActivity.this.postMessagesRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminPostMessages), z && ChatRightsEditActivity.this.adminRights.post_messages, true);
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.post_messages || z2) ? 0 : C2888R.drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.manageDirectRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminManageDirect), z && ChatRightsEditActivity.this.adminRights.manage_direct_messages, true);
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.manage_direct_messages || z2) ? 0 : C2888R.drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.editMesagesRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminEditMessages), z && ChatRightsEditActivity.this.adminRights.edit_messages, true);
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.edit_messages || z2) ? 0 : C2888R.drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.deleteMessagesRow) {
                        if (ChatRightsEditActivity.this.isChannel) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminDeleteMessages), z && ChatRightsEditActivity.this.adminRights.delete_messages, true);
                        } else {
                            textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminGroupDeleteMessages), z && ChatRightsEditActivity.this.adminRights.delete_messages, true);
                        }
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.delete_messages || z2) ? 0 : C2888R.drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.addAdminsRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminAddAdmins), z && ChatRightsEditActivity.this.adminRights.add_admins, (ChatRightsEditActivity.this.banUsersRow != -1 && ChatRightsEditActivity.this.isChannel) || ChatRightsEditActivity.this.anonymousRow != -1);
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.add_admins || z2) ? 0 : C2888R.drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.anonymousRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminSendAnonymously), z && ChatRightsEditActivity.this.adminRights.anonymous, ChatRightsEditActivity.this.manageTopicsRow != -1);
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.anonymous || z2) ? 0 : C2888R.drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.banUsersRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminBanUsers), z && ChatRightsEditActivity.this.adminRights.ban_users, true);
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.ban_users || z2) ? 0 : C2888R.drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.startVoiceChatRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.StartVoipChatPermission), z && ChatRightsEditActivity.this.adminRights.manage_call, true);
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.manage_call || z2) ? 0 : C2888R.drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.manageTopicsRow) {
                        if (ChatRightsEditActivity.this.currentType == 0) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.ManageTopicsPermission), z && ChatRightsEditActivity.this.adminRights.manage_topics, false);
                        } else if (ChatRightsEditActivity.this.currentType == 1) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.CreateTopicsPermission), (ChatRightsEditActivity.this.bannedRights.manage_topics || ChatRightsEditActivity.this.defaultBannedRights.manage_topics) ? false : true, false);
                            textCheckCell2.setIcon(ChatRightsEditActivity.this.defaultBannedRights.manage_topics ? C2888R.drawable.permission_locked : 0);
                        } else if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.ManageTopicsPermission), z && ChatRightsEditActivity.this.adminRights.manage_topics, false);
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.manage_topics || z2) ? 0 : C2888R.drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.addUsersRow) {
                        if (ChatRightsEditActivity.this.currentType == 0) {
                            if (ChatObject.isActionBannedByDefault(ChatRightsEditActivity.this.currentChat, 3)) {
                                textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminAddUsers), ChatRightsEditActivity.this.adminRights.invite_users, true);
                            } else {
                                textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminAddUsersViaLink), ChatRightsEditActivity.this.adminRights.invite_users, true);
                            }
                        } else if (ChatRightsEditActivity.this.currentType == 1) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.UserRestrictionsInviteUsers), (ChatRightsEditActivity.this.bannedRights.invite_users || ChatRightsEditActivity.this.defaultBannedRights.invite_users) ? false : true, true);
                            textCheckCell2.setIcon(ChatRightsEditActivity.this.defaultBannedRights.invite_users ? C2888R.drawable.permission_locked : 0);
                        } else if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminAddUsersViaLink), z && ChatRightsEditActivity.this.adminRights.invite_users, true);
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.invite_users || z2) ? 0 : C2888R.drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.pinMessagesRow) {
                        if (ChatRightsEditActivity.this.currentType == 0 || ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminPinMessages), (z && ChatRightsEditActivity.this.adminRights.pin_messages) || !ChatRightsEditActivity.this.defaultBannedRights.pin_messages, true);
                            if (ChatRightsEditActivity.this.currentType == 2) {
                                textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.pin_messages || z2) ? 0 : C2888R.drawable.permission_locked);
                            }
                        } else if (ChatRightsEditActivity.this.currentType == 1) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.UserRestrictionsPinMessages), (ChatRightsEditActivity.this.bannedRights.pin_messages || ChatRightsEditActivity.this.defaultBannedRights.pin_messages) ? false : true, true);
                            textCheckCell2.setIcon(ChatRightsEditActivity.this.defaultBannedRights.pin_messages ? C2888R.drawable.permission_locked : 0);
                        }
                    } else if (i == ChatRightsEditActivity.this.editTagsRow) {
                        if (ChatRightsEditActivity.this.currentType == 0 || ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.EditAdminEditTags), (z && ChatRightsEditActivity.this.adminRights.manage_ranks) || !ChatRightsEditActivity.this.defaultBannedRights.edit_rank, true);
                            if (ChatRightsEditActivity.this.currentType == 2) {
                                textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.manage_ranks || z2) ? 0 : C2888R.drawable.permission_locked);
                            }
                        } else if (ChatRightsEditActivity.this.currentType == 1) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.UserRestrictionsEditTags), (ChatRightsEditActivity.this.bannedRights.edit_rank || ChatRightsEditActivity.this.defaultBannedRights.edit_rank) ? false : true, true);
                            textCheckCell2.setIcon(ChatRightsEditActivity.this.defaultBannedRights.edit_rank ? C2888R.drawable.permission_locked : 0);
                        }
                    } else if (i == ChatRightsEditActivity.this.sendMessagesRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.UserRestrictionsSend), (ChatRightsEditActivity.this.bannedRights.send_plain || ChatRightsEditActivity.this.defaultBannedRights.send_plain) ? false : true, true);
                        textCheckCell2.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_plain ? C2888R.drawable.permission_locked : 0);
                    }
                    if (ChatRightsEditActivity.this.currentType != 2 && i == ChatRightsEditActivity.this.sendMessagesRow) {
                        textCheckCell2.setEnabled((ChatRightsEditActivity.this.bannedRights.view_messages || ChatRightsEditActivity.this.defaultBannedRights.view_messages) ? false : true);
                    }
                    break;
                case 5:
                    ShadowSectionCell shadowSectionCell = (ShadowSectionCell) viewHolder.itemView;
                    if (ChatRightsEditActivity.this.currentType == 2 && (i == ChatRightsEditActivity.this.rightsShadowRow || i == ChatRightsEditActivity.this.rankInfoRow)) {
                        shadowSectionCell.setAlpha(ChatRightsEditActivity.this.asAdminT);
                    } else {
                        shadowSectionCell.setAlpha(1.0f);
                    }
                    break;
                case 6:
                    TextDetailCell textDetailCell = (TextDetailCell) viewHolder.itemView;
                    if (i == ChatRightsEditActivity.this.untilDateRow) {
                        if (ChatRightsEditActivity.this.bannedRights.until_date == 0 || Math.abs(((long) ChatRightsEditActivity.this.bannedRights.until_date) - (System.currentTimeMillis() / 1000)) > 315360000) {
                            string3 = LocaleController.getString(C2888R.string.UserRestrictionsUntilForever);
                        } else {
                            string3 = LocaleController.formatDateForBan(ChatRightsEditActivity.this.bannedRights.until_date);
                        }
                        textDetailCell.setTextAndValue(LocaleController.getString(C2888R.string.UserRestrictionsDuration), string3, false);
                    }
                    break;
                case 7:
                    PollEditTextCell pollEditTextCell = (PollEditTextCell) viewHolder.itemView;
                    if (UserObject.isUserSelf(ChatRightsEditActivity.this.currentUser) && ChatRightsEditActivity.this.currentChat.creator) {
                        string4 = LocaleController.getString(C2888R.string.ChannelCreator);
                    } else {
                        string4 = LocaleController.getString(C2888R.string.ChannelAdmin);
                    }
                    this.ignoreTextChange = true;
                    pollEditTextCell.getTextView().setEnabled(ChatRightsEditActivity.this.canEdit || ChatRightsEditActivity.this.currentChat.creator);
                    pollEditTextCell.getTextView().setSingleLine(true);
                    pollEditTextCell.getTextView().setImeOptions(6);
                    pollEditTextCell.setTextAndHint(ChatRightsEditActivity.this.currentRank, string4, false);
                    this.ignoreTextChange = false;
                    break;
                case 10:
                    CheckBoxCell checkBoxCell = (CheckBoxCell) viewHolder.itemView;
                    boolean z3 = checkBoxCell.getTag() != null && ((Integer) checkBoxCell.getTag()).intValue() == i;
                    checkBoxCell.setTag(Integer.valueOf(i));
                    if (i == ChatRightsEditActivity.this.sendStickersRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.SendMediaPermissionStickersGifs), _UrlKt.FRAGMENT_ENCODE_SET, (ChatRightsEditActivity.this.bannedRights.send_stickers || ChatRightsEditActivity.this.defaultBannedRights.send_stickers) ? false : true, true, z3);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_stickers ? C2888R.drawable.permission_locked : 0);
                    } else if (i == ChatRightsEditActivity.this.embedLinksRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.UserRestrictionsEmbedLinks), _UrlKt.FRAGMENT_ENCODE_SET, (ChatRightsEditActivity.this.bannedRights.embed_links || ChatRightsEditActivity.this.defaultBannedRights.embed_links || ChatRightsEditActivity.this.bannedRights.send_plain || ChatRightsEditActivity.this.defaultBannedRights.send_plain) ? false : true, true, z3);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.embed_links ? C2888R.drawable.permission_locked : 0);
                    } else if (i == ChatRightsEditActivity.this.sendPollsRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.SendMediaPolls), _UrlKt.FRAGMENT_ENCODE_SET, (ChatRightsEditActivity.this.bannedRights.send_polls || ChatRightsEditActivity.this.defaultBannedRights.send_polls) ? false : true, true, z3);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_polls ? C2888R.drawable.permission_locked : 0);
                    } else if (i == ChatRightsEditActivity.this.sendPhotosRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.SendMediaPermissionPhotos), _UrlKt.FRAGMENT_ENCODE_SET, (ChatRightsEditActivity.this.bannedRights.send_photos || ChatRightsEditActivity.this.defaultBannedRights.send_photos) ? false : true, true, z3);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_photos ? C2888R.drawable.permission_locked : 0);
                    } else if (i == ChatRightsEditActivity.this.sendVideosRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.SendMediaPermissionVideos), _UrlKt.FRAGMENT_ENCODE_SET, (ChatRightsEditActivity.this.bannedRights.send_videos || ChatRightsEditActivity.this.defaultBannedRights.send_videos) ? false : true, true, z3);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_videos ? C2888R.drawable.permission_locked : 0);
                    } else if (i == ChatRightsEditActivity.this.sendMusicRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.SendMediaPermissionMusic), _UrlKt.FRAGMENT_ENCODE_SET, (ChatRightsEditActivity.this.bannedRights.send_audios || ChatRightsEditActivity.this.defaultBannedRights.send_audios) ? false : true, true, z3);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_audios ? C2888R.drawable.permission_locked : 0);
                    } else if (i == ChatRightsEditActivity.this.sendFilesRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.SendMediaPermissionFiles), _UrlKt.FRAGMENT_ENCODE_SET, (ChatRightsEditActivity.this.bannedRights.send_docs || ChatRightsEditActivity.this.defaultBannedRights.send_docs) ? false : true, true, z3);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_docs ? C2888R.drawable.permission_locked : 0);
                    } else if (i == ChatRightsEditActivity.this.sendVoiceRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.SendMediaPermissionVoice), _UrlKt.FRAGMENT_ENCODE_SET, (ChatRightsEditActivity.this.bannedRights.send_voices || ChatRightsEditActivity.this.defaultBannedRights.send_voices) ? false : true, true, z3);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_voices ? C2888R.drawable.permission_locked : 0);
                    } else if (i == ChatRightsEditActivity.this.sendRoundRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.SendMediaPermissionRound), _UrlKt.FRAGMENT_ENCODE_SET, (ChatRightsEditActivity.this.bannedRights.send_roundvideos || ChatRightsEditActivity.this.defaultBannedRights.send_roundvideos) ? false : true, true, z3);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_roundvideos ? C2888R.drawable.permission_locked : 0);
                    } else if (i == ChatRightsEditActivity.this.channelPostMessagesRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.EditAdminPostMessages), _UrlKt.FRAGMENT_ENCODE_SET, ChatRightsEditActivity.this.adminRights.post_messages, true, z3);
                    } else if (i == ChatRightsEditActivity.this.channelEditMessagesRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.EditAdminEditMessages), _UrlKt.FRAGMENT_ENCODE_SET, ChatRightsEditActivity.this.adminRights.edit_messages, true, z3);
                    } else if (i == ChatRightsEditActivity.this.channelDeleteMessagesRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.EditAdminDeleteMessages), _UrlKt.FRAGMENT_ENCODE_SET, ChatRightsEditActivity.this.adminRights.delete_messages, true, z3);
                    } else if (i == ChatRightsEditActivity.this.channelPostStoriesRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.EditAdminPostStories), _UrlKt.FRAGMENT_ENCODE_SET, ChatRightsEditActivity.this.adminRights.post_stories, true, z3);
                    } else if (i == ChatRightsEditActivity.this.channelEditStoriesRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.EditAdminEditStories), _UrlKt.FRAGMENT_ENCODE_SET, ChatRightsEditActivity.this.adminRights.edit_stories, true, z3);
                    } else if (i == ChatRightsEditActivity.this.channelDeleteStoriesRow) {
                        checkBoxCell.setText(LocaleController.getString(C2888R.string.EditAdminDeleteStories), _UrlKt.FRAGMENT_ENCODE_SET, ChatRightsEditActivity.this.adminRights.delete_stories, true, z3);
                    }
                    break;
                case 11:
                    ((TagEditCell) viewHolder.itemView).set(ChatRightsEditActivity.this.currentUser, ChatRightsEditActivity.this.currentRank, ChatRightsEditActivity.this.currentType == 0, false, new Utilities.Callback() { // from class: org.telegram.ui.ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda4
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$onBindViewHolder$4((String) obj);
                        }
                    });
                    break;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$1(TextCheckCell2 textCheckCell2) {
            if (textCheckCell2.isEnabled()) {
                if (ChatRightsEditActivity.this.allDefaultMediaBanned()) {
                    new AlertDialog.Builder(ChatRightsEditActivity.this.getParentActivity()).setTitle(LocaleController.getString(C2888R.string.UserRestrictionsCantModify)).setMessage(LocaleController.getString(C2888R.string.UserRestrictionsCantModifyEnabled)).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).create().show();
                    return;
                }
                boolean z = !textCheckCell2.isChecked();
                textCheckCell2.setChecked(z);
                ChatRightsEditActivity.this.setSendMediaEnabled(z);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$2(TextCheckCell2 textCheckCell2) {
            if (textCheckCell2.isEnabled()) {
                boolean zIsChecked = textCheckCell2.isChecked();
                textCheckCell2.setChecked(zIsChecked);
                ChatRightsEditActivity.this.setChannelMessagesEnabled(zIsChecked);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$3(TextCheckCell2 textCheckCell2) {
            if (textCheckCell2.isEnabled()) {
                boolean zIsChecked = textCheckCell2.isChecked();
                textCheckCell2.setChecked(zIsChecked);
                ChatRightsEditActivity.this.setChannelStoriesEnabled(zIsChecked);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$4(String str) {
            ChatRightsEditActivity.this.currentRank = str;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getAdapterPosition() == ChatRightsEditActivity.this.rankHeaderRow) {
                ChatRightsEditActivity.this.setTextLeft(viewHolder.itemView);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getAdapterPosition() != ChatRightsEditActivity.this.rankRow || ChatRightsEditActivity.this.getParentActivity() == null) {
                return;
            }
            AndroidUtilities.hideKeyboard(ChatRightsEditActivity.this.getParentActivity().getCurrentFocus());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (ChatRightsEditActivity.this.isExpandableSendMediaRow(i)) {
                return 10;
            }
            if (i == ChatRightsEditActivity.this.sendMediaRow || i == ChatRightsEditActivity.this.channelMessagesRow || i == ChatRightsEditActivity.this.channelStoriesRow) {
                return 9;
            }
            if (i == 0) {
                return 0;
            }
            if (i == 1 || i == ChatRightsEditActivity.this.rightsShadowRow || i == ChatRightsEditActivity.this.removeAdminShadowRow || i == ChatRightsEditActivity.this.untilSectionRow || i == ChatRightsEditActivity.this.transferOwnerShadowRow) {
                return 5;
            }
            if (i == 2 || i == ChatRightsEditActivity.this.rankHeaderRow) {
                return 3;
            }
            if (i == ChatRightsEditActivity.this.changeInfoRow || i == ChatRightsEditActivity.this.postMessagesRow || i == ChatRightsEditActivity.this.manageDirectRow || i == ChatRightsEditActivity.this.editMesagesRow || i == ChatRightsEditActivity.this.deleteMessagesRow || i == ChatRightsEditActivity.this.addAdminsRow || i == ChatRightsEditActivity.this.banUsersRow || i == ChatRightsEditActivity.this.addUsersRow || i == ChatRightsEditActivity.this.pinMessagesRow || i == ChatRightsEditActivity.this.editTagsRow || i == ChatRightsEditActivity.this.sendMessagesRow || i == ChatRightsEditActivity.this.anonymousRow || i == ChatRightsEditActivity.this.startVoiceChatRow || i == ChatRightsEditActivity.this.manageRow || i == ChatRightsEditActivity.this.manageTopicsRow) {
                return 4;
            }
            if (i == ChatRightsEditActivity.this.cantEditInfoRow || i == ChatRightsEditActivity.this.rankInfoRow) {
                return 1;
            }
            if (i == ChatRightsEditActivity.this.untilDateRow) {
                return 6;
            }
            if (i == ChatRightsEditActivity.this.rankRow) {
                return 11;
            }
            return i == ChatRightsEditActivity.this.addBotButtonRow ? 8 : 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSendMediaEnabled(boolean z) {
        TLRPC.TL_chatBannedRights tL_chatBannedRights = this.bannedRights;
        tL_chatBannedRights.send_media = !z;
        tL_chatBannedRights.send_photos = !z;
        tL_chatBannedRights.send_videos = !z;
        tL_chatBannedRights.send_stickers = !z;
        tL_chatBannedRights.send_gifs = !z;
        tL_chatBannedRights.send_games = !z;
        tL_chatBannedRights.send_inline = !z;
        tL_chatBannedRights.send_audios = !z;
        tL_chatBannedRights.send_docs = !z;
        tL_chatBannedRights.send_voices = !z;
        tL_chatBannedRights.send_roundvideos = !z;
        tL_chatBannedRights.embed_links = !z;
        tL_chatBannedRights.send_polls = !z;
        AndroidUtilities.updateVisibleRows(this.listView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSendMediaSelectedCount() {
        TLRPC.TL_chatBannedRights tL_chatBannedRights = this.bannedRights;
        int i = (tL_chatBannedRights.send_photos || this.defaultBannedRights.send_photos) ? 0 : 1;
        if (!tL_chatBannedRights.send_videos && !this.defaultBannedRights.send_videos) {
            i++;
        }
        if (!tL_chatBannedRights.send_stickers && !this.defaultBannedRights.send_stickers) {
            i++;
        }
        if (!tL_chatBannedRights.send_audios && !this.defaultBannedRights.send_audios) {
            i++;
        }
        if (!tL_chatBannedRights.send_docs && !this.defaultBannedRights.send_docs) {
            i++;
        }
        if (!tL_chatBannedRights.send_voices && !this.defaultBannedRights.send_voices) {
            i++;
        }
        if (!tL_chatBannedRights.send_roundvideos && !this.defaultBannedRights.send_roundvideos) {
            i++;
        }
        if (!tL_chatBannedRights.embed_links) {
            TLRPC.TL_chatBannedRights tL_chatBannedRights2 = this.defaultBannedRights;
            if (!tL_chatBannedRights2.embed_links && !tL_chatBannedRights.send_plain && !tL_chatBannedRights2.send_plain) {
                i++;
            }
        }
        return (tL_chatBannedRights.send_polls || this.defaultBannedRights.send_polls) ? i : i + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean, int] */
    public int getChannelMessagesSelectedCount() {
        TLRPC.TL_chatAdminRights tL_chatAdminRights = this.adminRights;
        ?? r1 = tL_chatAdminRights.post_messages;
        int i = r1;
        if (tL_chatAdminRights.edit_messages) {
            i = r1 + 1;
        }
        return tL_chatAdminRights.delete_messages ? i + 1 : i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setChannelMessagesEnabled(boolean z) {
        TLRPC.TL_chatAdminRights tL_chatAdminRights = this.adminRights;
        tL_chatAdminRights.post_messages = !z;
        tL_chatAdminRights.edit_messages = !z;
        tL_chatAdminRights.delete_messages = !z;
        AndroidUtilities.updateVisibleRows(this.listView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean, int] */
    public int getChannelStoriesSelectedCount() {
        TLRPC.TL_chatAdminRights tL_chatAdminRights = this.adminRights;
        ?? r1 = tL_chatAdminRights.post_stories;
        int i = r1;
        if (tL_chatAdminRights.edit_stories) {
            i = r1 + 1;
        }
        return tL_chatAdminRights.delete_stories ? i + 1 : i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setChannelStoriesEnabled(boolean z) {
        TLRPC.TL_chatAdminRights tL_chatAdminRights = this.adminRights;
        tL_chatAdminRights.post_stories = !z;
        tL_chatAdminRights.edit_stories = !z;
        tL_chatAdminRights.delete_stories = !z;
        AndroidUtilities.updateVisibleRows(this.listView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean allDefaultMediaBanned() {
        TLRPC.TL_chatBannedRights tL_chatBannedRights = this.defaultBannedRights;
        return tL_chatBannedRights.send_photos && tL_chatBannedRights.send_videos && tL_chatBannedRights.send_stickers && tL_chatBannedRights.send_audios && tL_chatBannedRights.send_docs && tL_chatBannedRights.send_voices && tL_chatBannedRights.send_roundvideos && tL_chatBannedRights.embed_links && tL_chatBannedRights.send_polls;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isExpandableSendMediaRow(int i) {
        return i == this.sendStickersRow || i == this.embedLinksRow || i == this.sendPollsRow || i == this.sendPhotosRow || i == this.sendVideosRow || i == this.sendFilesRow || i == this.sendMusicRow || i == this.sendRoundRow || i == this.sendVoiceRow || i == this.channelPostMessagesRow || i == this.channelEditMessagesRow || i == this.channelDeleteMessagesRow || i == this.channelPostStoriesRow || i == this.channelEditStoriesRow || i == this.channelDeleteStoriesRow;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x008a A[PHI: r5
  0x008a: PHI (r5v28 boolean) = 
  (r5v7 boolean)
  (r5v7 boolean)
  (r5v13 boolean)
  (r5v13 boolean)
  (r5v15 boolean)
  (r5v15 boolean)
  (r5v32 boolean)
  (r5v32 boolean)
 binds: [B:92:0x0139, B:94:0x013d, B:77:0x0105, B:79:0x010b, B:70:0x00f0, B:72:0x00f6, B:43:0x0081, B:45:0x0087] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateAsAdmin(boolean z) {
        boolean z2;
        boolean z3;
        TLRPC.Chat chat;
        TLRPC.Chat chat2;
        FrameLayout frameLayout = this.addBotButton;
        if (frameLayout != null) {
            frameLayout.invalidate();
        }
        int childCount = this.listView.getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            View childAt = this.listView.getChildAt(i);
            int childAdapterPosition = this.listView.getChildAdapterPosition(childAt);
            if (childAt instanceof TextCheckCell2) {
                if (!this.asAdmin) {
                    if ((childAdapterPosition == this.changeInfoRow && !this.defaultBannedRights.change_info) || ((childAdapterPosition == this.pinMessagesRow && !this.defaultBannedRights.pin_messages) || (childAdapterPosition == this.editTagsRow && !this.defaultBannedRights.edit_rank))) {
                        TextCheckCell2 textCheckCell2 = (TextCheckCell2) childAt;
                        textCheckCell2.setChecked(true);
                        textCheckCell2.setEnabled(false, false);
                    } else {
                        TextCheckCell2 textCheckCell22 = (TextCheckCell2) childAt;
                        textCheckCell22.setChecked(false);
                        textCheckCell22.setEnabled(childAdapterPosition == this.manageRow, z);
                    }
                } else if (childAdapterPosition == this.manageRow) {
                    z2 = (this.myAdminRights.add_admins || ((chat2 = this.currentChat) != null && chat2.creator)) ? z : false;
                    TextCheckCell2 textCheckCell23 = (TextCheckCell2) childAt;
                    textCheckCell23.setChecked(z);
                    textCheckCell23.setEnabled(z2, z);
                } else if (childAdapterPosition == this.changeInfoRow) {
                    z3 = this.adminRights.change_info;
                    if (!this.myAdminRights.change_info || !this.defaultBannedRights.change_info) {
                        z = false;
                    }
                    boolean z4 = z3;
                    z2 = z;
                    z = z4;
                    TextCheckCell2 textCheckCell232 = (TextCheckCell2) childAt;
                    textCheckCell232.setChecked(z);
                    textCheckCell232.setEnabled(z2, z);
                } else {
                    if (childAdapterPosition == this.postMessagesRow) {
                        z = this.adminRights.post_messages;
                        z2 = this.myAdminRights.post_messages;
                    } else if (childAdapterPosition == this.manageDirectRow) {
                        z = this.adminRights.manage_direct_messages;
                        z2 = this.myAdminRights.manage_direct_messages;
                    } else if (childAdapterPosition == this.editMesagesRow) {
                        z = this.adminRights.edit_messages;
                        z2 = this.myAdminRights.edit_messages;
                    } else if (childAdapterPosition == this.deleteMessagesRow) {
                        z = this.adminRights.delete_messages;
                        z2 = this.myAdminRights.delete_messages;
                    } else if (childAdapterPosition == this.banUsersRow) {
                        z = this.adminRights.ban_users;
                        z2 = this.myAdminRights.ban_users;
                    } else if (childAdapterPosition == this.addUsersRow) {
                        z = this.adminRights.invite_users;
                        z2 = this.myAdminRights.invite_users;
                    } else if (childAdapterPosition == this.pinMessagesRow) {
                        z3 = this.adminRights.pin_messages;
                        if (!this.myAdminRights.pin_messages || !this.defaultBannedRights.pin_messages) {
                        }
                        boolean z42 = z3;
                        z2 = z;
                        z = z42;
                    } else if (childAdapterPosition == this.editTagsRow) {
                        z3 = this.adminRights.manage_ranks;
                        if (!this.myAdminRights.manage_ranks || !this.defaultBannedRights.edit_rank) {
                        }
                        boolean z422 = z3;
                        z2 = z;
                        z = z422;
                    } else if (childAdapterPosition == this.startVoiceChatRow) {
                        z = this.adminRights.manage_call;
                        z2 = this.myAdminRights.manage_call;
                    } else if (childAdapterPosition == this.addAdminsRow) {
                        z = this.adminRights.add_admins;
                        z2 = this.myAdminRights.add_admins;
                    } else if (childAdapterPosition == this.anonymousRow) {
                        z3 = this.adminRights.anonymous;
                        if (!this.myAdminRights.anonymous && ((chat = this.currentChat) == null || !chat.creator)) {
                        }
                        boolean z4222 = z3;
                        z2 = z;
                        z = z4222;
                    } else if (childAdapterPosition == this.manageTopicsRow) {
                        z = this.adminRights.manage_topics;
                        z2 = this.myAdminRights.manage_topics;
                    } else {
                        z = false;
                    }
                    TextCheckCell2 textCheckCell2322 = (TextCheckCell2) childAt;
                    textCheckCell2322.setChecked(z);
                    textCheckCell2322.setEnabled(z2, z);
                }
            }
            i++;
        }
        this.listViewAdapter.notifyDataSetChanged();
        AnimatedTextView animatedTextView = this.addBotButtonText;
        if (animatedTextView != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(LocaleController.getString(C2888R.string.AddBotButton));
            sb.append(" ");
            sb.append(LocaleController.getString(this.asAdmin ? C2888R.string.AddBotButtonAsAdmin : C2888R.string.AddBotButtonAsMember));
            animatedTextView.setText(sb.toString(), z, this.asAdmin);
        }
        ValueAnimator valueAnimator = this.asAdminAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.asAdminAnimator = null;
        }
        if (z) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.asAdminT, this.asAdmin ? 1.0f : 0.0f);
            this.asAdminAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda10
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$updateAsAdmin$25(valueAnimator2);
                }
            });
            this.asAdminAnimator.setDuration((long) (Math.abs(this.asAdminT - (this.asAdmin ? 1.0f : 0.0f)) * 200.0f));
            this.asAdminAnimator.start();
            return;
        }
        this.asAdminT = this.asAdmin ? 1.0f : 0.0f;
        FrameLayout frameLayout2 = this.addBotButton;
        if (frameLayout2 != null) {
            frameLayout2.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateAsAdmin$25(ValueAnimator valueAnimator) {
        this.asAdminT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        FrameLayout frameLayout = this.addBotButton;
        if (frameLayout != null) {
            frameLayout.invalidate();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$26();
            }

            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{UserCell2.class, TextSettingsCell.class, TextCheckCell2.class, HeaderCell.class, TextDetailCell.class, PollEditTextCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        ActionBar actionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(actionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        int i3 = Theme.key_text_RedRegular;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayIcon));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextDetailCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        int i5 = Theme.key_windowBackgroundWhiteGrayText2;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextDetailCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell2.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell2.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell2.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switch2Track));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell2.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switch2TrackChecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText3));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{PollEditTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_HINTTEXTCOLOR, new Class[]{PollEditTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteHintText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell2.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell2.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteGrayText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell2.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell2.class}, null, Theme.avatarDrawables, null, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        arrayList.add(new ThemeDescription((View) null, 0, new Class[]{DialogRadioCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_dialogTextBlack));
        arrayList.add(new ThemeDescription((View) null, 0, new Class[]{DialogRadioCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_dialogTextGray2));
        arrayList.add(new ThemeDescription((View) null, ThemeDescription.FLAG_CHECKBOX, new Class[]{DialogRadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_dialogRadioBackground));
        arrayList.add(new ThemeDescription((View) null, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{DialogRadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_dialogRadioBackgroundChecked));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$26() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof UserCell2) {
                    ((UserCell2) childAt).update(0);
                }
            }
        }
    }
}
