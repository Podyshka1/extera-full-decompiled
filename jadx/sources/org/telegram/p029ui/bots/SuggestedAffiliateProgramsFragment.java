package org.telegram.p029ui.bots;

import android.content.Context;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import java.util.ArrayList;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BackDrawable;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.SizeNotifierFrameLayout;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.p029ui.Stars.BotStarsController;
import org.telegram.p029ui.bots.ChannelAffiliateProgramsFragment;
import org.telegram.tgnet.p028tl.TL_payments;

/* JADX INFO: loaded from: classes7.dex */
public class SuggestedAffiliateProgramsFragment extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private BackDrawable backDrawable;
    private final long dialogId;
    private UniversalRecyclerView listView;

    public SuggestedAffiliateProgramsFragment(long j) {
        this.dialogId = j;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.channelSuggestedBotsUpdate);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.channelSuggestedBotsUpdate);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        ActionBar actionBar = this.actionBar;
        BackDrawable backDrawable = new BackDrawable(false);
        this.backDrawable = backDrawable;
        actionBar.setBackButtonDrawable(backDrawable);
        this.backDrawable.setAnimationTime(240.0f);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.bots.SuggestedAffiliateProgramsFragment.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    SuggestedAffiliateProgramsFragment.this.finishFragment();
                }
            }
        });
        this.actionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        ActionBar actionBar2 = this.actionBar;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        actionBar2.setItemsColor(Theme.getColor(i), false);
        this.actionBar.setItemsColor(Theme.getColor(i), true);
        this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), false);
        this.actionBar.setTitleColor(Theme.getColor(i));
        this.actionBar.setTitle(LocaleController.getString(C2888R.string.ChannelAffiliatePrograms));
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context);
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.bots.SuggestedAffiliateProgramsFragment$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.bots.SuggestedAffiliateProgramsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onItemClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, null);
        this.listView = universalRecyclerView;
        sizeNotifierFrameLayout.addView(universalRecyclerView, LayoutHelper.createFrame(-1, -1, 119));
        this.fragmentView = sizeNotifierFrameLayout;
        return sizeNotifierFrameLayout;
    }

    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        BotStarsController.ChannelSuggestedBots channelSuggestedBots = BotStarsController.getInstance(this.currentAccount).getChannelSuggestedBots(this.dialogId);
        for (int i = 0; i < channelSuggestedBots.bots.size(); i++) {
            arrayList.add(ChannelAffiliateProgramsFragment.BotCell.Factory.m1342as(channelSuggestedBots.bots.get(i), false));
        }
        if (channelSuggestedBots.isLoading()) {
            arrayList.add(UItem.asFlicker(29));
            arrayList.add(UItem.asFlicker(29));
            arrayList.add(UItem.asFlicker(29));
        }
    }

    public void onItemClick(UItem uItem, View view, int i, float f, float f2) {
        Object obj = uItem.object;
        if (obj instanceof TL_payments.starRefProgram) {
            ChannelAffiliateProgramsFragment.showConnectAffiliateAlert(getContext(), this.currentAccount, (TL_payments.starRefProgram) obj, this.dialogId, this.resourceProvider, false);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalRecyclerView universalRecyclerView;
        if (i == NotificationCenter.channelSuggestedBotsUpdate && ((Long) objArr[0]).longValue() == this.dialogId && (universalRecyclerView = this.listView) != null && (universalRecyclerView.getAdapter() instanceof UniversalAdapter)) {
            ((UniversalAdapter) this.listView.getAdapter()).update(true);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        if (getLastStoryViewer() != null && getLastStoryViewer().isShown()) {
            return false;
        }
        int color = Theme.getColor(Theme.key_windowBackgroundWhite);
        if (this.actionBar.isActionModeShowed()) {
            color = Theme.getColor(Theme.key_actionBarActionModeDefault);
        }
        return ColorUtils.calculateLuminance(color) > 0.699999988079071d;
    }
}
