package org.telegram.p029ui.Business;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class TimezoneSelector extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private String currentTimezone;
    private LinearLayout emptyView;
    private UniversalRecyclerView listView;
    private String query;
    private ActionBarMenuItem searchItem;
    private boolean searching;
    private String systemTimezone;
    private boolean useSystem;
    private Utilities.Callback whenTimezoneSelected;

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(C2888R.string.TimezoneTitle));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Business.TimezoneSelector.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    TimezoneSelector.this.finishFragment();
                }
            }
        });
        ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.createMenu().addItem(1, C2888R.drawable.outline_header_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.Business.TimezoneSelector.2
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                TimezoneSelector.this.searching = true;
                TimezoneSelector.this.listView.adapter.update(true);
                TimezoneSelector.this.listView.scrollToPosition(0);
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                TimezoneSelector.this.searching = false;
                TimezoneSelector.this.query = null;
                TimezoneSelector.this.listView.adapter.update(true);
                TimezoneSelector.this.listView.scrollToPosition(0);
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                TimezoneSelector.this.query = editText.getText().toString();
                TimezoneSelector.this.listView.adapter.update(true);
                TimezoneSelector.this.listView.scrollToPosition(0);
            }
        });
        this.searchItem = actionBarMenuItemSearchListener;
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString(C2888R.string.Search));
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.Business.TimezoneSelector$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.Business.TimezoneSelector$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, null);
        this.listView = universalRecyclerView;
        universalRecyclerView.setSections();
        this.listView.adapter.setApplyBackground(false);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Business.TimezoneSelector.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                if (i == 1) {
                    AndroidUtilities.hideKeyboard(TimezoneSelector.this.getParentActivity().getCurrentFocus());
                }
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        this.emptyView = linearLayout;
        linearLayout.setOrientation(1);
        this.emptyView.setMinimumHeight(AndroidUtilities.m1124dp(500.0f));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.getImageReceiver().setAllowLoadingOnAttachedOnly(false);
        MediaDataController.getInstance(this.currentAccount).setPlaceholderImage(backupImageView, "RestrictedEmoji", "🌖", "130_130");
        this.emptyView.addView(backupImageView, LayoutHelper.createLinear(130, 130, 49, 0, 42, 0, 12));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString(C2888R.string.TimezoneNotFound));
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, this.resourceProvider));
        textView.setTextSize(1, 15.0f);
        this.emptyView.addView(textView, LayoutHelper.createLinear(-2, -2, 49, 0, 0, 0, 0));
        this.fragmentView = frameLayout;
        return frameLayout;
    }

    public TimezoneSelector setValue(String str) {
        this.currentTimezone = str;
        return this;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        String systemTimezoneId = TimezonesController.getInstance(this.currentAccount).getSystemTimezoneId();
        this.systemTimezone = systemTimezoneId;
        this.useSystem = TextUtils.equals(systemTimezoneId, this.currentTimezone);
        getNotificationCenter().addObserver(this, NotificationCenter.timezonesUpdated);
        return super.onFragmentCreate();
    }

    public TimezoneSelector whenSelected(Utilities.Callback callback) {
        this.whenTimezoneSelected = callback;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        boolean z = this.searching && !TextUtils.isEmpty(this.query);
        TimezonesController timezonesController = TimezonesController.getInstance(this.currentAccount);
        if (!z) {
            arrayList.add(UItem.asRippleCheck(-1, LocaleController.getString(C2888R.string.TimezoneDetectAutomatically)).setChecked(this.useSystem));
            arrayList.add(UItem.asShadow(LocaleController.formatString(C2888R.string.TimezoneDetectAutomaticallyInfo, timezonesController.getTimezoneName(this.currentTimezone, true))));
            arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.TimezoneHeader)));
        }
        boolean z2 = true;
        for (int i = 0; i < timezonesController.getTimezones().size(); i++) {
            TLRPC.TL_timezone tL_timezone = (TLRPC.TL_timezone) timezonesController.getTimezones().get(i);
            if (z) {
                String strReplace = AndroidUtilities.translitSafe(tL_timezone.name).toLowerCase().replace("/", " ");
                String lowerCase = AndroidUtilities.translitSafe(this.query).toLowerCase();
                if (strReplace.contains(" " + lowerCase) || strReplace.startsWith(lowerCase)) {
                    arrayList.add(UItem.asRadio(i, timezonesController.getTimezoneName(tL_timezone, false), timezonesController.getTimezoneOffsetName(tL_timezone)).setChecked(TextUtils.equals(tL_timezone.f1809id, this.currentTimezone)).setEnabled(!this.useSystem || z));
                    z2 = false;
                }
            }
        }
        if (z2) {
            arrayList.add(UItem.asCustom(this.emptyView).setTransparent(true));
        } else {
            arrayList.add(UItem.asShadow(null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        if (uItem.f2105id == -1) {
            boolean z = this.useSystem;
            this.useSystem = !z;
            if (!z) {
                String str = this.systemTimezone;
                this.currentTimezone = str;
                Utilities.Callback callback = this.whenTimezoneSelected;
                if (callback != null) {
                    callback.run(str);
                }
            }
            TextCheckCell textCheckCell = (TextCheckCell) view;
            textCheckCell.setChecked(this.useSystem);
            boolean z2 = this.useSystem;
            textCheckCell.setBackgroundColorAnimated(z2, Theme.getColor(z2 ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
            this.listView.adapter.update(true);
            return;
        }
        if (view.isEnabled()) {
            TimezonesController timezonesController = TimezonesController.getInstance(this.currentAccount);
            int i2 = uItem.f2105id;
            if (i2 < 0 || i2 >= timezonesController.getTimezones().size()) {
                return;
            }
            TLRPC.TL_timezone tL_timezone = (TLRPC.TL_timezone) timezonesController.getTimezones().get(uItem.f2105id);
            this.useSystem = false;
            String str2 = tL_timezone.f1809id;
            this.currentTimezone = str2;
            Utilities.Callback callback2 = this.whenTimezoneSelected;
            if (callback2 != null) {
                callback2.run(str2);
            }
            if (this.searching) {
                this.actionBar.closeSearchField(true);
            }
            this.listView.adapter.update(true);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalRecyclerView universalRecyclerView;
        UniversalAdapter universalAdapter;
        if (i != NotificationCenter.timezonesUpdated || (universalRecyclerView = this.listView) == null || (universalAdapter = universalRecyclerView.adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.timezonesUpdated);
        super.onFragmentDestroy();
    }
}
