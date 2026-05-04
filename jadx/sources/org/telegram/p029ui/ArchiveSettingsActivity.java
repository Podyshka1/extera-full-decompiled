package org.telegram.p029ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Cells.TextInfoPrivacyCell;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public class ArchiveSettingsActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private ListAdapter adapter;
    private RecyclerListView listView;
    private TLRPC.GlobalPrivacySettings settings;
    private boolean changed = false;
    private int shiftDp = -3;
    private final ArrayList oldItems = new ArrayList();
    private final ArrayList items = new ArrayList();

    public static /* synthetic */ void $r8$lambda$x7PpSkVpp4iYCjJtWj0kvH2q9_Q(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(C2888R.string.ArchiveSettings));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ArchiveSettingsActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    ArchiveSettingsActivity.this.finishFragment();
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setSections();
        this.actionBar.setAdaptiveBackground(this.listView);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false) { // from class: org.telegram.ui.ArchiveSettingsActivity.2
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }
        });
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setLayoutAnimation(null);
        RecyclerListView recyclerListView2 = this.listView;
        ListAdapter listAdapter = new ListAdapter();
        this.adapter = listAdapter;
        recyclerListView2.setAdapter(listAdapter);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ArchiveSettingsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                this.f$0.lambda$createView$1(view, i);
            }
        });
        getContactsController().loadGlobalPrivacySetting();
        TLRPC.GlobalPrivacySettings globalPrivacySettings = getContactsController().getGlobalPrivacySettings();
        this.settings = globalPrivacySettings;
        if (globalPrivacySettings == null) {
            this.settings = new TLRPC.TL_globalPrivacySettings();
        }
        updateItems(false);
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view, int i) {
        if (i < 0 || i >= this.items.size()) {
            return;
        }
        int i2 = ((ItemInner) this.items.get(i)).f1880id;
        if (i2 == 1) {
            TLRPC.GlobalPrivacySettings globalPrivacySettings = this.settings;
            boolean z = !globalPrivacySettings.keep_archived_unmuted;
            globalPrivacySettings.keep_archived_unmuted = z;
            ((TextCheckCell) view).setChecked(z);
            this.changed = true;
            return;
        }
        if (i2 == 4) {
            TLRPC.GlobalPrivacySettings globalPrivacySettings2 = this.settings;
            boolean z2 = !globalPrivacySettings2.keep_archived_folders;
            globalPrivacySettings2.keep_archived_folders = z2;
            ((TextCheckCell) view).setChecked(z2);
            this.changed = true;
            return;
        }
        if (i2 == 7) {
            if (!getUserConfig().isPremium() && !getMessagesController().autoarchiveAvailable && !this.settings.archive_and_mute_new_noncontact_peers) {
                Bulletin.SimpleLayout simpleLayout = new Bulletin.SimpleLayout(getContext(), getResourceProvider());
                simpleLayout.textView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.UnlockPremium), Theme.key_undo_cancelColor, 0, new Runnable() { // from class: org.telegram.ui.ArchiveSettingsActivity$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createView$0();
                    }
                }));
                simpleLayout.textView.setSingleLine(false);
                simpleLayout.textView.setPadding(0, AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f));
                simpleLayout.imageView.setImageResource(C2888R.drawable.msg_settings_premium);
                Bulletin.make(this, simpleLayout, 3500).show();
                int i3 = -this.shiftDp;
                this.shiftDp = i3;
                AndroidUtilities.shakeViewSpring(view, i3);
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
                return;
            }
            TLRPC.GlobalPrivacySettings globalPrivacySettings3 = this.settings;
            boolean z3 = !globalPrivacySettings3.archive_and_mute_new_noncontact_peers;
            globalPrivacySettings3.archive_and_mute_new_noncontact_peers = z3;
            ((TextCheckCell) view).setChecked(z3);
            this.changed = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0() {
        presentFragment(new PremiumPreviewFragment("settings"));
    }

    private void updateItems(boolean z) {
        this.oldItems.clear();
        this.oldItems.addAll(this.items);
        this.items.clear();
        this.items.add(new ItemInner(0, 0, LocaleController.getString("ArchiveSettingUnmutedFolders")));
        this.items.add(new ItemInner(1, 1, LocaleController.getString("ArchiveSettingUnmutedFoldersCheck")));
        this.items.add(new ItemInner(2, 2, LocaleController.getString("ArchiveSettingUnmutedFoldersInfo")));
        if (getMessagesController().getDialogFilters().size() > 1) {
            this.items.add(new ItemInner(0, 3, LocaleController.getString("ArchiveSettingUnmutedChats")));
            this.items.add(new ItemInner(1, 4, LocaleController.getString("ArchiveSettingUnmutedChatsCheck")));
            this.items.add(new ItemInner(2, 5, LocaleController.getString("ArchiveSettingUnmutedChatsInfo")));
        }
        this.items.add(new ItemInner(0, 6, LocaleController.getString("NewChatsFromNonContacts")));
        this.items.add(new ItemInner(1, 7, LocaleController.getString("NewChatsFromNonContactsCheck")));
        this.items.add(new ItemInner(2, 8, LocaleController.getString("ArchiveAndMuteInfo")));
        ListAdapter listAdapter = this.adapter;
        if (listAdapter == null) {
            return;
        }
        if (z) {
            listAdapter.setItems(this.oldItems, this.items);
        } else {
            listAdapter.notifyDataSetChanged();
        }
    }

    private static class ItemInner extends AdapterWithDiffUtils.Item {

        /* JADX INFO: renamed from: id */
        public int f1880id;
        public CharSequence text;

        public ItemInner(int i, int i2, CharSequence charSequence) {
            super(i, false);
            this.f1880id = i2;
            this.text = charSequence;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ItemInner itemInner = (ItemInner) obj;
                if (this.f1880id == itemInner.f1880id && Objects.equals(this.text, itemInner.text)) {
                    return true;
                }
            }
            return false;
        }
    }

    private class ListAdapter extends AdapterWithDiffUtils {
        private ListAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View textInfoPrivacyCell;
            if (i == 0) {
                textInfoPrivacyCell = new HeaderCell(ArchiveSettingsActivity.this.getContext());
            } else if (i == 1) {
                textInfoPrivacyCell = new TextCheckCell(ArchiveSettingsActivity.this.getContext());
            } else {
                textInfoPrivacyCell = new TextInfoPrivacyCell(ArchiveSettingsActivity.this.getContext());
            }
            return new RecyclerListView.Holder(textInfoPrivacyCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            boolean z;
            if (i < 0 || i >= ArchiveSettingsActivity.this.items.size()) {
                return;
            }
            ItemInner itemInner = (ItemInner) ArchiveSettingsActivity.this.items.get(i);
            int i2 = i + 1;
            int i3 = 0;
            boolean z2 = i2 < ArchiveSettingsActivity.this.items.size() && ((ItemInner) ArchiveSettingsActivity.this.items.get(i2)).viewType == itemInner.viewType;
            if (viewHolder.getItemViewType() == 0) {
                ((HeaderCell) viewHolder.itemView).setText(itemInner.text);
                return;
            }
            if (viewHolder.getItemViewType() == 2) {
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                if (TextUtils.isEmpty(itemInner.text)) {
                    textInfoPrivacyCell.setFixedSize(12);
                    textInfoPrivacyCell.setText(null);
                    return;
                } else {
                    textInfoPrivacyCell.setFixedSize(0);
                    textInfoPrivacyCell.setText(itemInner.text);
                    return;
                }
            }
            if (viewHolder.getItemViewType() == 1) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                int i4 = itemInner.f1880id;
                if (i4 == 1) {
                    z = ArchiveSettingsActivity.this.settings.keep_archived_unmuted;
                    textCheckCell.setCheckBoxIcon(0);
                } else if (i4 == 4) {
                    z = ArchiveSettingsActivity.this.settings.keep_archived_folders;
                    textCheckCell.setCheckBoxIcon(0);
                } else {
                    if (i4 != 7) {
                        return;
                    }
                    z = ArchiveSettingsActivity.this.settings.archive_and_mute_new_noncontact_peers;
                    if (!ArchiveSettingsActivity.this.getUserConfig().isPremium() && !ArchiveSettingsActivity.this.getMessagesController().autoarchiveAvailable) {
                        i3 = C2888R.drawable.permission_locked;
                    }
                    textCheckCell.setCheckBoxIcon(i3);
                }
                textCheckCell.setTextAndCheck(itemInner.text, z, z2);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ArchiveSettingsActivity.this.items.size();
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return (viewHolder.getItemViewType() == 2 || viewHolder.getItemViewType() == 0) ? false : true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i < 0 || i >= ArchiveSettingsActivity.this.items.size()) {
                return 0;
            }
            return ((ItemInner) ArchiveSettingsActivity.this.items.get(i)).viewType;
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.privacyRulesUpdated);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.privacyRulesUpdated);
        super.onFragmentDestroy();
        if (this.changed) {
            TL_account.setGlobalPrivacySettings setglobalprivacysettings = new TL_account.setGlobalPrivacySettings();
            setglobalprivacysettings.settings = this.settings;
            getConnectionsManager().sendRequest(setglobalprivacysettings, new RequestDelegate() { // from class: org.telegram.ui.ArchiveSettingsActivity$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    ArchiveSettingsActivity.$r8$lambda$x7PpSkVpp4iYCjJtWj0kvH2q9_Q(tLObject, tL_error);
                }
            });
            this.changed = false;
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.privacyRulesUpdated) {
            TLRPC.GlobalPrivacySettings globalPrivacySettings = getContactsController().getGlobalPrivacySettings();
            this.settings = globalPrivacySettings;
            if (globalPrivacySettings == null) {
                this.settings = new TLRPC.TL_globalPrivacySettings();
            }
            if (this.listView != null) {
                for (int i3 = 0; i3 < this.listView.getChildCount(); i3++) {
                    View childAt = this.listView.getChildAt(i3);
                    int childAdapterPosition = this.listView.getChildAdapterPosition(childAt);
                    if (childAdapterPosition >= 0 && childAdapterPosition < this.items.size()) {
                        int i4 = ((ItemInner) this.items.get(childAdapterPosition)).f1880id;
                        if (i4 == 1) {
                            ((TextCheckCell) childAt).setChecked(this.settings.keep_archived_unmuted);
                        } else if (i4 == 4) {
                            ((TextCheckCell) childAt).setChecked(this.settings.keep_archived_folders);
                        } else if (i4 == 7) {
                            ((TextCheckCell) childAt).setChecked(this.settings.archive_and_mute_new_noncontact_peers);
                        }
                    }
                }
            }
            this.changed = false;
            return;
        }
        if (i == NotificationCenter.dialogFiltersUpdated) {
            updateItems(true);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
    }
}
