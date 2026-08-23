package org.telegram.p029ui.Components;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.export.p011ui.ExportMapper$$ExternalSyntheticLambda2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import java.util.function.Function;
import java.util.function.Predicate;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.CollapseTextCell;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.DeleteMessagesBottomSheet;
import org.telegram.p029ui.Components.Premium.boosts.cells.selector.SelectorBtnCell;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Collection;
import p022j$.util.DesugarArrays;
import p022j$.util.function.Function$CC;
import p022j$.util.function.Predicate$CC;
import p022j$.util.stream.Collectors;

/* JADX INFO: loaded from: classes7.dex */
public class DeleteMessagesBottomSheet extends BottomSheetWithRecyclerListView {
    private TextView actionButton;
    private UniversalAdapter adapter;
    private boolean banChecked;
    private boolean[] banFilter;
    private Action banOrRestrict;
    private TLRPC.TL_chatBannedRights bannedRights;
    private SelectorBtnCell buttonContainer;
    private boolean canRestrict;
    private TLRPC.TL_chatBannedRights defaultBannedRights;
    private Action deleteAll;
    private TLRPC.Chat inChat;
    private boolean isForum;
    private long mergeDialogId;
    private ArrayList messages;
    private int mode;
    private boolean monoforum;
    private Runnable onDelete;
    private int[] participantMessageCounts;
    private boolean participantMessageCountsLoaded;
    private boolean participantMessageCountsLoading;
    private ArrayList participantsBannedRights;
    private Action report;
    private boolean restrict;
    private boolean[] restrictFilter;
    private boolean sendMediaCollapsed;
    private float shiftDp;
    private int topicId;

    /* JADX INFO: Access modifiers changed from: private */
    class Action {
        boolean[] checks;
        boolean collapsed;
        boolean[] filter;
        int filteredCount;
        ArrayList options;
        int selectedCount;
        String title;
        int totalCount;
        int type;

        Action(int i, ArrayList arrayList) {
            this.type = i;
            int size = arrayList.size();
            this.totalCount = size;
            this.selectedCount = 0;
            if (size > 0) {
                this.options = arrayList;
                this.checks = new boolean[size];
                this.collapsed = true;
                updateTitle();
            }
        }

        int getCount() {
            if (this.filter != null) {
                return this.filteredCount;
            }
            return this.totalCount;
        }

        boolean isPresent() {
            return getCount() > 0;
        }

        boolean isExpandable() {
            return getCount() > 1;
        }

        void setFilter(boolean[] zArr) {
            if (this.totalCount == 0) {
                return;
            }
            this.filter = zArr;
            updateCounters();
            updateTitle();
        }

        void updateCounters() {
            this.selectedCount = 0;
            this.filteredCount = 0;
            for (int i = 0; i < this.totalCount; i++) {
                boolean[] zArr = this.filter;
                if (zArr == null) {
                    if (this.checks[i]) {
                        this.selectedCount++;
                    }
                } else if (zArr[i]) {
                    this.filteredCount++;
                    if (this.checks[i]) {
                        this.selectedCount++;
                    }
                }
            }
        }

        TLObject first() {
            for (int i = 0; i < this.totalCount; i++) {
                boolean[] zArr = this.filter;
                if (zArr == null || zArr[i]) {
                    return (TLObject) this.options.get(i);
                }
            }
            return null;
        }

        void updateTitle() {
            String name;
            if (this.totalCount == 0) {
                return;
            }
            TLObject tLObjectFirst = first();
            if (tLObjectFirst instanceof TLRPC.User) {
                name = UserObject.getForcedFirstName((TLRPC.User) tLObjectFirst);
            } else {
                name = ContactsController.formatName(tLObjectFirst);
            }
            int i = this.type;
            if (i == 0) {
                this.title = LocaleController.getString(C2888R.string.DeleteReportSpam);
                return;
            }
            if (i == 1) {
                this.title = isExpandable() ? LocaleController.getString(C2888R.string.DeleteAllFromUsers) : LocaleController.formatString(C2888R.string.DeleteAllFrom, name);
            } else if (i == 2) {
                if (DeleteMessagesBottomSheet.this.restrict) {
                    this.title = isExpandable() ? LocaleController.getString(C2888R.string.DeleteRestrictUsers) : LocaleController.formatString(C2888R.string.DeleteRestrict, name);
                } else {
                    this.title = isExpandable() ? LocaleController.getString(C2888R.string.DeleteBanUsers) : LocaleController.formatString(C2888R.string.DeleteBan, name);
                }
            }
        }

        void collapseOrExpand() {
            this.collapsed = !this.collapsed;
            DeleteMessagesBottomSheet.this.adapter.update(true);
        }

        void toggleCheck(int i) {
            boolean[] zArr = this.filter;
            if (zArr == null || zArr[i]) {
                boolean[] zArr2 = this.checks;
                boolean z = zArr2[i];
                zArr2[i] = !z;
                if (!z) {
                    this.selectedCount++;
                } else {
                    this.selectedCount--;
                }
                DeleteMessagesBottomSheet.this.adapter.update(true);
            }
        }

        boolean areAllSelected() {
            boolean[] zArr;
            for (int i = 0; i < this.totalCount; i++) {
                if (!this.checks[i] || ((zArr = this.filter) != null && !zArr[i])) {
                    return false;
                }
            }
            return true;
        }

        boolean isOneSelected() {
            boolean[] zArr;
            for (int i = 0; i < this.totalCount; i++) {
                if (this.checks[i] && ((zArr = this.filter) == null || zArr[i])) {
                    return true;
                }
            }
            return false;
        }

        void toggleAllChecks() {
            setAllChecks(!isOneSelected());
        }

        void setAllChecks(boolean z) {
            setAllChecks(z, true);
        }

        void setAllChecks(boolean z, boolean z2) {
            Arrays.fill(this.checks, z);
            updateCounters();
            if (z2) {
                DeleteMessagesBottomSheet.this.adapter.update(true);
            }
        }

        void forEachSelected(Utilities.IndexedConsumer indexedConsumer) {
            boolean[] zArr;
            for (int i = 0; i < this.totalCount; i++) {
                if (this.checks[i] && ((zArr = this.filter) == null || zArr[i])) {
                    indexedConsumer.accept((TLObject) this.options.get(i), i);
                }
            }
        }

        void forEach(Utilities.IndexedConsumer indexedConsumer) {
            for (int i = 0; i < this.totalCount; i++) {
                boolean[] zArr = this.filter;
                if (zArr == null || zArr[i]) {
                    indexedConsumer.accept((TLObject) this.options.get(i), i);
                }
            }
        }
    }

    public DeleteMessagesBottomSheet(BaseFragment baseFragment, TLRPC.Chat chat, ArrayList arrayList, ArrayList arrayList2, TLRPC.ChannelParticipant[] channelParticipantArr, long j, int i, int i2, Runnable runnable) {
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        TLRPC.TL_chatBannedRights tL_chatBannedRights2;
        super(baseFragment.getContext(), baseFragment, false, false, false, true, BottomSheetWithRecyclerListView.ActionBarType.SLIDING, baseFragment.getResourceProvider());
        this.restrict = false;
        this.participantMessageCountsLoading = false;
        this.participantMessageCountsLoaded = false;
        this.sendMediaCollapsed = true;
        this.shiftDp = 10.0f;
        setShowHandle(true);
        fixNavigationBar();
        this.takeTranslationIntoAccount = true;
        RecyclerListView recyclerListView = this.recyclerListView;
        int i3 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i3, this.headerTotalHeight, i3, AndroidUtilities.m1124dp(68.0f));
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i4) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i4);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i4, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i4, f, f2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i4, float f, float f2) {
                this.f$0.lambda$new$0(view, i4, f, f2);
            }
        });
        this.takeTranslationIntoAccount = true;
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet.1
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onMoveAnimationUpdate(viewHolder);
                ((BottomSheet) DeleteMessagesBottomSheet.this).containerView.invalidate();
            }
        };
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        SelectorBtnCell selectorBtnCell = new SelectorBtnCell(getContext(), this.resourcesProvider, null);
        this.buttonContainer = selectorBtnCell;
        selectorBtnCell.setClickable(true);
        this.buttonContainer.setOrientation(1);
        this.buttonContainer.setPadding(AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f));
        this.buttonContainer.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
        TextView textView = new TextView(getContext());
        this.actionButton = textView;
        textView.setLines(1);
        this.actionButton.setSingleLine(true);
        this.actionButton.setGravity(1);
        this.actionButton.setEllipsize(TextUtils.TruncateAt.END);
        this.actionButton.setGravity(17);
        this.actionButton.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        this.actionButton.setTypeface(AndroidUtilities.bold());
        this.actionButton.setTextSize(1, 14.0f);
        this.actionButton.setText(LocaleController.getString(C2888R.string.DeleteProceedBtn));
        this.actionButton.setBackground(Theme.AdaptiveRipple.filledRect(Theme.getColor(Theme.key_featuredStickers_addButton), 6.0f));
        this.actionButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        this.buttonContainer.addView(this.actionButton, LayoutHelper.createLinear(-1, 48, 87));
        ViewGroup viewGroup = this.containerView;
        SelectorBtnCell selectorBtnCell2 = this.buttonContainer;
        int i4 = this.backgroundPaddingLeft;
        viewGroup.addView(selectorBtnCell2, LayoutHelper.createFrameMarginPx(-1, -2.0f, 87, i4, 0, i4, 0));
        this.inChat = chat;
        this.isForum = ChatObject.isForum(chat);
        this.messages = arrayList;
        this.mergeDialogId = j;
        this.topicId = i;
        this.mode = i2;
        this.onDelete = runnable;
        this.defaultBannedRights = chat.default_banned_rights;
        TLRPC.TL_chatBannedRights tL_chatBannedRights3 = new TLRPC.TL_chatBannedRights();
        this.bannedRights = tL_chatBannedRights3;
        TLRPC.TL_chatBannedRights tL_chatBannedRights4 = this.defaultBannedRights;
        if (tL_chatBannedRights4.view_messages) {
            tL_chatBannedRights3.view_messages = true;
        }
        if (tL_chatBannedRights4.send_messages) {
            tL_chatBannedRights3.send_messages = true;
        }
        if (tL_chatBannedRights4.send_media) {
            tL_chatBannedRights3.send_media = true;
        }
        if (tL_chatBannedRights4.send_stickers) {
            tL_chatBannedRights3.send_stickers = true;
        }
        if (tL_chatBannedRights4.send_gifs) {
            tL_chatBannedRights3.send_gifs = true;
        }
        if (tL_chatBannedRights4.send_games) {
            tL_chatBannedRights3.send_games = true;
        }
        if (tL_chatBannedRights4.send_inline) {
            tL_chatBannedRights3.send_inline = true;
        }
        if (tL_chatBannedRights4.embed_links) {
            tL_chatBannedRights3.embed_links = true;
        }
        if (tL_chatBannedRights4.send_polls) {
            tL_chatBannedRights3.send_polls = true;
        }
        if (tL_chatBannedRights4.invite_users) {
            tL_chatBannedRights3.invite_users = true;
        }
        if (tL_chatBannedRights4.change_info) {
            tL_chatBannedRights3.change_info = true;
        }
        if (tL_chatBannedRights4.pin_messages) {
            tL_chatBannedRights3.pin_messages = true;
        }
        if (tL_chatBannedRights4.manage_topics) {
            tL_chatBannedRights3.manage_topics = true;
        }
        if (tL_chatBannedRights4.send_photos) {
            tL_chatBannedRights3.send_photos = true;
        }
        if (tL_chatBannedRights4.send_videos) {
            tL_chatBannedRights3.send_videos = true;
        }
        if (tL_chatBannedRights4.send_audios) {
            tL_chatBannedRights3.send_audios = true;
        }
        if (tL_chatBannedRights4.send_docs) {
            tL_chatBannedRights3.send_docs = true;
        }
        if (tL_chatBannedRights4.send_voices) {
            tL_chatBannedRights3.send_voices = true;
        }
        if (tL_chatBannedRights4.send_roundvideos) {
            tL_chatBannedRights3.send_roundvideos = true;
        }
        if (tL_chatBannedRights4.send_plain) {
            tL_chatBannedRights3.send_plain = true;
        }
        MessagesController.getInstance(this.currentAccount).getMainSettings();
        this.report = new Action(0, arrayList2);
        this.deleteAll = new Action(1, arrayList2);
        this.monoforum = ChatObject.isMonoForum(chat);
        if (ChatObject.canBlockUsers(chat)) {
            this.banFilter = new boolean[arrayList2.size()];
            int i5 = 0;
            while (i5 < arrayList2.size()) {
                TLRPC.ChannelParticipant channelParticipant = i5 < channelParticipantArr.length ? channelParticipantArr[i5] : null;
                if ((chat.creator || (!(channelParticipant instanceof TLRPC.TL_channelParticipantAdmin) && !(channelParticipant instanceof TLRPC.TL_channelParticipantCreator))) && (!(channelParticipant instanceof TLRPC.TL_channelParticipantBanned) || (tL_chatBannedRights2 = channelParticipant.banned_rights) == null || !isBanned(tL_chatBannedRights2))) {
                    this.banFilter[i5] = true;
                }
                i5++;
            }
            this.restrictFilter = new boolean[arrayList2.size()];
            if (hasAnyDefaultRights()) {
                int i6 = 0;
                while (i6 < arrayList2.size()) {
                    TLRPC.ChannelParticipant channelParticipant2 = i6 < channelParticipantArr.length ? channelParticipantArr[i6] : null;
                    if (!(arrayList2.get(i6) instanceof TLRPC.Chat) && ((!(channelParticipant2 instanceof TLRPC.TL_channelParticipantBanned) || (tL_chatBannedRights = channelParticipant2.banned_rights) == null || canBeRestricted(tL_chatBannedRights)) && this.banFilter[i6])) {
                        this.restrictFilter[i6] = true;
                        this.canRestrict = true;
                    }
                    i6++;
                }
            }
            this.participantsBannedRights = (ArrayList) DesugarArrays.stream(channelParticipantArr).map(new Function() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda4
                public /* synthetic */ Function andThen(Function function) {
                    return Function$CC.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DeleteMessagesBottomSheet.$r8$lambda$FIvSAJdGQOuakkUWlmKDlVelxWg((TLRPC.ChannelParticipant) obj);
                }

                public /* synthetic */ Function compose(Function function) {
                    return Function$CC.$default$compose(this, function);
                }
            }).collect(Collectors.toCollection(new ExportMapper$$ExternalSyntheticLambda2()));
            Action action = new Action(2, arrayList2);
            this.banOrRestrict = action;
            action.setFilter(this.banFilter);
        } else {
            this.banOrRestrict = new Action(2, new ArrayList(0));
        }
        this.adapter.update(false);
        this.actionBar.setTitle(getTitle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i, float f, float f2) {
        UItem item = this.adapter.getItem(i - 1);
        if (item == null) {
            return;
        }
        onClick(item, view, i, f, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        proceed();
    }

    public static /* synthetic */ TLRPC.TL_chatBannedRights $r8$lambda$FIvSAJdGQOuakkUWlmKDlVelxWg(TLRPC.ChannelParticipant channelParticipant) {
        if (channelParticipant == null) {
            return null;
        }
        return channelParticipant.banned_rights;
    }

    private static boolean isBanned(TLRPC.TL_chatBannedRights tL_chatBannedRights) {
        return tL_chatBannedRights.view_messages;
    }

    private boolean hasAnyDefaultRights() {
        TLRPC.TL_chatBannedRights tL_chatBannedRights = this.defaultBannedRights;
        if (tL_chatBannedRights.send_messages && tL_chatBannedRights.send_media && tL_chatBannedRights.send_stickers && tL_chatBannedRights.send_gifs && tL_chatBannedRights.send_games && tL_chatBannedRights.send_inline && tL_chatBannedRights.embed_links && tL_chatBannedRights.send_polls && tL_chatBannedRights.change_info && tL_chatBannedRights.invite_users && tL_chatBannedRights.pin_messages) {
            return ((tL_chatBannedRights.manage_topics || !this.isForum) && tL_chatBannedRights.send_photos && tL_chatBannedRights.send_videos && tL_chatBannedRights.send_roundvideos && tL_chatBannedRights.send_audios && tL_chatBannedRights.send_voices && tL_chatBannedRights.send_docs && tL_chatBannedRights.send_plain) ? false : true;
        }
        return true;
    }

    public static TLRPC.TL_chatBannedRights bannedRightsOr(TLRPC.TL_chatBannedRights tL_chatBannedRights, TLRPC.TL_chatBannedRights tL_chatBannedRights2) {
        if (tL_chatBannedRights == null) {
            return tL_chatBannedRights2;
        }
        if (tL_chatBannedRights2 == null) {
            return tL_chatBannedRights;
        }
        TLRPC.TL_chatBannedRights tL_chatBannedRights3 = new TLRPC.TL_chatBannedRights();
        boolean z = true;
        tL_chatBannedRights3.view_messages = tL_chatBannedRights.view_messages || tL_chatBannedRights2.view_messages;
        tL_chatBannedRights3.send_messages = tL_chatBannedRights.send_messages || tL_chatBannedRights2.send_messages;
        tL_chatBannedRights3.send_media = tL_chatBannedRights.send_media || tL_chatBannedRights2.send_media;
        tL_chatBannedRights3.send_stickers = tL_chatBannedRights.send_stickers || tL_chatBannedRights2.send_stickers;
        tL_chatBannedRights3.send_gifs = tL_chatBannedRights.send_gifs || tL_chatBannedRights2.send_gifs;
        tL_chatBannedRights3.send_games = tL_chatBannedRights.send_games || tL_chatBannedRights2.send_games;
        tL_chatBannedRights3.send_inline = tL_chatBannedRights.send_inline || tL_chatBannedRights2.send_inline;
        tL_chatBannedRights3.embed_links = tL_chatBannedRights.embed_links || tL_chatBannedRights2.embed_links;
        tL_chatBannedRights3.send_polls = tL_chatBannedRights.send_polls || tL_chatBannedRights2.send_polls;
        tL_chatBannedRights3.change_info = tL_chatBannedRights.change_info || tL_chatBannedRights2.change_info;
        tL_chatBannedRights3.invite_users = tL_chatBannedRights.invite_users || tL_chatBannedRights2.invite_users;
        tL_chatBannedRights3.pin_messages = tL_chatBannedRights.pin_messages || tL_chatBannedRights2.pin_messages;
        tL_chatBannedRights3.manage_topics = tL_chatBannedRights.manage_topics || tL_chatBannedRights2.manage_topics;
        tL_chatBannedRights3.send_photos = tL_chatBannedRights.send_photos || tL_chatBannedRights2.send_photos;
        tL_chatBannedRights3.send_videos = tL_chatBannedRights.send_videos || tL_chatBannedRights2.send_videos;
        tL_chatBannedRights3.send_roundvideos = tL_chatBannedRights.send_roundvideos || tL_chatBannedRights2.send_roundvideos;
        tL_chatBannedRights3.send_audios = tL_chatBannedRights.send_audios || tL_chatBannedRights2.send_audios;
        tL_chatBannedRights3.send_voices = tL_chatBannedRights.send_voices || tL_chatBannedRights2.send_voices;
        tL_chatBannedRights3.send_docs = tL_chatBannedRights.send_docs || tL_chatBannedRights2.send_docs;
        if (!tL_chatBannedRights.send_plain && !tL_chatBannedRights2.send_plain) {
            z = false;
        }
        tL_chatBannedRights3.send_plain = z;
        return tL_chatBannedRights3;
    }

    private boolean canBeRestricted(TLRPC.TL_chatBannedRights tL_chatBannedRights) {
        if (!tL_chatBannedRights.send_stickers && !this.defaultBannedRights.send_stickers) {
            return true;
        }
        if (!tL_chatBannedRights.send_gifs && !this.defaultBannedRights.send_gifs) {
            return true;
        }
        if (!tL_chatBannedRights.send_games && !this.defaultBannedRights.send_games) {
            return true;
        }
        if (!tL_chatBannedRights.send_inline && !this.defaultBannedRights.send_inline) {
            return true;
        }
        if (!tL_chatBannedRights.embed_links && !tL_chatBannedRights.send_plain) {
            TLRPC.TL_chatBannedRights tL_chatBannedRights2 = this.defaultBannedRights;
            if (!tL_chatBannedRights2.embed_links && !tL_chatBannedRights2.send_plain) {
                return true;
            }
        }
        if (!tL_chatBannedRights.send_polls && !this.defaultBannedRights.send_polls) {
            return true;
        }
        if (!tL_chatBannedRights.change_info && !this.defaultBannedRights.change_info) {
            return true;
        }
        if (!tL_chatBannedRights.invite_users && !this.defaultBannedRights.invite_users) {
            return true;
        }
        if (!tL_chatBannedRights.pin_messages && !this.defaultBannedRights.pin_messages) {
            return true;
        }
        if (!tL_chatBannedRights.manage_topics && !this.defaultBannedRights.manage_topics && this.isForum) {
            return true;
        }
        if (!tL_chatBannedRights.send_photos && !this.defaultBannedRights.send_photos) {
            return true;
        }
        if (!tL_chatBannedRights.send_videos && !this.defaultBannedRights.send_videos) {
            return true;
        }
        if (!tL_chatBannedRights.send_roundvideos && !this.defaultBannedRights.send_roundvideos) {
            return true;
        }
        if (!tL_chatBannedRights.send_audios && !this.defaultBannedRights.send_audios) {
            return true;
        }
        if (!tL_chatBannedRights.send_voices && !this.defaultBannedRights.send_voices) {
            return true;
        }
        if (tL_chatBannedRights.send_docs || this.defaultBannedRights.send_docs) {
            return (tL_chatBannedRights.send_plain || this.defaultBannedRights.send_plain) ? false : true;
        }
        return true;
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        ArrayList arrayList = this.messages;
        final int[] iArr = {arrayList != null ? arrayList.size() : 0};
        if (this.participantMessageCounts != null && this.participantMessageCountsLoaded) {
            this.deleteAll.forEachSelected(new Utilities.IndexedConsumer() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.IndexedConsumer
                public final void accept(Object obj, int i) {
                    this.f$0.lambda$getTitle$3(iArr, (TLObject) obj, i);
                }
            });
        }
        return LocaleController.formatPluralString("DeleteOptionsTitle", iArr[0], new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getTitle$3(int[] iArr, TLObject tLObject, int i) {
        iArr[0] = iArr[0] + this.participantMessageCounts[i];
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, getBaseFragment().getClassGuid(), true, new Utilities.Callback2() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        return universalAdapter;
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        Bulletin.hideVisible();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    public boolean canHighlightChildAt(View view, float f, float f2) {
        return !(view instanceof CollapseTextCell);
    }

    private int getSendMediaSelectedCount() {
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

    private void updateParticipantMessageCounts() {
        if (this.participantMessageCountsLoading) {
            return;
        }
        this.participantMessageCountsLoading = true;
        int i = this.deleteAll.totalCount;
        this.participantMessageCounts = new int[i];
        final int[] iArr = {i};
        for (final int i2 = 0; i2 < this.deleteAll.totalCount; i2++) {
            TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
            tL_messages_search.peer = MessagesController.getInputPeer(this.inChat);
            tL_messages_search.f1776q = _UrlKt.FRAGMENT_ENCODE_SET;
            final TLRPC.InputPeer inputPeer = MessagesController.getInputPeer((TLObject) this.deleteAll.options.get(i2));
            tL_messages_search.from_id = inputPeer;
            tL_messages_search.flags |= 1;
            tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterEmpty();
            tL_messages_search.limit = 1;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_search, new RequestDelegate() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$updateParticipantMessageCounts$6(inputPeer, i2, iArr, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateParticipantMessageCounts$6(final TLRPC.InputPeer inputPeer, final int i, final int[] iArr, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateParticipantMessageCounts$5(tLObject, inputPeer, i, iArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateParticipantMessageCounts$5(TLObject tLObject, final TLRPC.InputPeer inputPeer, int i, int[] iArr) {
        if (tLObject instanceof TLRPC.TL_messages_channelMessages) {
            this.participantMessageCounts[i] = ((TLRPC.TL_messages_channelMessages) tLObject).count - ((int) Collection.EL.stream(this.messages).filter(new Predicate() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda18
                public /* synthetic */ Predicate and(Predicate predicate) {
                    return Predicate$CC.$default$and(this, predicate);
                }

                public /* synthetic */ Predicate negate() {
                    return Predicate$CC.$default$negate(this);
                }

                /* JADX INFO: renamed from: or */
                public /* synthetic */ Predicate m1253or(Predicate predicate) {
                    return Predicate$CC.$default$or(this, predicate);
                }

                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return MessageObject.peersEqual(inputPeer, ((MessageObject) obj).messageOwner.from_id);
                }
            }).count());
        }
        int i2 = iArr[0] - 1;
        iArr[0] = i2;
        if (i2 == 0) {
            this.participantMessageCountsLoading = false;
            this.participantMessageCountsLoaded = true;
            updateTitleAnimated();
        }
    }

    private boolean allDefaultMediaBanned() {
        TLRPC.TL_chatBannedRights tL_chatBannedRights = this.defaultBannedRights;
        return tL_chatBannedRights.send_photos && tL_chatBannedRights.send_videos && tL_chatBannedRights.send_stickers && tL_chatBannedRights.send_audios && tL_chatBannedRights.send_docs && tL_chatBannedRights.send_voices && tL_chatBannedRights.send_roundvideos && tL_chatBannedRights.embed_links && tL_chatBannedRights.send_polls;
    }

    private void fillAction(final ArrayList arrayList, final Action action) {
        if (action.isPresent()) {
            if (!action.isExpandable()) {
                arrayList.add(UItem.asRoundCheckbox(action.type, action.title).setChecked(action.selectedCount > 0));
                return;
            }
            int i = action.type;
            String str = action.title;
            int count = action.selectedCount;
            if (count <= 0) {
                count = action.getCount();
            }
            arrayList.add(UItem.asUserGroupCheckbox(i, str, String.valueOf(count)).setChecked(action.selectedCount > 0).setCollapsed(action.collapsed).setClickCallback(new View.OnClickListener() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$fillAction$7(action, view);
                }
            }));
            if (action.collapsed) {
                return;
            }
            action.forEach(new Utilities.IndexedConsumer() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda15
                @Override // org.telegram.messenger.Utilities.IndexedConsumer
                public final void accept(Object obj, int i2) {
                    ArrayList arrayList2 = arrayList;
                    DeleteMessagesBottomSheet.Action action2 = action;
                    arrayList2.add(UItem.asUserCheckbox((action2.type << 24) | i2, (TLObject) obj).setChecked(action2.checks[i2]).setPad(1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillAction$7(Action action, View view) {
        saveScrollPosition();
        action.collapseOrExpand();
        applyScrolledPosition(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0262  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void fillItems(ArrayList arrayList, final UniversalAdapter universalAdapter) {
        if (this.messages == null) {
            return;
        }
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.DeleteAdditionalActions)));
        fillAction(arrayList, this.report);
        fillAction(arrayList, this.deleteAll);
        fillAction(arrayList, this.banOrRestrict);
        if (this.monoforum || !this.banOrRestrict.isPresent()) {
            return;
        }
        if (this.restrict) {
            arrayList.add(UItem.asShadow(null));
            boolean z = false;
            if (this.banOrRestrict.isExpandable()) {
                arrayList.add(UItem.asAnimatedHeader(0, LocaleController.formatPluralString("UserRestrictionsCanDoUsers", this.banOrRestrict.selectedCount, new Object[0])));
            } else {
                arrayList.add(UItem.asAnimatedHeader(0, LocaleController.getString(C2888R.string.UserRestrictionsCanDo)));
            }
            arrayList.add(UItem.asSwitch(0, LocaleController.getString(C2888R.string.UserRestrictionsSend)).setChecked((this.bannedRights.send_plain || this.defaultBannedRights.send_plain) ? false : true).setLocked(this.defaultBannedRights.send_plain));
            final int sendMediaSelectedCount = getSendMediaSelectedCount();
            arrayList.add(UItem.asExpandableSwitch(1, LocaleController.getString(C2888R.string.UserRestrictionsSendMedia), String.format(Locale.US, "%d/9", Integer.valueOf(sendMediaSelectedCount))).setChecked(sendMediaSelectedCount > 0).setLocked(allDefaultMediaBanned()).setCollapsed(this.sendMediaCollapsed).setClickCallback(new View.OnClickListener() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$fillItems$9(sendMediaSelectedCount, universalAdapter, view);
                }
            }));
            if (!this.sendMediaCollapsed) {
                arrayList.add(UItem.asRoundCheckbox(6, LocaleController.getString(C2888R.string.SendMediaPermissionPhotos)).setChecked((this.bannedRights.send_photos || this.defaultBannedRights.send_photos) ? false : true).setLocked(this.defaultBannedRights.send_photos).setPad(1));
                arrayList.add(UItem.asRoundCheckbox(7, LocaleController.getString(C2888R.string.SendMediaPermissionVideos)).setChecked((this.bannedRights.send_videos || this.defaultBannedRights.send_videos) ? false : true).setLocked(this.defaultBannedRights.send_videos).setPad(1));
                arrayList.add(UItem.asRoundCheckbox(8, LocaleController.getString(C2888R.string.SendMediaPermissionFiles)).setChecked((this.bannedRights.send_docs || this.defaultBannedRights.send_docs) ? false : true).setLocked(this.defaultBannedRights.send_docs).setPad(1));
                arrayList.add(UItem.asRoundCheckbox(9, LocaleController.getString(C2888R.string.SendMediaPermissionMusic)).setChecked((this.bannedRights.send_audios || this.defaultBannedRights.send_audios) ? false : true).setLocked(this.defaultBannedRights.send_audios).setPad(1));
                arrayList.add(UItem.asRoundCheckbox(10, LocaleController.getString(C2888R.string.SendMediaPermissionVoice)).setChecked((this.bannedRights.send_voices || this.defaultBannedRights.send_voices) ? false : true).setLocked(this.defaultBannedRights.send_voices).setPad(1));
                arrayList.add(UItem.asRoundCheckbox(11, LocaleController.getString(C2888R.string.SendMediaPermissionRound)).setChecked((this.bannedRights.send_roundvideos || this.defaultBannedRights.send_roundvideos) ? false : true).setLocked(this.defaultBannedRights.send_roundvideos).setPad(1));
                arrayList.add(UItem.asRoundCheckbox(12, LocaleController.getString(C2888R.string.SendMediaPermissionStickersGifs)).setChecked((this.bannedRights.send_stickers || this.defaultBannedRights.send_stickers) ? false : true).setLocked(this.defaultBannedRights.send_stickers).setPad(1));
                arrayList.add(UItem.asRoundCheckbox(13, LocaleController.getString(C2888R.string.SendMediaPolls)).setChecked((this.bannedRights.send_polls || this.defaultBannedRights.send_polls) ? false : true).setLocked(this.defaultBannedRights.send_polls).setPad(1));
                UItem uItemAsRoundCheckbox = UItem.asRoundCheckbox(14, LocaleController.getString(C2888R.string.UserRestrictionsEmbedLinks));
                TLRPC.TL_chatBannedRights tL_chatBannedRights = this.bannedRights;
                if (!tL_chatBannedRights.embed_links) {
                    TLRPC.TL_chatBannedRights tL_chatBannedRights2 = this.defaultBannedRights;
                    boolean z2 = (tL_chatBannedRights2.embed_links || tL_chatBannedRights.send_plain || tL_chatBannedRights2.send_plain) ? false : true;
                    arrayList.add(uItemAsRoundCheckbox.setChecked(z2).setLocked(this.defaultBannedRights.embed_links).setPad(1));
                }
            }
            arrayList.add(UItem.asSwitch(2, LocaleController.getString(C2888R.string.UserRestrictionsInviteUsers)).setChecked((this.bannedRights.invite_users || this.defaultBannedRights.invite_users) ? false : true).setLocked(this.defaultBannedRights.invite_users));
            arrayList.add(UItem.asSwitch(3, LocaleController.getString(C2888R.string.UserRestrictionsPinMessages)).setChecked((this.bannedRights.pin_messages || this.defaultBannedRights.pin_messages) ? false : true).setLocked(this.defaultBannedRights.pin_messages));
            arrayList.add(UItem.asSwitch(4, LocaleController.getString(C2888R.string.UserRestrictionsChangeInfo)).setChecked((this.bannedRights.change_info || this.defaultBannedRights.change_info) ? false : true).setLocked(this.defaultBannedRights.change_info));
            if (this.isForum) {
                UItem uItemAsSwitch = UItem.asSwitch(5, LocaleController.getString(C2888R.string.CreateTopicsPermission));
                if (!this.bannedRights.manage_topics && !this.defaultBannedRights.manage_topics) {
                    z = true;
                }
                arrayList.add(uItemAsSwitch.setChecked(z).setLocked(this.defaultBannedRights.manage_topics));
            }
        }
        if (this.canRestrict) {
            arrayList.add(UItem.asShadowCollapseButton(1, LocaleController.getString(getRestrictToggleTextKey())).setCollapsed(!this.restrict).accent());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$9(int i, UniversalAdapter universalAdapter, View view) {
        if (allDefaultMediaBanned()) {
            new AlertDialog.Builder(getContext()).setTitle(LocaleController.getString(C2888R.string.UserRestrictionsCantModify)).setMessage(LocaleController.getString(C2888R.string.UserRestrictionsCantModifyDisabled)).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).create().show();
            return;
        }
        boolean z = i <= 0;
        TLRPC.TL_chatBannedRights tL_chatBannedRights = this.bannedRights;
        tL_chatBannedRights.send_media = !z;
        tL_chatBannedRights.send_photos = !z;
        tL_chatBannedRights.send_videos = !z;
        tL_chatBannedRights.send_stickers = !z;
        tL_chatBannedRights.send_gifs = !z;
        tL_chatBannedRights.send_inline = !z;
        tL_chatBannedRights.send_games = !z;
        tL_chatBannedRights.send_audios = !z;
        tL_chatBannedRights.send_docs = !z;
        tL_chatBannedRights.send_voices = !z;
        tL_chatBannedRights.send_roundvideos = !z;
        tL_chatBannedRights.embed_links = !z;
        tL_chatBannedRights.send_polls = !z;
        onRestrictionsChanged();
        universalAdapter.update(true);
    }

    private int getRestrictToggleTextKey() {
        if (!this.banOrRestrict.isExpandable()) {
            if (this.restrict) {
                return C2888R.string.DeleteToggleBanUser;
            }
            return C2888R.string.DeleteToggleRestrictUser;
        }
        if (this.restrict) {
            return C2888R.string.DeleteToggleBanUsers;
        }
        return C2888R.string.DeleteToggleRestrictUsers;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void onRestrictionsChanged() {
        if (this.restrict && this.banOrRestrict.isPresent()) {
            this.banChecked = this.banOrRestrict.selectedCount > 0;
        }
        if (this.restrict && this.banOrRestrict.isPresent()) {
            Action action = this.banOrRestrict;
            if (action.selectedCount == 0) {
                action.toggleAllChecks();
            }
        } else if (!this.restrict && this.banOrRestrict.isPresent()) {
            boolean z = this.banChecked;
            Action action2 = this.banOrRestrict;
            if (z != (action2.selectedCount > 0)) {
                action2.toggleAllChecks();
            }
        }
        if (this.restrict || !this.banOrRestrict.isPresent()) {
            return;
        }
        this.banChecked = this.banOrRestrict.selectedCount > 0;
    }

    private void onDeleteAllChanged() {
        if (this.participantMessageCountsLoaded) {
            updateTitleAnimated();
        } else {
            updateParticipantMessageCounts();
        }
    }

    private void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.viewType;
        if (i2 == 37) {
            int i3 = uItem.f2105id;
            int i4 = i3 >>> 24;
            int i5 = i3 & 16777215;
            if (i4 == 0) {
                this.report.toggleCheck(i5);
                return;
            }
            if (i4 == 1) {
                this.deleteAll.toggleCheck(i5);
                onDeleteAllChanged();
                return;
            } else {
                if (i4 == 2) {
                    this.banOrRestrict.toggleCheck(i5);
                    return;
                }
                return;
            }
        }
        if (i2 != 36 && i2 != 35) {
            if (i2 != 39) {
                if (i2 == 40) {
                    this.sendMediaCollapsed = !this.sendMediaCollapsed;
                    saveScrollPosition();
                    this.adapter.update(true);
                    applyScrolledPosition(true);
                    return;
                }
                if (i2 == 38) {
                    boolean z = this.restrict;
                    this.restrict = !z;
                    this.banOrRestrict.setFilter(!z ? this.restrictFilter : this.banFilter);
                    this.adapter.update(true);
                    onRestrictionsChanged();
                    return;
                }
                return;
            }
            if (uItem.locked) {
                new AlertDialog.Builder(getContext()).setTitle(LocaleController.getString(C2888R.string.UserRestrictionsCantModify)).setMessage(LocaleController.getString(C2888R.string.UserRestrictionsCantModifyDisabled)).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).create().show();
                return;
            }
            int i6 = uItem.f2105id;
            if (i6 == 2) {
                this.bannedRights.invite_users = !r4.invite_users;
                onRestrictionsChanged();
            } else if (i6 == 3) {
                this.bannedRights.pin_messages = !r4.pin_messages;
                onRestrictionsChanged();
            } else if (i6 == 4) {
                this.bannedRights.change_info = !r4.change_info;
                onRestrictionsChanged();
            } else if (i6 == 5) {
                this.bannedRights.manage_topics = !r4.manage_topics;
                onRestrictionsChanged();
            } else if (i6 == 0) {
                this.bannedRights.send_plain = !r4.send_plain;
                onRestrictionsChanged();
            }
            this.adapter.update(true);
            return;
        }
        int i7 = uItem.f2105id;
        if (i7 == 0) {
            this.report.toggleAllChecks();
            return;
        }
        if (i7 == 1) {
            this.deleteAll.toggleAllChecks();
            onDeleteAllChanged();
            return;
        }
        if (i7 == 2) {
            this.banOrRestrict.toggleAllChecks();
            return;
        }
        if (i2 == 35) {
            if (uItem.locked) {
                new AlertDialog.Builder(getContext()).setTitle(LocaleController.getString(C2888R.string.UserRestrictionsCantModify)).setMessage(LocaleController.getString(C2888R.string.UserRestrictionsCantModifyDisabled)).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).create().show();
                return;
            }
            if (i7 == 6) {
                this.bannedRights.send_photos = !r4.send_photos;
                onRestrictionsChanged();
            } else if (i7 == 7) {
                this.bannedRights.send_videos = !r4.send_videos;
                onRestrictionsChanged();
            } else if (i7 == 9) {
                this.bannedRights.send_audios = !r4.send_audios;
                onRestrictionsChanged();
            } else if (i7 == 8) {
                this.bannedRights.send_docs = !r4.send_docs;
                onRestrictionsChanged();
            } else if (i7 == 11) {
                this.bannedRights.send_roundvideos = !r4.send_roundvideos;
                onRestrictionsChanged();
            } else if (i7 == 10) {
                this.bannedRights.send_voices = !r4.send_voices;
                onRestrictionsChanged();
            } else if (i7 == 12) {
                TLRPC.TL_chatBannedRights tL_chatBannedRights = this.bannedRights;
                boolean z2 = !tL_chatBannedRights.send_stickers;
                tL_chatBannedRights.send_inline = z2;
                tL_chatBannedRights.send_gifs = z2;
                tL_chatBannedRights.send_games = z2;
                tL_chatBannedRights.send_stickers = z2;
                onRestrictionsChanged();
            } else if (i7 == 14) {
                TLRPC.TL_chatBannedRights tL_chatBannedRights2 = this.bannedRights;
                if (tL_chatBannedRights2.send_plain || this.defaultBannedRights.send_plain) {
                    int i8 = 0;
                    while (true) {
                        if (i8 >= this.adapter.getItemCount()) {
                            break;
                        }
                        UItem item = this.adapter.getItem(i8);
                        if (item.viewType == 39 && item.f2105id == 0) {
                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.recyclerListView.findViewHolderForAdapterPosition(i8 + 1);
                            if (viewHolderFindViewHolderForAdapterPosition != null) {
                                View view2 = viewHolderFindViewHolderForAdapterPosition.itemView;
                                float f3 = -this.shiftDp;
                                this.shiftDp = f3;
                                AndroidUtilities.shakeViewSpring(view2, f3);
                            }
                        } else {
                            i8++;
                        }
                    }
                    BotWebViewVibrationEffect.APP_ERROR.vibrate();
                    return;
                }
                tL_chatBannedRights2.embed_links = !tL_chatBannedRights2.embed_links;
                onRestrictionsChanged();
            } else if (i7 == 13) {
                this.bannedRights.send_polls = !r4.send_polls;
                onRestrictionsChanged();
            }
            this.adapter.update(true);
        }
    }

    private void performDelete() {
        ArrayList<Integer> arrayList = (ArrayList) Collection.EL.stream(this.messages).filter(new Predicate() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda7
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m1254or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$performDelete$10((MessageObject) obj);
            }
        }).map(new DeleteMessagesBottomSheet$$ExternalSyntheticLambda8()).collect(Collectors.toCollection(new ExportMapper$$ExternalSyntheticLambda2()));
        ArrayList<Integer> arrayList2 = (ArrayList) Collection.EL.stream(this.messages).filter(new Predicate() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda9
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m1255or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$performDelete$11((MessageObject) obj);
            }
        }).map(new DeleteMessagesBottomSheet$$ExternalSyntheticLambda8()).collect(Collectors.toCollection(new ExportMapper$$ExternalSyntheticLambda2()));
        if (!arrayList.isEmpty()) {
            MessagesController.getInstance(this.currentAccount).deleteMessages(arrayList, null, null, -this.inChat.f1660id, this.topicId, false, this.mode);
        }
        if (!arrayList2.isEmpty()) {
            MessagesController.getInstance(this.currentAccount).deleteMessages(arrayList2, null, null, this.mergeDialogId, this.topicId, true, this.mode);
        }
        this.banOrRestrict.forEachSelected(new Utilities.IndexedConsumer() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda10
            @Override // org.telegram.messenger.Utilities.IndexedConsumer
            public final void accept(Object obj, int i) {
                this.f$0.lambda$performDelete$12((TLObject) obj, i);
            }
        });
        this.report.forEachSelected(new Utilities.IndexedConsumer() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda11
            @Override // org.telegram.messenger.Utilities.IndexedConsumer
            public final void accept(Object obj, int i) {
                this.f$0.lambda$performDelete$15((TLObject) obj, i);
            }
        });
        this.deleteAll.forEachSelected(new Utilities.IndexedConsumer() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.Utilities.IndexedConsumer
            public final void accept(Object obj, int i) {
                this.f$0.lambda$performDelete$16((TLObject) obj, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$performDelete$10(MessageObject messageObject) {
        TLRPC.Peer peer = messageObject.messageOwner.peer_id;
        return !(peer == null || peer.chat_id == (-this.mergeDialogId)) || this.mergeDialogId == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$performDelete$11(MessageObject messageObject) {
        TLRPC.Peer peer = messageObject.messageOwner.peer_id;
        if (peer == null) {
            return false;
        }
        long j = peer.chat_id;
        long j2 = this.mergeDialogId;
        return j == (-j2) && j2 != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$performDelete$12(TLObject tLObject, int i) {
        long j;
        TLRPC.Chat chat = this.inChat;
        long j2 = chat.f1660id;
        if (ChatObject.isMonoForum(chat) && ChatObject.canManageMonoForum(this.currentAccount, this.inChat)) {
            long j3 = this.inChat.linked_monoforum_id;
            if (j3 != 0) {
                j = j3;
            }
        } else {
            j = j2;
        }
        if (this.restrict) {
            TLRPC.TL_chatBannedRights tL_chatBannedRightsBannedRightsOr = bannedRightsOr(this.bannedRights, (TLRPC.TL_chatBannedRights) this.participantsBannedRights.get(i));
            if (tLObject instanceof TLRPC.User) {
                MessagesController.getInstance(this.currentAccount).setParticipantBannedRole(j, (TLRPC.User) tLObject, null, tL_chatBannedRightsBannedRightsOr, false, getBaseFragment());
                return;
            } else {
                if (tLObject instanceof TLRPC.Chat) {
                    MessagesController.getInstance(this.currentAccount).setParticipantBannedRole(j, null, (TLRPC.Chat) tLObject, tL_chatBannedRightsBannedRightsOr, false, getBaseFragment());
                    return;
                }
                return;
            }
        }
        if (tLObject instanceof TLRPC.User) {
            MessagesController.getInstance(this.currentAccount).deleteParticipantFromChat(j, (TLRPC.User) tLObject, (TLRPC.Chat) null, false, false);
        } else if (tLObject instanceof TLRPC.Chat) {
            MessagesController.getInstance(this.currentAccount).deleteParticipantFromChat(j, (TLRPC.User) null, (TLRPC.Chat) tLObject, false, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performDelete$15(final TLObject tLObject, int i) {
        TLRPC.TL_channels_reportSpam tL_channels_reportSpam = new TLRPC.TL_channels_reportSpam();
        tL_channels_reportSpam.channel = MessagesController.getInputChannel(this.inChat);
        if (tLObject instanceof TLRPC.User) {
            tL_channels_reportSpam.participant = MessagesController.getInputPeer((TLRPC.User) tLObject);
        } else if (tLObject instanceof TLRPC.Chat) {
            tL_channels_reportSpam.participant = MessagesController.getInputPeer((TLRPC.Chat) tLObject);
        }
        tL_channels_reportSpam.f1708id = (ArrayList) Collection.EL.stream(this.messages).filter(new Predicate() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda16
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m1251or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$performDelete$13((MessageObject) obj);
            }
        }).filter(new Predicate() { // from class: org.telegram.ui.Components.DeleteMessagesBottomSheet$$ExternalSyntheticLambda17
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m1252or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return DeleteMessagesBottomSheet.$r8$lambda$82O3WbpYK_gYRTgiLEYVRyur6_E(tLObject, (MessageObject) obj);
            }
        }).map(new DeleteMessagesBottomSheet$$ExternalSyntheticLambda8()).collect(Collectors.toCollection(new ExportMapper$$ExternalSyntheticLambda2()));
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_reportSpam, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$performDelete$13(MessageObject messageObject) {
        TLRPC.Peer peer = messageObject.messageOwner.peer_id;
        return (peer == null || peer.chat_id == (-this.mergeDialogId)) ? false : true;
    }

    public static /* synthetic */ boolean $r8$lambda$82O3WbpYK_gYRTgiLEYVRyur6_E(TLObject tLObject, MessageObject messageObject) {
        return tLObject instanceof TLRPC.User ? messageObject.messageOwner.from_id.user_id == ((TLRPC.User) tLObject).f1825id : (tLObject instanceof TLRPC.Chat) && messageObject.messageOwner.from_id.user_id == ((TLRPC.Chat) tLObject).f1660id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performDelete$16(TLObject tLObject, int i) {
        if (tLObject instanceof TLRPC.User) {
            MessagesController.getInstance(this.currentAccount).deleteUserChannelHistory(this.inChat, (TLRPC.User) tLObject, null, 0);
        } else if (tLObject instanceof TLRPC.Chat) {
            MessagesController.getInstance(this.currentAccount).deleteUserChannelHistory(this.inChat, null, (TLRPC.Chat) tLObject, 0);
        }
    }

    private void savePreferences() {
        SharedPreferences.Editor editorEdit = MessagesController.getInstance(this.currentAccount).getMainSettings().edit();
        editorEdit.putBoolean("delete_report", this.report.areAllSelected());
        editorEdit.putBoolean("delete_deleteAll", this.deleteAll.areAllSelected());
        editorEdit.putBoolean("delete_ban", !this.restrict && this.banOrRestrict.areAllSelected());
        editorEdit.apply();
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        savePreferences();
        super.lambda$new$0();
    }

    private void proceed() {
        lambda$new$0();
        Runnable runnable = this.onDelete;
        if (runnable != null) {
            runnable.run();
        }
        int i = this.report.selectedCount;
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        if (i > 0) {
            str = _UrlKt.FRAGMENT_ENCODE_SET + LocaleController.formatPluralString("UsersReported", this.report.selectedCount, new Object[0]);
        }
        if (this.banOrRestrict.selectedCount > 0) {
            if (!TextUtils.isEmpty(str)) {
                str = str + "\n";
            }
            if (this.restrict) {
                str = str + LocaleController.formatPluralString("UsersRestricted", this.banOrRestrict.selectedCount, new Object[0]);
            } else {
                str = str + LocaleController.formatPluralString("UsersBanned", this.banOrRestrict.selectedCount, new Object[0]);
            }
        }
        int i2 = this.banOrRestrict.selectedCount > 0 ? C2888R.raw.ic_admin : C2888R.raw.contact_check;
        if (TextUtils.isEmpty(str)) {
            BulletinFactory.m1246of(getBaseFragment()).createSimpleBulletin(i2, LocaleController.getString(C2888R.string.MessagesDeleted)).show();
        } else {
            BulletinFactory.m1246of(getBaseFragment()).createSimpleBulletin(i2, LocaleController.getString(C2888R.string.MessagesDeleted), str).show();
        }
        performDelete();
    }
}
