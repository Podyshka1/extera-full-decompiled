package org.telegram.p029ui.Components;

import android.view.View;
import android.view.ViewGroup;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.DefaultItemAnimator;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.CheckBoxCell;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.Premium.boosts.cells.selector.SelectorBtnCell;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class AdminLogFilterAlert2 extends BottomSheetWithRecyclerListView {
    private final ButtonWithCounterView actionButton;
    private UniversalAdapter adapter;
    private final SelectorBtnCell buttonContainer;
    private ArrayList currentAdmins;
    private TLRPC.TL_channelAdminLogEventsFilter currentFilter;
    private AdminLogFilterAlertDelegate delegate;
    private boolean isMegagroup;
    private boolean sectionMembersExpanded;
    private boolean sectionMessagesExpanded;
    private boolean sectionSettingsExpanded;
    private LongSparseArray selectedAdmins;

    public interface AdminLogFilterAlertDelegate {
        void didSelectRights(TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter, LongSparseArray longSparseArray);
    }

    public AdminLogFilterAlert2(BaseFragment baseFragment, TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter, LongSparseArray longSparseArray, boolean z) {
        super(baseFragment.getContext(), baseFragment, false, false, false, true, BottomSheetWithRecyclerListView.ActionBarType.SLIDING, baseFragment.getResourceProvider());
        this.currentFilter = new TLRPC.TL_channelAdminLogEventsFilter();
        this.sectionMembersExpanded = false;
        this.sectionSettingsExpanded = false;
        this.sectionMessagesExpanded = false;
        this.topPadding = 0.35f;
        fixNavigationBar();
        setSlidingActionBar();
        setShowHandle(true);
        if (tL_channelAdminLogEventsFilter != null) {
            TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter2 = this.currentFilter;
            tL_channelAdminLogEventsFilter2.join = tL_channelAdminLogEventsFilter.join;
            tL_channelAdminLogEventsFilter2.leave = tL_channelAdminLogEventsFilter.leave;
            tL_channelAdminLogEventsFilter2.edit_rank = tL_channelAdminLogEventsFilter.edit_rank;
            tL_channelAdminLogEventsFilter2.invite = tL_channelAdminLogEventsFilter.invite;
            tL_channelAdminLogEventsFilter2.ban = tL_channelAdminLogEventsFilter.ban;
            tL_channelAdminLogEventsFilter2.unban = tL_channelAdminLogEventsFilter.unban;
            tL_channelAdminLogEventsFilter2.kick = tL_channelAdminLogEventsFilter.kick;
            tL_channelAdminLogEventsFilter2.unkick = tL_channelAdminLogEventsFilter.unkick;
            tL_channelAdminLogEventsFilter2.promote = tL_channelAdminLogEventsFilter.promote;
            tL_channelAdminLogEventsFilter2.demote = tL_channelAdminLogEventsFilter.demote;
            tL_channelAdminLogEventsFilter2.info = tL_channelAdminLogEventsFilter.info;
            tL_channelAdminLogEventsFilter2.settings = tL_channelAdminLogEventsFilter.settings;
            tL_channelAdminLogEventsFilter2.pinned = tL_channelAdminLogEventsFilter.pinned;
            tL_channelAdminLogEventsFilter2.edit = tL_channelAdminLogEventsFilter.edit;
            tL_channelAdminLogEventsFilter2.delete = tL_channelAdminLogEventsFilter.delete;
            tL_channelAdminLogEventsFilter2.group_call = tL_channelAdminLogEventsFilter.group_call;
            tL_channelAdminLogEventsFilter2.invites = tL_channelAdminLogEventsFilter.invites;
        } else {
            TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter3 = this.currentFilter;
            tL_channelAdminLogEventsFilter3.join = true;
            tL_channelAdminLogEventsFilter3.leave = true;
            tL_channelAdminLogEventsFilter3.edit_rank = true;
            tL_channelAdminLogEventsFilter3.invite = true;
            tL_channelAdminLogEventsFilter3.ban = true;
            tL_channelAdminLogEventsFilter3.unban = true;
            tL_channelAdminLogEventsFilter3.kick = true;
            tL_channelAdminLogEventsFilter3.unkick = true;
            tL_channelAdminLogEventsFilter3.promote = true;
            tL_channelAdminLogEventsFilter3.demote = true;
            tL_channelAdminLogEventsFilter3.info = true;
            tL_channelAdminLogEventsFilter3.settings = true;
            tL_channelAdminLogEventsFilter3.pinned = true;
            tL_channelAdminLogEventsFilter3.edit = true;
            tL_channelAdminLogEventsFilter3.delete = true;
            tL_channelAdminLogEventsFilter3.group_call = true;
            tL_channelAdminLogEventsFilter3.invites = true;
        }
        if (longSparseArray != null) {
            this.selectedAdmins = longSparseArray.m2048clone();
        }
        this.isMegagroup = z;
        this.adapter.update(false);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Components.AdminLogFilterAlert2$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                this.f$0.lambda$new$0(view, i, f, f2);
            }
        });
        SelectorBtnCell selectorBtnCell = new SelectorBtnCell(getContext(), this.resourcesProvider, null);
        this.buttonContainer = selectorBtnCell;
        selectorBtnCell.setClickable(true);
        selectorBtnCell.setOrientation(1);
        selectorBtnCell.setPadding(AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f));
        selectorBtnCell.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(getContext(), this.resourcesProvider);
        this.actionButton = buttonWithCounterView;
        buttonWithCounterView.setText(LocaleController.getString(C2888R.string.EventLogFilterApply), false);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AdminLogFilterAlert2$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        selectorBtnCell.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 87));
        ViewGroup viewGroup = this.containerView;
        int i = this.backgroundPaddingLeft;
        viewGroup.addView(selectorBtnCell, LayoutHelper.createFrameMarginPx(-1, -2.0f, 87, i, 0, i, 0));
        RecyclerListView recyclerListView = this.recyclerListView;
        int i2 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i2, 0, i2, AndroidUtilities.m1124dp(68.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i, float f, float f2) {
        onClick(this.adapter.getItem(i - 1), view, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter = this.currentFilter;
        if (tL_channelAdminLogEventsFilter.join && tL_channelAdminLogEventsFilter.leave && tL_channelAdminLogEventsFilter.edit_rank && tL_channelAdminLogEventsFilter.invite && tL_channelAdminLogEventsFilter.ban && tL_channelAdminLogEventsFilter.unban && tL_channelAdminLogEventsFilter.kick && tL_channelAdminLogEventsFilter.unkick && tL_channelAdminLogEventsFilter.promote && tL_channelAdminLogEventsFilter.demote && tL_channelAdminLogEventsFilter.info && tL_channelAdminLogEventsFilter.settings && tL_channelAdminLogEventsFilter.pinned && tL_channelAdminLogEventsFilter.edit && tL_channelAdminLogEventsFilter.delete && tL_channelAdminLogEventsFilter.group_call && tL_channelAdminLogEventsFilter.invites) {
            this.currentFilter = null;
        }
        LongSparseArray longSparseArray = this.selectedAdmins;
        if (longSparseArray != null && this.currentAdmins != null && longSparseArray.size() >= this.currentAdmins.size()) {
            this.selectedAdmins = null;
        }
        this.delegate.didSelectRights(this.currentFilter, this.selectedAdmins);
        lambda$new$0();
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString(C2888R.string.EventLog);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Components.AdminLogFilterAlert2$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        return universalAdapter;
    }

    private String getGroupCount(int i) {
        if (i == 0) {
            StringBuilder sb = new StringBuilder();
            TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter = this.currentFilter;
            sb.append(((tL_channelAdminLogEventsFilter.promote || tL_channelAdminLogEventsFilter.demote) ? 1 : 0) + ((this.isMegagroup && (tL_channelAdminLogEventsFilter.kick || tL_channelAdminLogEventsFilter.ban || tL_channelAdminLogEventsFilter.unkick || tL_channelAdminLogEventsFilter.unban)) ? 1 : 0) + ((tL_channelAdminLogEventsFilter.invite || tL_channelAdminLogEventsFilter.join) ? 1 : 0) + (tL_channelAdminLogEventsFilter.leave ? 1 : 0) + (tL_channelAdminLogEventsFilter.edit_rank ? 1 : 0));
            sb.append("/");
            sb.append(this.isMegagroup ? 5 : 3);
            return sb.toString();
        }
        if (i == 1) {
            StringBuilder sb2 = new StringBuilder();
            TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter2 = this.currentFilter;
            sb2.append(((tL_channelAdminLogEventsFilter2.info || tL_channelAdminLogEventsFilter2.settings) ? 1 : 0) + (tL_channelAdminLogEventsFilter2.invites ? 1 : 0) + (tL_channelAdminLogEventsFilter2.group_call ? 1 : 0));
            sb2.append("/3");
            return sb2.toString();
        }
        StringBuilder sb3 = new StringBuilder();
        TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter3 = this.currentFilter;
        sb3.append((tL_channelAdminLogEventsFilter3.delete ? 1 : 0) + (tL_channelAdminLogEventsFilter3.edit ? 1 : 0) + (tL_channelAdminLogEventsFilter3.pinned ? 1 : 0));
        sb3.append("/3");
        return sb3.toString();
    }

    private View.OnClickListener getGroupClick(final int i) {
        return new View.OnClickListener() { // from class: org.telegram.ui.Components.AdminLogFilterAlert2$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$getGroupClick$2(i, view);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getGroupClick$2(int i, View view) {
        if (i == 0) {
            this.sectionMembersExpanded = !this.sectionMembersExpanded;
        } else if (i == 1) {
            this.sectionSettingsExpanded = !this.sectionSettingsExpanded;
        } else if (i == 2) {
            this.sectionMessagesExpanded = !this.sectionMessagesExpanded;
        }
        this.adapter.update(true);
        applyScrolledPosition();
    }

    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        if (this.currentFilter == null) {
            return;
        }
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.EventLogFilterByActions)));
        UItem uItemAsRoundGroupCheckbox = UItem.asRoundGroupCheckbox(2, LocaleController.getString(this.isMegagroup ? C2888R.string.EventLogFilterSectionMembers : C2888R.string.EventLogFilterSectionSubscribers), getGroupCount(0));
        TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter = this.currentFilter;
        arrayList.add(uItemAsRoundGroupCheckbox.setChecked(tL_channelAdminLogEventsFilter.promote || tL_channelAdminLogEventsFilter.demote || (this.isMegagroup && (tL_channelAdminLogEventsFilter.kick || tL_channelAdminLogEventsFilter.ban || tL_channelAdminLogEventsFilter.unkick || tL_channelAdminLogEventsFilter.unban)) || tL_channelAdminLogEventsFilter.invite || tL_channelAdminLogEventsFilter.join || tL_channelAdminLogEventsFilter.leave || tL_channelAdminLogEventsFilter.edit_rank).setCollapsed(!this.sectionMembersExpanded).setClickCallback(getGroupClick(0)));
        if (this.sectionMembersExpanded) {
            UItem uItemPad = UItem.asRoundCheckbox(3, LocaleController.getString(C2888R.string.EventLogFilterSectionAdmin)).pad();
            TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter2 = this.currentFilter;
            arrayList.add(uItemPad.setChecked(tL_channelAdminLogEventsFilter2.promote || tL_channelAdminLogEventsFilter2.demote));
            if (this.isMegagroup) {
                UItem uItemPad2 = UItem.asRoundCheckbox(4, LocaleController.getString(C2888R.string.EventLogFilterNewRestrictions)).pad();
                TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter3 = this.currentFilter;
                arrayList.add(uItemPad2.setChecked(tL_channelAdminLogEventsFilter3.kick || tL_channelAdminLogEventsFilter3.ban || tL_channelAdminLogEventsFilter3.unkick || tL_channelAdminLogEventsFilter3.unban));
            }
            UItem uItemPad3 = UItem.asRoundCheckbox(5, LocaleController.getString(this.isMegagroup ? C2888R.string.EventLogFilterNewMembers : C2888R.string.EventLogFilterNewSubscribers)).pad();
            TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter4 = this.currentFilter;
            arrayList.add(uItemPad3.setChecked(tL_channelAdminLogEventsFilter4.invite || tL_channelAdminLogEventsFilter4.join));
            arrayList.add(UItem.asRoundCheckbox(6, LocaleController.getString(this.isMegagroup ? C2888R.string.EventLogFilterLeavingMembers2 : C2888R.string.EventLogFilterLeavingSubscribers2)).pad().setChecked(this.currentFilter.leave));
            if (this.isMegagroup) {
                arrayList.add(UItem.asRoundCheckbox(7, LocaleController.getString(C2888R.string.EventLogFilterMembersRank)).pad().setChecked(this.currentFilter.edit_rank));
            }
        }
        UItem uItemAsRoundGroupCheckbox2 = UItem.asRoundGroupCheckbox(8, LocaleController.getString(this.isMegagroup ? C2888R.string.EventLogFilterSectionGroupSettings : C2888R.string.EventLogFilterSectionChannelSettings), getGroupCount(1));
        TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter5 = this.currentFilter;
        arrayList.add(uItemAsRoundGroupCheckbox2.setChecked(tL_channelAdminLogEventsFilter5.info || tL_channelAdminLogEventsFilter5.settings || tL_channelAdminLogEventsFilter5.invites || tL_channelAdminLogEventsFilter5.group_call).setCollapsed(!this.sectionSettingsExpanded).setClickCallback(getGroupClick(1)));
        if (this.sectionSettingsExpanded) {
            UItem uItemPad4 = UItem.asRoundCheckbox(9, LocaleController.getString(this.isMegagroup ? C2888R.string.EventLogFilterGroupInfo : C2888R.string.EventLogFilterChannelInfo)).pad();
            TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter6 = this.currentFilter;
            arrayList.add(uItemPad4.setChecked(tL_channelAdminLogEventsFilter6.info || tL_channelAdminLogEventsFilter6.settings));
            arrayList.add(UItem.asRoundCheckbox(10, LocaleController.getString(C2888R.string.EventLogFilterInvites)).pad().setChecked(this.currentFilter.invites));
            arrayList.add(UItem.asRoundCheckbox(11, LocaleController.getString(C2888R.string.EventLogFilterCalls)).pad().setChecked(this.currentFilter.group_call));
        }
        UItem uItemAsRoundGroupCheckbox3 = UItem.asRoundGroupCheckbox(12, LocaleController.getString(C2888R.string.EventLogFilterSectionMessages), getGroupCount(2));
        TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter7 = this.currentFilter;
        arrayList.add(uItemAsRoundGroupCheckbox3.setChecked(tL_channelAdminLogEventsFilter7.delete || tL_channelAdminLogEventsFilter7.edit || tL_channelAdminLogEventsFilter7.pinned).setCollapsed(!this.sectionMessagesExpanded).setClickCallback(getGroupClick(2)));
        if (this.sectionMessagesExpanded) {
            arrayList.add(UItem.asRoundCheckbox(13, LocaleController.getString(C2888R.string.EventLogFilterDeletedMessages)).pad().setChecked(this.currentFilter.delete));
            arrayList.add(UItem.asRoundCheckbox(14, LocaleController.getString(C2888R.string.EventLogFilterEditedMessages)).pad().setChecked(this.currentFilter.edit));
            arrayList.add(UItem.asRoundCheckbox(15, LocaleController.getString(C2888R.string.EventLogFilterPinnedMessages)).pad().setChecked(this.currentFilter.pinned));
        }
        arrayList.add(UItem.asShadow(null));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.EventLogFilterByAdmins)));
        UItem uItemAsRoundCheckbox = UItem.asRoundCheckbox(16, LocaleController.getString(C2888R.string.EventLogFilterByAdminsAll));
        LongSparseArray longSparseArray = this.selectedAdmins;
        int size = longSparseArray == null ? 0 : longSparseArray.size();
        ArrayList arrayList2 = this.currentAdmins;
        arrayList.add(uItemAsRoundCheckbox.setChecked(size >= (arrayList2 == null ? 0 : arrayList2.size())));
        if (this.currentAdmins != null) {
            for (int i = 0; i < this.currentAdmins.size(); i++) {
                long peerDialogId = DialogObject.getPeerDialogId(((TLRPC.ChannelParticipant) this.currentAdmins.get(i)).peer);
                UItem uItemPad5 = UItem.asUserCheckbox((-1) - i, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId))).pad();
                LongSparseArray longSparseArray2 = this.selectedAdmins;
                arrayList.add(uItemPad5.setChecked(longSparseArray2 != null && longSparseArray2.containsKey(peerDialogId)));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onClick(UItem uItem, View view, float f) {
        boolean z;
        ArrayList arrayList;
        if (uItem == null) {
            return;
        }
        int i = uItem.viewType;
        if (i == 41 || i == 35) {
            if (i == 41) {
                z = LocaleController.isRTL ? false : false;
                CheckBoxCell checkBoxCell = (CheckBoxCell) view;
                if (!z) {
                }
                switch (uItem.f2105id) {
                }
                this.adapter.update(true);
            } else {
                CheckBoxCell checkBoxCell2 = (CheckBoxCell) view;
                if (!z) {
                    checkBoxCell2.setChecked(!checkBoxCell2.isChecked(), true);
                }
                switch (uItem.f2105id) {
                    case 2:
                        if (z) {
                            this.sectionMembersExpanded = !this.sectionMembersExpanded;
                        } else {
                            TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter = this.currentFilter;
                            boolean zIsChecked = checkBoxCell2.isChecked();
                            tL_channelAdminLogEventsFilter.edit_rank = zIsChecked;
                            tL_channelAdminLogEventsFilter.leave = zIsChecked;
                            tL_channelAdminLogEventsFilter.join = zIsChecked;
                            tL_channelAdminLogEventsFilter.invite = zIsChecked;
                            tL_channelAdminLogEventsFilter.demote = zIsChecked;
                            tL_channelAdminLogEventsFilter.promote = zIsChecked;
                            if (this.isMegagroup) {
                                TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter2 = this.currentFilter;
                                boolean zIsChecked2 = checkBoxCell2.isChecked();
                                tL_channelAdminLogEventsFilter2.unban = zIsChecked2;
                                tL_channelAdminLogEventsFilter2.unkick = zIsChecked2;
                                tL_channelAdminLogEventsFilter2.ban = zIsChecked2;
                                tL_channelAdminLogEventsFilter2.kick = zIsChecked2;
                            }
                        }
                        break;
                    case 3:
                        TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter3 = this.currentFilter;
                        boolean zIsChecked3 = checkBoxCell2.isChecked();
                        tL_channelAdminLogEventsFilter3.demote = zIsChecked3;
                        tL_channelAdminLogEventsFilter3.promote = zIsChecked3;
                        break;
                    case 4:
                        TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter4 = this.currentFilter;
                        boolean zIsChecked4 = checkBoxCell2.isChecked();
                        tL_channelAdminLogEventsFilter4.unban = zIsChecked4;
                        tL_channelAdminLogEventsFilter4.unkick = zIsChecked4;
                        tL_channelAdminLogEventsFilter4.ban = zIsChecked4;
                        tL_channelAdminLogEventsFilter4.kick = zIsChecked4;
                        break;
                    case 5:
                        TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter5 = this.currentFilter;
                        boolean zIsChecked5 = checkBoxCell2.isChecked();
                        tL_channelAdminLogEventsFilter5.join = zIsChecked5;
                        tL_channelAdminLogEventsFilter5.invite = zIsChecked5;
                        break;
                    case 6:
                        this.currentFilter.leave = checkBoxCell2.isChecked();
                        break;
                    case 7:
                        this.currentFilter.edit_rank = checkBoxCell2.isChecked();
                        break;
                    case 8:
                        if (z) {
                            this.sectionSettingsExpanded = !this.sectionSettingsExpanded;
                        } else {
                            TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter6 = this.currentFilter;
                            boolean zIsChecked6 = checkBoxCell2.isChecked();
                            tL_channelAdminLogEventsFilter6.group_call = zIsChecked6;
                            tL_channelAdminLogEventsFilter6.invites = zIsChecked6;
                            tL_channelAdminLogEventsFilter6.settings = zIsChecked6;
                            tL_channelAdminLogEventsFilter6.info = zIsChecked6;
                        }
                        break;
                    case 9:
                        TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter7 = this.currentFilter;
                        boolean zIsChecked7 = checkBoxCell2.isChecked();
                        tL_channelAdminLogEventsFilter7.settings = zIsChecked7;
                        tL_channelAdminLogEventsFilter7.info = zIsChecked7;
                        break;
                    case 10:
                        this.currentFilter.invites = checkBoxCell2.isChecked();
                        break;
                    case 11:
                        this.currentFilter.group_call = checkBoxCell2.isChecked();
                        break;
                    case 12:
                        if (z) {
                            this.sectionMessagesExpanded = !this.sectionMessagesExpanded;
                        } else {
                            TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter8 = this.currentFilter;
                            boolean zIsChecked8 = checkBoxCell2.isChecked();
                            tL_channelAdminLogEventsFilter8.pinned = zIsChecked8;
                            tL_channelAdminLogEventsFilter8.edit = zIsChecked8;
                            tL_channelAdminLogEventsFilter8.delete = zIsChecked8;
                        }
                        break;
                    case 13:
                        this.currentFilter.delete = checkBoxCell2.isChecked();
                        break;
                    case 14:
                        this.currentFilter.edit = checkBoxCell2.isChecked();
                        break;
                    case 15:
                        this.currentFilter.pinned = checkBoxCell2.isChecked();
                        break;
                    case 16:
                        if (this.selectedAdmins == null) {
                            this.selectedAdmins = new LongSparseArray();
                        }
                        this.selectedAdmins.clear();
                        if (checkBoxCell2.isChecked() && (arrayList = this.currentAdmins) != null) {
                            int size = arrayList.size();
                            int i2 = 0;
                            while (i2 < size) {
                                Object obj = arrayList.get(i2);
                                i2++;
                                long peerDialogId = DialogObject.getPeerDialogId(((TLRPC.ChannelParticipant) obj).peer);
                                this.selectedAdmins.put(peerDialogId, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId)));
                            }
                        }
                        break;
                }
                this.adapter.update(true);
            }
        }
        int i3 = uItem.f2105id;
        if (i3 < 0) {
            CheckBoxCell checkBoxCell3 = (CheckBoxCell) view;
            int i4 = (-i3) - 1;
            if (i4 < 0 || i4 >= this.currentAdmins.size()) {
                return;
            }
            long peerDialogId2 = DialogObject.getPeerDialogId(((TLRPC.ChannelParticipant) this.currentAdmins.get(i4)).peer);
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId2));
            if (this.selectedAdmins == null) {
                this.selectedAdmins = new LongSparseArray();
            }
            if (this.selectedAdmins.containsKey(peerDialogId2)) {
                this.selectedAdmins.remove(peerDialogId2);
                checkBoxCell3.setChecked(false, true);
            } else {
                this.selectedAdmins.put(peerDialogId2, user);
                checkBoxCell3.setChecked(true, true);
            }
            this.adapter.update(true);
        }
    }

    public void setCurrentAdmins(ArrayList arrayList) {
        this.currentAdmins = arrayList;
        if (arrayList != null && this.selectedAdmins == null) {
            this.selectedAdmins = new LongSparseArray();
            ArrayList arrayList2 = this.currentAdmins;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                long peerDialogId = DialogObject.getPeerDialogId(((TLRPC.ChannelParticipant) obj).peer);
                this.selectedAdmins.put(peerDialogId, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId)));
            }
        }
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    public void setAdminLogFilterAlertDelegate(AdminLogFilterAlertDelegate adminLogFilterAlertDelegate) {
        this.delegate = adminLogFilterAlertDelegate;
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected void onSmoothContainerViewLayout(float f) {
        super.onSmoothContainerViewLayout(f);
        this.buttonContainer.setTranslationY(-f);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView, org.telegram.p029ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return !this.recyclerListView.canScrollVertically(-1);
    }
}
