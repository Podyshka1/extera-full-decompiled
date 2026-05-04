package org.telegram.p029ui;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Editable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenu;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.DialogCell;
import org.telegram.p029ui.Cells.GroupCreateUserCell;
import org.telegram.p029ui.Cells.TextInfoPrivacyCell;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CircularProgressDrawable;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.CrossfadeDrawable;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EditTextBoldCursor;
import org.telegram.p029ui.Components.FolderBottomSheet;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p029ui.Components.QRCodeBottomSheet;
import org.telegram.p029ui.Components.RLottieImageView;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.TextStyleSpan;
import org.telegram.p029ui.Components.spoilers.SpoilersTextView;
import org.telegram.p029ui.FilterChatlistActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_chatlists;

/* JADX INFO: loaded from: classes6.dex */
public class FilterChatlistActivity extends BaseFragment {
    private ListAdapter adapter;
    private ActionBarMenuItem doneButton;
    private CrossfadeDrawable doneButtonDrawable;
    private ValueAnimator doneButtonDrawableAnimator;
    MessagesController.DialogFilter filter;
    private FolderBottomSheet.HeaderCell headerCountCell;
    private HintInnerCell hintCountCell;
    TL_chatlists.TL_exportedChatlistInvite invite;
    private long lastClicked;
    private long lastClickedDialogId;
    private RecyclerListView listView;
    private Utilities.Callback onDelete;
    private Utilities.Callback onEdit;
    private boolean peersChanged;
    private int savingTitleReqId;
    private boolean titleChanged;
    private ArrayList selectedPeers = new ArrayList();
    private ArrayList allowedPeers = new ArrayList();
    private ArrayList peers = new ArrayList();
    private int shiftDp = -5;
    private boolean saving = false;
    private int rowsCount = 0;
    private int hintRow = -1;
    private int linkRow = -1;
    private int linkHeaderRow = -1;
    private int linkSectionRow = -1;
    private int chatsHeaderRow = -1;
    private int chatsStartRow = -1;
    private int chatsEndRow = -1;
    private int chatsSectionRow = -1;
    private Runnable enableDoneLoading = new Runnable() { // from class: org.telegram.ui.FilterChatlistActivity$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$7();
        }
    };
    private float doneButtonAlpha = 1.0f;

    public FilterChatlistActivity(MessagesController.DialogFilter dialogFilter, TL_chatlists.TL_exportedChatlistInvite tL_exportedChatlistInvite) {
        this.filter = dialogFilter;
        this.invite = tL_exportedChatlistInvite;
    }

    public void setOnDelete(Utilities.Callback callback) {
        this.onDelete = callback;
    }

    public void setOnEdit(Utilities.Callback callback) {
        this.onEdit = callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarTitle(boolean z) {
        TL_chatlists.TL_exportedChatlistInvite tL_exportedChatlistInvite = this.invite;
        String string = TextUtils.isEmpty(tL_exportedChatlistInvite == null ? null : tL_exportedChatlistInvite.title) ? LocaleController.getString(C2888R.string.FilterShare) : this.invite.title;
        if (z) {
            this.actionBar.setTitleAnimated(string, false, 220L);
        } else {
            this.actionBar.setTitle(string);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        updateActionBarTitle(false);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.FilterChatlistActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    if (FilterChatlistActivity.this.checkDiscard(true)) {
                        FilterChatlistActivity.this.finishFragment();
                    }
                } else if (i == 1) {
                    if (Math.abs(FilterChatlistActivity.this.doneButtonAlpha - 1.0f) < 0.1f) {
                        FilterChatlistActivity.this.save();
                    } else if (Math.abs(FilterChatlistActivity.this.doneButtonAlpha - 0.5f) < 0.1f) {
                        FilterChatlistActivity.this.shakeHeader();
                    }
                }
            }
        });
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.ic_ab_done).mutate();
        int i = Theme.key_actionBarDefaultIcon;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
        CrossfadeDrawable crossfadeDrawable = new CrossfadeDrawable(drawableMutate, new CircularProgressDrawable(Theme.getColor(i)));
        this.doneButtonDrawable = crossfadeDrawable;
        this.doneButton = actionBarMenuCreateMenu.addItemWithWidth(1, crossfadeDrawable, AndroidUtilities.m1124dp(56.0f), LocaleController.getString(C2888R.string.Done));
        checkDoneButton();
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.FilterChatlistActivity.2
            @Override // android.view.ViewGroup, android.view.View
            public boolean requestFocus(int i2, Rect rect) {
                return false;
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        this.listView.setVerticalScrollBarEnabled(false);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        RecyclerListView recyclerListView2 = this.listView;
        ListAdapter listAdapter = new ListAdapter();
        this.adapter = listAdapter;
        recyclerListView2.setAdapter(listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.FilterChatlistActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$createView$0(view, i2);
            }
        });
        getMessagesController().updateFilterDialogs(this.filter);
        this.peers.clear();
        if (this.invite != null) {
            for (int i2 = 0; i2 < this.invite.peers.size(); i2++) {
                long peerDialogId = DialogObject.getPeerDialogId(this.invite.peers.get(i2));
                this.peers.add(Long.valueOf(peerDialogId));
                this.selectedPeers.add(Long.valueOf(peerDialogId));
                this.allowedPeers.add(Long.valueOf(peerDialogId));
            }
        }
        for (int i3 = 0; i3 < this.filter.dialogs.size(); i3++) {
            TLRPC.Dialog dialog = this.filter.dialogs.get(i3);
            if (dialog != null && !DialogObject.isEncryptedDialog(dialog.f1666id) && !this.peers.contains(Long.valueOf(dialog.f1666id))) {
                long j = dialog.f1666id;
                boolean zCanAddToFolder = j < 0;
                if (j < 0) {
                    zCanAddToFolder = FilterCreateActivity.canAddToFolder(getMessagesController().getChat(Long.valueOf(-dialog.f1666id)));
                }
                if (zCanAddToFolder) {
                    this.peers.add(Long.valueOf(dialog.f1666id));
                    this.allowedPeers.add(Long.valueOf(dialog.f1666id));
                }
            }
        }
        for (int i4 = 0; i4 < this.filter.dialogs.size(); i4++) {
            TLRPC.Dialog dialog2 = this.filter.dialogs.get(i4);
            if (dialog2 != null && !DialogObject.isEncryptedDialog(dialog2.f1666id) && !this.peers.contains(Long.valueOf(dialog2.f1666id)) && !this.allowedPeers.contains(Long.valueOf(dialog2.f1666id))) {
                this.peers.add(Long.valueOf(dialog2.f1666id));
            }
        }
        updateRows();
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view, int i) {
        String string;
        String string2;
        if (getParentActivity() != null && (view instanceof GroupCreateUserCell)) {
            Long l = (Long) this.peers.get(i - this.chatsStartRow);
            long jLongValue = l.longValue();
            if (this.selectedPeers.contains(l)) {
                this.selectedPeers.remove(l);
                this.peersChanged = true;
                checkDoneButton();
                ((GroupCreateUserCell) view).setChecked(false, true);
            } else if (this.allowedPeers.contains(l)) {
                if (this.selectedPeers.size() + 1 > getMaxChats()) {
                    showDialog(new LimitReachedBottomSheet(this, getContext(), 4, this.currentAccount, null));
                    return;
                }
                this.selectedPeers.add(l);
                this.peersChanged = true;
                checkDoneButton();
                ((GroupCreateUserCell) view).setChecked(true, true);
            } else {
                int i2 = -this.shiftDp;
                this.shiftDp = i2;
                AndroidUtilities.shakeViewSpring(view, i2);
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
                ArrayList arrayList = new ArrayList();
                if (jLongValue >= 0) {
                    arrayList.add(getMessagesController().getUser(l));
                    TLRPC.User user = getMessagesController().getUser(l);
                    if (user != null && user.bot) {
                        string2 = LocaleController.getString(C2888R.string.FilterInviteBotToast);
                    } else {
                        string2 = LocaleController.getString(C2888R.string.FilterInviteUserToast);
                    }
                } else {
                    TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(-jLongValue));
                    if (ChatObject.isChannelAndNotMegaGroup(chat)) {
                        if (ChatObject.isPublic(chat)) {
                            string = LocaleController.getString(C2888R.string.FilterInviteChannelToast);
                        } else {
                            string = LocaleController.getString(C2888R.string.FilterInvitePrivateChannelToast);
                        }
                    } else if (ChatObject.isPublic(chat)) {
                        string = LocaleController.getString(C2888R.string.FilterInviteGroupToast);
                    } else {
                        string = LocaleController.getString(C2888R.string.FilterInvitePrivateGroupToast);
                    }
                    arrayList.add(chat);
                    string2 = string;
                }
                if (this.lastClickedDialogId != jLongValue || System.currentTimeMillis() - this.lastClicked > 1500) {
                    this.lastClickedDialogId = jLongValue;
                    this.lastClicked = System.currentTimeMillis();
                    BulletinFactory.m1246of(this).createChatsBulletin(arrayList, string2, null).show();
                    return;
                }
                return;
            }
            checkPeersChanged();
            updateHeaderCell(true);
            updateHintCell(true);
        }
    }

    private void checkPeersChanged() {
        TL_chatlists.TL_exportedChatlistInvite tL_exportedChatlistInvite = this.invite;
        if (tL_exportedChatlistInvite == null || tL_exportedChatlistInvite.url == null || !this.peersChanged) {
            return;
        }
        boolean z = true;
        boolean z2 = this.selectedPeers.size() != this.invite.peers.size();
        if (z2) {
            z = z2;
        } else {
            for (int i = 0; i < this.invite.peers.size(); i++) {
                if (!this.selectedPeers.contains(Long.valueOf(DialogObject.getPeerDialogId(this.invite.peers.get(i))))) {
                    break;
                }
            }
            z = z2;
        }
        if (z) {
            return;
        }
        this.peersChanged = false;
        checkDoneButton();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        return checkDiscard(z);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        return checkDiscard(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void save() {
        if (this.invite == null || this.saving || !this.peersChanged) {
            return;
        }
        updateDoneProgress(true);
        this.saving = true;
        this.invite.peers.clear();
        for (int i = 0; i < this.selectedPeers.size(); i++) {
            this.invite.peers.add(getMessagesController().getPeer(((Long) this.selectedPeers.get(i)).longValue()));
        }
        TL_chatlists.TL_chatlists_editExportedInvite tL_chatlists_editExportedInvite = new TL_chatlists.TL_chatlists_editExportedInvite();
        TL_chatlists.TL_inputChatlistDialogFilter tL_inputChatlistDialogFilter = new TL_chatlists.TL_inputChatlistDialogFilter();
        tL_chatlists_editExportedInvite.chatlist = tL_inputChatlistDialogFilter;
        tL_inputChatlistDialogFilter.filter_id = this.filter.f1601id;
        tL_chatlists_editExportedInvite.slug = getSlug();
        tL_chatlists_editExportedInvite.revoked = this.invite.revoked;
        tL_chatlists_editExportedInvite.flags |= 4;
        for (int i2 = 0; i2 < this.selectedPeers.size(); i2++) {
            tL_chatlists_editExportedInvite.peers.add(getMessagesController().getInputPeer(((Long) this.selectedPeers.get(i2)).longValue()));
        }
        getConnectionsManager().sendRequest(tL_chatlists_editExportedInvite, new RequestDelegate() { // from class: org.telegram.ui.FilterChatlistActivity$$ExternalSyntheticLambda8
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$save$2(tLObject, tL_error);
            }
        });
        Utilities.Callback callback = this.onEdit;
        if (callback != null) {
            callback.run(this.invite);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$save$2(TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterChatlistActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$save$1(tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$save$1(TLRPC.TL_error tL_error) {
        updateDoneProgress(false);
        this.saving = false;
        if (tL_error != null && "INVITES_TOO_MUCH".equals(tL_error.text)) {
            showDialog(new LimitReachedBottomSheet(this, getContext(), 12, this.currentAccount, null));
            return;
        }
        if (tL_error != null && "INVITE_PEERS_TOO_MUCH".equals(tL_error.text)) {
            showDialog(new LimitReachedBottomSheet(this, getContext(), 4, this.currentAccount, null));
        } else if (tL_error != null && "CHATLISTS_TOO_MUCH".equals(tL_error.text)) {
            showDialog(new LimitReachedBottomSheet(this, getContext(), 13, this.currentAccount, null));
        } else {
            finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveTitle() {
        if (this.savingTitleReqId != 0) {
            getConnectionsManager().cancelRequest(this.savingTitleReqId, true);
            this.savingTitleReqId = 0;
        }
        TL_chatlists.TL_chatlists_editExportedInvite tL_chatlists_editExportedInvite = new TL_chatlists.TL_chatlists_editExportedInvite();
        TL_chatlists.TL_inputChatlistDialogFilter tL_inputChatlistDialogFilter = new TL_chatlists.TL_inputChatlistDialogFilter();
        tL_chatlists_editExportedInvite.chatlist = tL_inputChatlistDialogFilter;
        tL_inputChatlistDialogFilter.filter_id = this.filter.f1601id;
        tL_chatlists_editExportedInvite.slug = getSlug();
        TL_chatlists.TL_exportedChatlistInvite tL_exportedChatlistInvite = this.invite;
        tL_chatlists_editExportedInvite.revoked = tL_exportedChatlistInvite.revoked;
        tL_chatlists_editExportedInvite.flags |= 2;
        tL_chatlists_editExportedInvite.title = tL_exportedChatlistInvite.title;
        this.savingTitleReqId = getConnectionsManager().sendRequest(tL_chatlists_editExportedInvite, new RequestDelegate() { // from class: org.telegram.ui.FilterChatlistActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$saveTitle$4(tLObject, tL_error);
            }
        });
        Utilities.Callback callback = this.onEdit;
        if (callback != null) {
            callback.run(this.invite);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveTitle$4(TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterChatlistActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$saveTitle$3(tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveTitle$3(TLRPC.TL_error tL_error) {
        this.savingTitleReqId = 0;
        if (tL_error == null) {
            BulletinFactory.m1246of(this).createSimpleBulletin(C2888R.raw.contact_check, LocaleController.getString(C2888R.string.FilterInviteNameEdited)).show();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        if (this.savingTitleReqId != 0) {
            getConnectionsManager().cancelRequest(this.savingTitleReqId, true);
            this.savingTitleReqId = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHintCell(boolean z) {
        HintInnerCell hintInnerCell = this.hintCountCell;
        if (hintInnerCell == null) {
            return;
        }
        if (this.invite == null) {
            hintInnerCell.setText(LocaleController.getString(C2888R.string.FilterInviteHeaderNo), false);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = hintInnerCell.getSubtitleTextView().getPaint().getFontMetricsInt();
        this.hintCountCell.setText(AndroidUtilities.replaceTags(LocaleController.formatPluralSpannable("FilterInviteHeader", this.selectedPeers.size(), MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji(this.filter.name, fontMetricsInt, false), this.filter.entities, fontMetricsInt))), this.filter.title_noanimate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeaderCell(boolean z) {
        FolderBottomSheet.HeaderCell headerCell = this.headerCountCell;
        if (headerCell == null) {
            return;
        }
        headerCell.setText(this.selectedPeers.size() <= 0 ? LocaleController.getString("FilterInviteHeaderChatsEmpty") : LocaleController.formatPluralString("FilterInviteHeaderChats", this.selectedPeers.size(), new Object[0]), z);
        if (this.allowedPeers.size() > 1) {
            final boolean z2 = this.selectedPeers.size() >= Math.min(getMaxChats(), this.allowedPeers.size());
            this.headerCountCell.setAction(LocaleController.getString(!z2 ? C2888R.string.SelectAll : C2888R.string.DeselectAll), new Runnable() { // from class: org.telegram.ui.FilterChatlistActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateHeaderCell$5(z2);
                }
            });
        } else {
            this.headerCountCell.setAction(_UrlKt.FRAGMENT_ENCODE_SET, null);
        }
        if (z) {
            AndroidUtilities.makeAccessibilityAnnouncement(((Object) this.headerCountCell.textView.getText()) + ", " + ((Object) this.headerCountCell.actionTextView.getText()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateHeaderCell$5(boolean z) {
        deselectAll(this.headerCountCell, z);
    }

    public void updateRows() {
        this.rowsCount = 1;
        this.hintRow = 0;
        TL_chatlists.TL_exportedChatlistInvite tL_exportedChatlistInvite = this.invite;
        if (tL_exportedChatlistInvite != null) {
            int i = 1 + 1;
            this.linkHeaderRow = 1;
            this.linkRow = i;
            this.rowsCount = i + 2;
            this.linkSectionRow = i + 1;
        } else {
            this.linkHeaderRow = -1;
            this.linkRow = -1;
            this.linkSectionRow = -1;
        }
        if (tL_exportedChatlistInvite == null && this.peers.isEmpty()) {
            this.chatsHeaderRow = -1;
            this.chatsStartRow = -1;
            this.chatsEndRow = -1;
            this.chatsSectionRow = -1;
        } else {
            int i2 = this.rowsCount;
            int i3 = i2 + 1;
            this.chatsHeaderRow = i2;
            int i4 = i2 + 2;
            this.rowsCount = i4;
            this.chatsStartRow = i3;
            int size = i4 + (this.peers.size() - 1);
            this.chatsEndRow = size;
            this.rowsCount = size + 1;
            this.chatsSectionRow = size;
        }
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSlug() {
        String str;
        TL_chatlists.TL_exportedChatlistInvite tL_exportedChatlistInvite = this.invite;
        if (tL_exportedChatlistInvite == null || (str = tL_exportedChatlistInvite.url) == null) {
            return null;
        }
        return str.substring(str.lastIndexOf(47) + 1);
    }

    class ListAdapter extends RecyclerListView.SelectionAdapter {
        ListAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View headerCell;
            if (i == 0) {
                headerCell = new HintInnerCell(FilterChatlistActivity.this.getContext(), C2888R.raw.folder_share);
            } else if (i == 2) {
                headerCell = new TextInfoPrivacyCell(FilterChatlistActivity.this.getContext());
            } else if (i == 3) {
                headerCell = new C55971(FilterChatlistActivity.this.getContext(), FilterChatlistActivity.this);
                headerCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 4) {
                headerCell = new GroupCreateUserCell(FilterChatlistActivity.this.getContext(), 1, 0, false);
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 5) {
                headerCell = new FolderBottomSheet.HeaderCell(FilterChatlistActivity.this.getContext());
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else {
                headerCell = null;
            }
            return new RecyclerListView.Holder(headerCell);
        }

        /* JADX INFO: renamed from: org.telegram.ui.FilterChatlistActivity$ListAdapter$1 */
        class C55971 extends InviteLinkCell {
            C55971(Context context, BaseFragment baseFragment) {
                super(context, baseFragment);
            }

            @Override // org.telegram.ui.FilterChatlistActivity.InviteLinkCell
            protected void deleteLink() {
                TL_chatlists.TL_chatlists_deleteExportedInvite tL_chatlists_deleteExportedInvite = new TL_chatlists.TL_chatlists_deleteExportedInvite();
                TL_chatlists.TL_inputChatlistDialogFilter tL_inputChatlistDialogFilter = new TL_chatlists.TL_inputChatlistDialogFilter();
                tL_chatlists_deleteExportedInvite.chatlist = tL_inputChatlistDialogFilter;
                FilterChatlistActivity filterChatlistActivity = FilterChatlistActivity.this;
                tL_inputChatlistDialogFilter.filter_id = filterChatlistActivity.filter.f1601id;
                tL_chatlists_deleteExportedInvite.slug = filterChatlistActivity.getSlug();
                final AlertDialog alertDialog = new AlertDialog(getContext(), 3);
                alertDialog.showDelayed(180L);
                FilterChatlistActivity.this.getConnectionsManager().sendRequest(tL_chatlists_deleteExportedInvite, new RequestDelegate() { // from class: org.telegram.ui.FilterChatlistActivity$ListAdapter$1$$ExternalSyntheticLambda7
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$deleteLink$3(alertDialog, tLObject, tL_error);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$deleteLink$3(final AlertDialog alertDialog, TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterChatlistActivity$ListAdapter$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$deleteLink$2(alertDialog);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$deleteLink$2(AlertDialog alertDialog) {
                alertDialog.dismiss();
                if (FilterChatlistActivity.this.onDelete != null) {
                    FilterChatlistActivity.this.onDelete.run(FilterChatlistActivity.this.invite);
                }
                FilterChatlistActivity.this.finishFragment();
            }

            @Override // org.telegram.ui.FilterChatlistActivity.InviteLinkCell
            public void editname() {
                TL_chatlists.TL_exportedChatlistInvite tL_exportedChatlistInvite = FilterChatlistActivity.this.invite;
                if (tL_exportedChatlistInvite == null || tL_exportedChatlistInvite.url == null) {
                    return;
                }
                final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(getContext());
                editTextBoldCursor.setBackgroundDrawable(Theme.createEditTextDrawable(getContext(), true));
                final AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setDialogButtonColorKey(Theme.key_dialogButton);
                builder.setTitle(LocaleController.getString(C2888R.string.FilterInviteEditName));
                builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.FilterChatlistActivity$ListAdapter$1$$ExternalSyntheticLambda2
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        AndroidUtilities.hideKeyboard(editTextBoldCursor);
                    }
                });
                LinearLayout linearLayout = new LinearLayout(getContext());
                linearLayout.setOrientation(1);
                builder.setView(linearLayout);
                editTextBoldCursor.setTextSize(1, 16.0f);
                int i = Theme.key_dialogTextBlack;
                editTextBoldCursor.setTextColor(Theme.getColor(i));
                editTextBoldCursor.setMaxLines(1);
                editTextBoldCursor.setLines(1);
                editTextBoldCursor.setInputType(16385);
                editTextBoldCursor.setGravity(51);
                editTextBoldCursor.setSingleLine(true);
                editTextBoldCursor.setImeOptions(6);
                editTextBoldCursor.setHint(FilterChatlistActivity.this.filter.name);
                editTextBoldCursor.setHintTextColor(Theme.getColor(Theme.key_dialogTextHint));
                editTextBoldCursor.setCursorColor(Theme.getColor(i));
                editTextBoldCursor.setCursorSize(AndroidUtilities.m1124dp(20.0f));
                editTextBoldCursor.setCursorWidth(1.5f);
                editTextBoldCursor.setPadding(0, AndroidUtilities.m1124dp(4.0f), 0, 0);
                linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, 36, 51, 24, 6, 24, 0));
                editTextBoldCursor.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.FilterChatlistActivity$ListAdapter$1$$ExternalSyntheticLambda3
                    @Override // android.widget.TextView.OnEditorActionListener
                    public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                        return FilterChatlistActivity.ListAdapter.C55971.m14202$r8$lambda$7YDJLZtC9zlvS_dgDCiC9wZWSw(builder, textView, i2, keyEvent);
                    }
                });
                editTextBoldCursor.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.FilterChatlistActivity.ListAdapter.1.1
                    boolean ignoreTextChange;

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        if (!this.ignoreTextChange && editable.length() > 32) {
                            this.ignoreTextChange = true;
                            editable.delete(32, editable.length());
                            AndroidUtilities.shakeView(editTextBoldCursor);
                            try {
                                editTextBoldCursor.performHapticFeedback(3, 2);
                            } catch (Exception unused) {
                            }
                            this.ignoreTextChange = false;
                        }
                    }
                });
                if (!TextUtils.isEmpty(FilterChatlistActivity.this.invite.title)) {
                    editTextBoldCursor.setText(FilterChatlistActivity.this.invite.title);
                    editTextBoldCursor.setSelection(editTextBoldCursor.length());
                }
                builder.setPositiveButton(LocaleController.getString(C2888R.string.Save), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.FilterChatlistActivity$ListAdapter$1$$ExternalSyntheticLambda4
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$editname$6(editTextBoldCursor, builder, alertDialog, i2);
                    }
                });
                AlertDialog alertDialogCreate = builder.create();
                alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.FilterChatlistActivity$ListAdapter$1$$ExternalSyntheticLambda5
                    @Override // android.content.DialogInterface.OnShowListener
                    public final void onShow(DialogInterface dialogInterface) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterChatlistActivity$ListAdapter$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                FilterChatlistActivity.ListAdapter.C55971.$r8$lambda$OMUeedhUn3MJzL3eK6XyRJnyWH8(editTextBoldCursor);
                            }
                        });
                    }
                });
                alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.FilterChatlistActivity$ListAdapter$1$$ExternalSyntheticLambda6
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        AndroidUtilities.hideKeyboard(editTextBoldCursor);
                    }
                });
                alertDialogCreate.show();
                alertDialogCreate.setTextColor(Theme.getColor(i));
                editTextBoldCursor.requestFocus();
            }

            /* JADX INFO: renamed from: $r8$lambda$7YDJLZtC9zlvS_dgDCiC9wZW-Sw, reason: not valid java name */
            public static /* synthetic */ boolean m14202$r8$lambda$7YDJLZtC9zlvS_dgDCiC9wZWSw(AlertDialog.Builder builder, TextView textView, int i, KeyEvent keyEvent) {
                AndroidUtilities.hideKeyboard(textView);
                builder.create().getButton(-1).callOnClick();
                return false;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$editname$6(EditTextBoldCursor editTextBoldCursor, AlertDialog.Builder builder, AlertDialog alertDialog, int i) {
                AndroidUtilities.hideKeyboard(editTextBoldCursor);
                builder.getDismissRunnable().run();
                FilterChatlistActivity.this.invite.title = editTextBoldCursor.getText().toString();
                FilterChatlistActivity.this.titleChanged = true;
                FilterChatlistActivity.this.updateActionBarTitle(true);
                FilterChatlistActivity.this.saveTitle();
            }

            public static /* synthetic */ void $r8$lambda$OMUeedhUn3MJzL3eK6XyRJnyWH8(EditTextBoldCursor editTextBoldCursor) {
                editTextBoldCursor.requestFocus();
                AndroidUtilities.showKeyboard(editTextBoldCursor);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String string;
            String userName;
            Object obj;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                FilterChatlistActivity.this.hintCountCell = (HintInnerCell) viewHolder.itemView;
                FilterChatlistActivity.this.updateHintCell(false);
                return;
            }
            if (itemViewType == 2) {
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(FilterChatlistActivity.this.getContext(), i == FilterChatlistActivity.this.chatsSectionRow ? C2888R.drawable.greydivider_bottom : C2888R.drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                if (i == FilterChatlistActivity.this.chatsSectionRow) {
                    textInfoPrivacyCell.setFixedSize(0);
                    FilterChatlistActivity filterChatlistActivity = FilterChatlistActivity.this;
                    if (filterChatlistActivity.invite == null || filterChatlistActivity.allowedPeers.isEmpty()) {
                        textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.FilterInviteHintNo));
                        return;
                    } else {
                        textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.FilterInviteHint));
                        return;
                    }
                }
                textInfoPrivacyCell.setFixedSize(12);
                return;
            }
            if (itemViewType == 3) {
                InviteLinkCell inviteLinkCell = (InviteLinkCell) viewHolder.itemView;
                TL_chatlists.TL_exportedChatlistInvite tL_exportedChatlistInvite = FilterChatlistActivity.this.invite;
                inviteLinkCell.setLink(tL_exportedChatlistInvite != null ? tL_exportedChatlistInvite.url : null, false);
                return;
            }
            if (itemViewType != 4) {
                if (itemViewType == 5) {
                    FolderBottomSheet.HeaderCell headerCell = (FolderBottomSheet.HeaderCell) viewHolder.itemView;
                    if (headerCell == FilterChatlistActivity.this.headerCountCell) {
                        FilterChatlistActivity.this.headerCountCell = null;
                    }
                    if (i == FilterChatlistActivity.this.linkHeaderRow) {
                        headerCell.setText(LocaleController.getString(C2888R.string.InviteLink), false);
                        headerCell.setAction(_UrlKt.FRAGMENT_ENCODE_SET, null);
                        return;
                    }
                    FilterChatlistActivity.this.headerCountCell = headerCell;
                    FilterChatlistActivity filterChatlistActivity2 = FilterChatlistActivity.this;
                    if (filterChatlistActivity2.invite == null || filterChatlistActivity2.allowedPeers.isEmpty()) {
                        headerCell.setText(LocaleController.getString(C2888R.string.FilterInviteHeaderChatsNo), false);
                        headerCell.setAction(_UrlKt.FRAGMENT_ENCODE_SET, null);
                        return;
                    } else {
                        FilterChatlistActivity.this.updateHeaderCell(false);
                        return;
                    }
                }
                return;
            }
            GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) viewHolder.itemView;
            Long l = (Long) FilterChatlistActivity.this.peers.get(i - FilterChatlistActivity.this.chatsStartRow);
            long jLongValue = l.longValue();
            if (jLongValue >= 0) {
                TLRPC.User user = FilterChatlistActivity.this.getMessagesController().getUser(l);
                if (user != null) {
                    userName = UserObject.getUserName(user);
                    obj = user;
                } else {
                    userName = null;
                    obj = user;
                }
            } else {
                TLRPC.Chat chat = FilterChatlistActivity.this.getMessagesController().getChat(Long.valueOf(-jLongValue));
                if (chat != null) {
                    string = chat.title;
                    if (chat.participants_count != 0) {
                        if (ChatObject.isChannelAndNotMegaGroup(chat)) {
                            string = LocaleController.formatPluralStringComma("Subscribers", chat.participants_count);
                        } else {
                            string = LocaleController.formatPluralStringComma("Members", chat.participants_count);
                        }
                    } else if (ChatObject.isChannelAndNotMegaGroup(chat)) {
                        string = LocaleController.getString("ChannelPublic");
                    } else {
                        string = LocaleController.getString("MegaPublic");
                    }
                } else {
                    string = null;
                }
                String str = string;
                string = string;
                userName = str;
                obj = chat;
            }
            if (FilterChatlistActivity.this.allowedPeers.contains(l)) {
                groupCreateUserCell.setForbiddenCheck(false);
                groupCreateUserCell.setChecked(FilterChatlistActivity.this.selectedPeers.contains(l), false);
            } else {
                groupCreateUserCell.setForbiddenCheck(true);
                groupCreateUserCell.setChecked(false, false);
                if (obj instanceof TLRPC.User) {
                    if (((TLRPC.User) obj).bot) {
                        string = LocaleController.getString(C2888R.string.FilterInviteBot);
                    } else {
                        string = LocaleController.getString(C2888R.string.FilterInviteUser);
                    }
                } else if (obj instanceof TLRPC.Chat) {
                    if (ChatObject.isChannelAndNotMegaGroup((TLRPC.Chat) obj)) {
                        string = LocaleController.getString(C2888R.string.FilterInviteChannel);
                    } else {
                        string = LocaleController.getString(C2888R.string.FilterInviteGroup);
                    }
                }
            }
            groupCreateUserCell.setTag(l);
            groupCreateUserCell.setObject(obj, userName, string);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return FilterChatlistActivity.this.rowsCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0) {
                return 0;
            }
            if (i == FilterChatlistActivity.this.chatsSectionRow || i == FilterChatlistActivity.this.linkSectionRow) {
                return 2;
            }
            if (i == FilterChatlistActivity.this.linkRow) {
                return 3;
            }
            if (i < FilterChatlistActivity.this.chatsStartRow || i >= FilterChatlistActivity.this.chatsEndRow) {
                return (i == FilterChatlistActivity.this.chatsHeaderRow || i == FilterChatlistActivity.this.linkHeaderRow) ? 5 : 0;
            }
            return 4;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 4;
        }
    }

    private int getMaxChats() {
        return getUserConfig().isPremium() ? getMessagesController().dialogFiltersChatsLimitPremium : getMessagesController().dialogFiltersChatsLimitDefault;
    }

    private void deselectAll(final FolderBottomSheet.HeaderCell headerCell, final boolean z) {
        this.selectedPeers.clear();
        if (!z) {
            this.selectedPeers.addAll(this.allowedPeers.subList(0, Math.min(getMaxChats(), this.allowedPeers.size())));
        }
        headerCell.setAction(LocaleController.getString(this.selectedPeers.size() >= Math.min(getMaxChats(), this.allowedPeers.size()) ? C2888R.string.DeselectAll : C2888R.string.SelectAll), new Runnable() { // from class: org.telegram.ui.FilterChatlistActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deselectAll$6(headerCell, z);
            }
        });
        this.peersChanged = true;
        checkPeersChanged();
        checkDoneButton();
        updateHeaderCell(true);
        updateHintCell(true);
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            View childAt = this.listView.getChildAt(i);
            if (childAt instanceof GroupCreateUserCell) {
                Object tag = childAt.getTag();
                if (tag instanceof Long) {
                    ((GroupCreateUserCell) childAt).setChecked(this.selectedPeers.contains((Long) tag), true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deselectAll$6(FolderBottomSheet.HeaderCell headerCell, boolean z) {
        deselectAll(headerCell, !z);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
    }

    public static class HintInnerCell extends FrameLayout {
        private RLottieImageView imageView;
        private SpoilersTextView subtitleTextView;

        public HintInnerCell(Context context, int i) {
            super(context);
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.imageView = rLottieImageView;
            rLottieImageView.setAnimation(i, 90, 90);
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.playAnimation();
            this.imageView.setImportantForAccessibility(2);
            addView(this.imageView, LayoutHelper.createFrame(90, 90.0f, 49, 0.0f, 14.0f, 0.0f, 0.0f));
            SpoilersTextView spoilersTextView = new SpoilersTextView(context);
            this.subtitleTextView = spoilersTextView;
            spoilersTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4));
            this.subtitleTextView.setTextSize(1, 14.0f);
            this.subtitleTextView.setGravity(17);
            this.subtitleTextView.setLines(2);
            addView(this.subtitleTextView, LayoutHelper.createFrame(-1, -2.0f, 49, 40.0f, 121.0f, 40.0f, 24.0f));
        }

        public void setText(CharSequence charSequence, boolean z) {
            this.subtitleTextView.setText(charSequence);
            this.subtitleTextView.cacheType = z ? 26 : 0;
        }

        public SpoilersTextView getSubtitleTextView() {
            return this.subtitleTextView;
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7() {
        updateDoneProgress(true);
    }

    private void updateDoneProgress(boolean z) {
        if (!z) {
            AndroidUtilities.cancelRunOnUIThread(this.enableDoneLoading);
        }
        if (this.doneButtonDrawable != null) {
            ValueAnimator valueAnimator = this.doneButtonDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.doneButtonDrawable.getProgress(), z ? 1.0f : 0.0f);
            this.doneButtonDrawableAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.FilterChatlistActivity$$ExternalSyntheticLambda7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$updateDoneProgress$8(valueAnimator2);
                }
            });
            this.doneButtonDrawableAnimator.setDuration((long) (Math.abs(this.doneButtonDrawable.getProgress() - (z ? 1.0f : 0.0f)) * 200.0f));
            this.doneButtonDrawableAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.doneButtonDrawableAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDoneProgress$8(ValueAnimator valueAnimator) {
        this.doneButtonDrawable.setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
        this.doneButtonDrawable.invalidateSelf();
    }

    private void checkDoneButton() {
        float f = this.peersChanged ? !this.selectedPeers.isEmpty() ? 1.0f : 0.5f : 0.0f;
        if (Math.abs(this.doneButtonAlpha - f) > 0.1f) {
            this.doneButton.clearAnimation();
            ViewPropertyAnimator viewPropertyAnimatorAnimate = this.doneButton.animate();
            this.doneButtonAlpha = f;
            viewPropertyAnimatorAnimate.alpha(f).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shakeHeader() {
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            View childAt = this.listView.getChildAt(i);
            if (this.listView.getChildAdapterPosition(childAt) == this.chatsHeaderRow && (childAt instanceof FolderBottomSheet.HeaderCell)) {
                int i2 = -this.shiftDp;
                this.shiftDp = i2;
                AndroidUtilities.shakeViewSpring(childAt, i2);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkDiscard(boolean z) {
        if (this.selectedPeers.isEmpty() || !this.peersChanged) {
            return true;
        }
        if (!z) {
            return false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString(C2888R.string.UnsavedChanges));
        builder.setMessage(LocaleController.getString(C2888R.string.UnsavedChangesMessage));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.ApplyTheme), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.FilterChatlistActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$checkDiscard$9(alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.PassportDiscard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.FilterChatlistActivity$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$checkDiscard$10(alertDialog, i);
            }
        });
        showDialog(builder.create());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$9(AlertDialog alertDialog, int i) {
        save();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$10(AlertDialog alertDialog, int i) {
        finishFragment();
    }

    public static class InviteLinkCell extends FrameLayout {
        private ActionBarPopupWindow actionBarPopupWindow;
        ButtonsBox buttonsBox;
        private float changeAlpha;
        private ValueAnimator changeAnimator;
        TextView copyButton;
        TextView generateButton;
        private String lastUrl;
        FrameLayout linkBox;
        ImageView optionsIcon;
        BaseFragment parentFragment;
        private float[] point;
        TextView shareButton;
        SimpleTextView spoilerTextView;
        SimpleTextView textView;

        protected abstract void deleteLink();

        public abstract void editname();

        protected void generate() {
        }

        class ButtonsBox extends FrameLayout {
            private Paint paint;
            private Path path;
            private float[] radii;

            /* JADX INFO: renamed from: t */
            private float f2117t;

            public ButtonsBox(Context context) {
                super(context);
                this.paint = new Paint();
                this.radii = new float[8];
                this.path = new Path();
                setWillNotDraw(false);
                this.paint.setColor(Theme.getColor(Theme.key_featuredStickers_addButton));
            }

            public void setT(float f) {
                this.f2117t = f;
                invalidate();
            }

            private void setRadii(float f, float f2) {
                float[] fArr = this.radii;
                fArr[7] = f;
                fArr[6] = f;
                fArr[1] = f;
                fArr[0] = f;
                fArr[5] = f2;
                fArr[4] = f2;
                fArr[3] = f2;
                fArr[2] = f2;
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                float measuredWidth = getMeasuredWidth() / 2.0f;
                this.path.rewind();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, 0.0f, measuredWidth - AndroidUtilities.lerp(0, AndroidUtilities.m1124dp(4.0f), this.f2117t), getMeasuredHeight());
                setRadii(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.lerp(0, AndroidUtilities.m1124dp(8.0f), this.f2117t));
                Path path = this.path;
                float[] fArr = this.radii;
                Path.Direction direction = Path.Direction.CW;
                path.addRoundRect(rectF, fArr, direction);
                canvas.drawPath(this.path, this.paint);
                this.path.rewind();
                rectF.set(measuredWidth + AndroidUtilities.lerp(0, AndroidUtilities.m1124dp(4.0f), this.f2117t), 0.0f, getMeasuredWidth(), getMeasuredHeight());
                setRadii(AndroidUtilities.lerp(0, AndroidUtilities.m1124dp(8.0f), this.f2117t), AndroidUtilities.m1124dp(8.0f));
                this.path.addRoundRect(rectF, this.radii, direction);
                canvas.drawPath(this.path, this.paint);
            }
        }

        public InviteLinkCell(Context context, BaseFragment baseFragment) {
            super(context);
            this.point = new float[2];
            this.parentFragment = baseFragment;
            FrameLayout frameLayout = new FrameLayout(context);
            this.linkBox = frameLayout;
            int iM1124dp = AndroidUtilities.m1124dp(8.0f);
            int i = Theme.key_graySection;
            frameLayout.setBackground(Theme.createSimpleSelectorRoundRectDrawable(iM1124dp, Theme.getColor(i), Theme.blendOver(Theme.getColor(i), Theme.getColor(Theme.key_listSelector))));
            this.linkBox.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            addView(this.linkBox, LayoutHelper.createFrame(-1, 48.0f, 55, 22.0f, 9.0f, 22.0f, 0.0f));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.spoilerTextView = simpleTextView;
            simpleTextView.setTextSize(16);
            SimpleTextView simpleTextView2 = this.spoilerTextView;
            int i2 = Theme.key_windowBackgroundWhiteBlackText;
            simpleTextView2.setTextColor(Theme.getColor(i2));
            SpannableString spannableString = new SpannableString("t.me/folder/N3k/dImA/bIo");
            TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
            textStyleRun.flags |= 256;
            spannableString.setSpan(new TextStyleSpan(textStyleRun), 0, spannableString.length(), 33);
            this.spoilerTextView.setText(spannableString);
            this.spoilerTextView.setAlpha(1.0f);
            this.linkBox.addView(this.spoilerTextView, LayoutHelper.createFrame(-1, -2.0f, 23, 20.0f, 0.0f, 40.0f, 0.0f));
            SimpleTextView simpleTextView3 = new SimpleTextView(context);
            this.textView = simpleTextView3;
            simpleTextView3.setTextSize(16);
            this.textView.setTextColor(Theme.getColor(i2));
            this.textView.setText(spannableString);
            this.textView.setAlpha(0.0f);
            this.linkBox.addView(this.textView, LayoutHelper.createFrame(-1, -2.0f, 23, 20.0f, 0.0f, 40.0f, 0.0f));
            ImageView imageView = new ImageView(context);
            this.optionsIcon = imageView;
            imageView.setImageDrawable(getContext().getResources().getDrawable(C2888R.drawable.ic_ab_other));
            this.optionsIcon.setScaleType(ImageView.ScaleType.CENTER);
            this.optionsIcon.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogTextGray3), PorterDuff.Mode.SRC_IN));
            this.optionsIcon.setAlpha(0.0f);
            this.optionsIcon.setVisibility(8);
            this.optionsIcon.setContentDescription(LocaleController.getString(C2888R.string.AccDescrMoreOptions));
            this.optionsIcon.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$2(view);
                }
            });
            this.linkBox.addView(this.optionsIcon, LayoutHelper.createFrame(40, 40.0f, 21, 4.0f, 4.0f, 4.0f, 4.0f));
            ButtonsBox buttonsBox = new ButtonsBox(context);
            this.buttonsBox = buttonsBox;
            addView(buttonsBox, LayoutHelper.createFrame(-1, 42.0f, 55, 22.0f, 69.0f, 22.0f, 0.0f));
            TextView textView = new TextView(context) { // from class: org.telegram.ui.FilterChatlistActivity.InviteLinkCell.1
                @Override // android.widget.TextView, android.view.View
                protected void onMeasure(int i3, int i4) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i3) - AndroidUtilities.m1124dp(8.0f)) / 2, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(42.0f), TLObject.FLAG_30));
                }
            };
            this.copyButton = textView;
            textView.setGravity(17);
            TextView textView2 = this.copyButton;
            int i3 = Theme.key_featuredStickers_buttonText;
            textView2.setTextColor(Theme.getColor(i3));
            this.copyButton.setBackground(Theme.createRadSelectorDrawable(822083583, 8, 8));
            this.copyButton.setTypeface(AndroidUtilities.bold());
            this.copyButton.setTextSize(14.0f);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) "..").setSpan(new ColoredImageSpan(ContextCompat.getDrawable(context, C2888R.drawable.msg_copy_filled)), 0, 1, 0);
            spannableStringBuilder.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m1124dp(8.0f)), 1, 2, 0);
            spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.LinkActionCopy));
            spannableStringBuilder.append((CharSequence) ".").setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m1124dp(5.0f)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
            this.copyButton.setText(spannableStringBuilder);
            this.copyButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$3(view);
                }
            });
            this.copyButton.setAlpha(0.0f);
            this.copyButton.setVisibility(8);
            this.buttonsBox.addView(this.copyButton, LayoutHelper.createFrame(-1, -1, 3));
            TextView textView3 = new TextView(context) { // from class: org.telegram.ui.FilterChatlistActivity.InviteLinkCell.2
                @Override // android.widget.TextView, android.view.View
                protected void onMeasure(int i4, int i5) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i4) - AndroidUtilities.m1124dp(8.0f)) / 2, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(42.0f), TLObject.FLAG_30));
                }
            };
            this.shareButton = textView3;
            textView3.setGravity(17);
            this.shareButton.setTextColor(Theme.getColor(i3));
            this.shareButton.setBackground(Theme.createRadSelectorDrawable(822083583, 8, 8));
            this.shareButton.setTypeface(AndroidUtilities.bold());
            this.shareButton.setTextSize(14.0f);
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) "..").setSpan(new ColoredImageSpan(ContextCompat.getDrawable(context, C2888R.drawable.msg_share_filled)), 0, 1, 0);
            spannableStringBuilder2.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m1124dp(8.0f)), 1, 2, 0);
            spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2888R.string.LinkActionShare));
            spannableStringBuilder2.append((CharSequence) ".").setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m1124dp(5.0f)), spannableStringBuilder2.length() - 1, spannableStringBuilder2.length(), 0);
            this.shareButton.setText(spannableStringBuilder2);
            this.shareButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$4(view);
                }
            });
            this.shareButton.setAlpha(0.0f);
            this.shareButton.setVisibility(8);
            this.buttonsBox.addView(this.shareButton, LayoutHelper.createFrame(-1, -1, 5));
            TextView textView4 = new TextView(context);
            this.generateButton = textView4;
            textView4.setGravity(17);
            this.generateButton.setTextColor(Theme.getColor(i3));
            this.generateButton.setBackground(Theme.createRadSelectorDrawable(822083583, 8, 8));
            this.generateButton.setTypeface(AndroidUtilities.bold());
            this.generateButton.setTextSize(14.0f);
            this.generateButton.setText("Generate Invite Link");
            this.generateButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$5(view);
                }
            });
            this.generateButton.setAlpha(1.0f);
            this.generateButton.setVisibility(0);
            this.buttonsBox.addView(this.generateButton, LayoutHelper.createFrame(-1, -1.0f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            copy();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(View view) {
            if (this.linkBox.getBackground() instanceof RippleDrawable) {
                this.linkBox.getBackground().setState(new int[]{R.attr.state_pressed, R.attr.state_enabled});
                postDelayed(new Runnable() { // from class: org.telegram.ui.FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$1();
                    }
                }, 180L);
            }
            options();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1() {
            this.linkBox.getBackground().setState(new int[0]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(View view) {
            copy();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(View view) {
            share();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(View view) {
            generate();
        }

        public void setLink(final String str, boolean z) {
            this.lastUrl = str;
            if (str != null) {
                if (str.startsWith("http://")) {
                    str = str.substring(7);
                }
                if (str.startsWith("https://")) {
                    str = str.substring(8);
                }
            }
            this.textView.setText(str);
            if (this.changeAlpha != (str != null ? 1 : 0)) {
                ValueAnimator valueAnimator = this.changeAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.changeAnimator = null;
                }
                if (z) {
                    this.generateButton.setVisibility(0);
                    this.optionsIcon.setVisibility(0);
                    this.copyButton.setVisibility(0);
                    this.shareButton.setVisibility(0);
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.changeAlpha, str != null ? 1.0f : 0.0f);
                    this.changeAnimator = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda6
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            this.f$0.lambda$setLink$6(valueAnimator2);
                        }
                    });
                    this.changeAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.FilterChatlistActivity.InviteLinkCell.3
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (str == null) {
                                InviteLinkCell.this.generateButton.setVisibility(0);
                                InviteLinkCell.this.optionsIcon.setVisibility(8);
                                InviteLinkCell.this.copyButton.setVisibility(8);
                                InviteLinkCell.this.shareButton.setVisibility(8);
                                return;
                            }
                            InviteLinkCell.this.generateButton.setVisibility(8);
                            InviteLinkCell.this.optionsIcon.setVisibility(0);
                            InviteLinkCell.this.copyButton.setVisibility(0);
                            InviteLinkCell.this.shareButton.setVisibility(0);
                        }
                    });
                    this.changeAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                    this.changeAnimator.setDuration(320L);
                    this.changeAnimator.start();
                    return;
                }
                this.changeAlpha = str != null ? 1.0f : 0.0f;
                updateChangeAlpha();
                if (str == null) {
                    this.generateButton.setVisibility(0);
                    this.optionsIcon.setVisibility(8);
                    this.copyButton.setVisibility(8);
                    this.shareButton.setVisibility(8);
                    return;
                }
                this.generateButton.setVisibility(8);
                this.optionsIcon.setVisibility(0);
                this.copyButton.setVisibility(0);
                this.shareButton.setVisibility(0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setLink$6(ValueAnimator valueAnimator) {
            this.changeAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            updateChangeAlpha();
        }

        private void updateChangeAlpha() {
            this.buttonsBox.setT(this.changeAlpha);
            this.copyButton.setAlpha(this.changeAlpha);
            this.shareButton.setAlpha(this.changeAlpha);
            this.optionsIcon.setAlpha(this.changeAlpha);
            this.generateButton.setAlpha(1.0f - this.changeAlpha);
            this.textView.setAlpha(this.changeAlpha);
            this.spoilerTextView.setAlpha(1.0f - this.changeAlpha);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(127.0f), TLObject.FLAG_30));
        }

        public void options() {
            if (this.actionBarPopupWindow != null || this.lastUrl == null) {
                return;
            }
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getContext());
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), true, false);
            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2888R.string.EditName), C2888R.drawable.msg_edit);
            actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem, LayoutHelper.createLinear(-1, 48));
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$options$7(view);
                }
            });
            ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(getContext(), false, false);
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString(C2888R.string.GetQRCode), C2888R.drawable.msg_qrcode);
            actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem2, LayoutHelper.createLinear(-1, 48));
            actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$options$8(view);
                }
            });
            ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(getContext(), false, true);
            actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString(C2888R.string.DeleteLink), C2888R.drawable.msg_delete);
            int i = Theme.key_text_RedRegular;
            actionBarMenuSubItem3.setColors(Theme.getColor(i), Theme.getColor(i));
            actionBarMenuSubItem3.setSelectorColor(Theme.multAlpha(Theme.getColor(i), 0.12f));
            actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$options$9(view);
                }
            });
            actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem3, LayoutHelper.createLinear(-1, 48));
            final FrameLayout overlayContainerView = this.parentFragment.getParentLayout().getOverlayContainerView();
            if (overlayContainerView != null) {
                getPointOnScreen(this.linkBox, overlayContainerView, this.point);
                float paddingTop = this.point[1];
                final View view = new View(getContext()) { // from class: org.telegram.ui.FilterChatlistActivity.InviteLinkCell.4
                    @Override // android.view.View
                    protected void onDraw(Canvas canvas) {
                        canvas.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                        InviteLinkCell inviteLinkCell = InviteLinkCell.this;
                        inviteLinkCell.getPointOnScreen(inviteLinkCell.linkBox, overlayContainerView, inviteLinkCell.point);
                        canvas.save();
                        float y = ((View) InviteLinkCell.this.linkBox.getParent()).getY() + InviteLinkCell.this.linkBox.getY();
                        if (y < 1.0f) {
                            canvas.clipRect(0.0f, (InviteLinkCell.this.point[1] - y) + 1.0f, getMeasuredWidth(), getMeasuredHeight());
                        }
                        canvas.translate(InviteLinkCell.this.point[0], InviteLinkCell.this.point[1]);
                        InviteLinkCell.this.linkBox.draw(canvas);
                        canvas.restore();
                    }
                };
                final ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.FilterChatlistActivity.InviteLinkCell.5
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        view.invalidate();
                        return true;
                    }
                };
                overlayContainerView.getViewTreeObserver().addOnPreDrawListener(onPreDrawListener);
                overlayContainerView.addView(view, LayoutHelper.createFrame(-1, -1.0f));
                float paddingLeft = 0.0f;
                view.setAlpha(0.0f);
                view.animate().alpha(1.0f).setDuration(150L);
                actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(overlayContainerView.getMeasuredWidth(), 0), View.MeasureSpec.makeMeasureSpec(overlayContainerView.getMeasuredHeight(), 0));
                ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
                this.actionBarPopupWindow = actionBarPopupWindow;
                actionBarPopupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.FilterChatlistActivity.InviteLinkCell.6
                    @Override // android.widget.PopupWindow.OnDismissListener
                    public void onDismiss() {
                        InviteLinkCell.this.actionBarPopupWindow = null;
                        view.animate().cancel();
                        view.animate().alpha(0.0f).setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.FilterChatlistActivity.InviteLinkCell.6.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (view.getParent() != null) {
                                    C55966 c55966 = C55966.this;
                                    overlayContainerView.removeView(view);
                                }
                                overlayContainerView.getViewTreeObserver().removeOnPreDrawListener(onPreDrawListener);
                            }
                        });
                    }
                });
                this.actionBarPopupWindow.setOutsideTouchable(true);
                this.actionBarPopupWindow.setFocusable(true);
                this.actionBarPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
                this.actionBarPopupWindow.setAnimationStyle(C2888R.style.PopupContextAnimation);
                this.actionBarPopupWindow.setInputMethodMode(2);
                this.actionBarPopupWindow.setSoftInputMode(0);
                actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda10
                    @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                    public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                        this.f$0.lambda$options$10(keyEvent);
                    }
                });
                if (AndroidUtilities.isTablet()) {
                    paddingTop += overlayContainerView.getPaddingTop();
                    paddingLeft = 0.0f - overlayContainerView.getPaddingLeft();
                }
                this.actionBarPopupWindow.showAtLocation(overlayContainerView, 0, (int) (((overlayContainerView.getMeasuredWidth() - actionBarPopupWindowLayout.getMeasuredWidth()) - AndroidUtilities.m1124dp(16.0f)) + overlayContainerView.getX() + paddingLeft), (int) (paddingTop + this.linkBox.getMeasuredHeight() + overlayContainerView.getY()));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$options$7(View view) {
            ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
            if (actionBarPopupWindow != null) {
                actionBarPopupWindow.dismiss();
            }
            editname();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$options$8(View view) {
            ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
            if (actionBarPopupWindow != null) {
                actionBarPopupWindow.dismiss();
            }
            qrcode();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$options$9(View view) {
            ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
            if (actionBarPopupWindow != null) {
                actionBarPopupWindow.dismiss();
            }
            deleteLink();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$options$10(KeyEvent keyEvent) {
            if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && this.actionBarPopupWindow.isShowing()) {
                this.actionBarPopupWindow.dismiss(true);
            }
        }

        public void copy() {
            String str = this.lastUrl;
            if (str == null) {
                return;
            }
            AndroidUtilities.addToClipboard(str);
            BulletinFactory.m1246of(this.parentFragment).createCopyBulletin(LocaleController.getString(C2888R.string.LinkCopied)).show();
        }

        protected void share() {
            if (this.lastUrl == null) {
                return;
            }
            try {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.TEXT", this.lastUrl);
                this.parentFragment.startActivityForResult(Intent.createChooser(intent, LocaleController.getString(C2888R.string.InviteToGroupByLink)), 500);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }

        public void qrcode() {
            if (this.lastUrl == null) {
                return;
            }
            QRCodeBottomSheet qRCodeBottomSheet = new QRCodeBottomSheet(getContext(), LocaleController.getString(C2888R.string.InviteByQRCode), this.lastUrl, LocaleController.getString(C2888R.string.QRCodeLinkHelpFolder), false);
            qRCodeBottomSheet.setCenterAnimation(C2888R.raw.qr_code_logo);
            qRCodeBottomSheet.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0, types: [android.widget.FrameLayout] */
        /* JADX WARN: Type inference failed for: r4v1, types: [android.view.View] */
        /* JADX WARN: Type inference failed for: r4v9, types: [android.view.View] */
        public void getPointOnScreen(FrameLayout frameLayout, FrameLayout frameLayout2, float[] fArr) {
            float y = 0.0f;
            float x = 0.0f;
            while (frameLayout != frameLayout2) {
                y += frameLayout.getY();
                x += frameLayout.getX();
                if (frameLayout instanceof ScrollView) {
                    y -= frameLayout.getScrollY();
                }
                if (!(frameLayout.getParent() instanceof View)) {
                    break;
                }
                frameLayout = (View) frameLayout.getParent();
                if (!(frameLayout instanceof ViewGroup)) {
                    return;
                }
            }
            fArr[0] = x - frameLayout2.getPaddingLeft();
            fArr[1] = y - frameLayout2.getPaddingTop();
        }
    }
}
