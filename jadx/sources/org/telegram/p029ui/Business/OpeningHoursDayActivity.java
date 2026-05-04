package org.telegram.p029ui.Business;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Business.OpeningHoursActivity;
import org.telegram.p029ui.Cells.TextCell;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public class OpeningHoursDayActivity extends BaseFragment {
    public boolean enabled;
    private UniversalRecyclerView listView;
    private final int max;
    private final int maxPeriodsCount;
    private final int min;
    private final ArrayList periods;
    private final CharSequence title;
    private Runnable whenApplied;
    public Runnable whenDone;

    public OpeningHoursDayActivity(CharSequence charSequence, ArrayList arrayList, int i, int i2, int i3) {
        this.title = charSequence;
        this.periods = arrayList;
        this.min = i;
        this.max = i2;
        this.maxPeriodsCount = i3;
        this.enabled = !arrayList.isEmpty();
    }

    public OpeningHoursDayActivity onApplied(Runnable runnable) {
        this.whenApplied = runnable;
        return this;
    }

    public OpeningHoursDayActivity onDone(Runnable runnable) {
        this.whenDone = runnable;
        return this;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        Runnable runnable = this.whenDone;
        if (runnable != null) {
            runnable.run();
        }
        super.onBecomeFullyHidden();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(this.title);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Business.OpeningHoursDayActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    OpeningHoursDayActivity.this.finishFragment();
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.Business.OpeningHoursDayActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.Business.OpeningHoursDayActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, null);
        this.listView = universalRecyclerView;
        universalRecyclerView.setSections();
        this.listView.adapter.setApplyBackground(false);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.fragmentView = frameLayout;
        return frameLayout;
    }

    private boolean is24() {
        return this.periods.size() == 1 && ((OpeningHoursActivity.Period) this.periods.get(0)).start == 0 && ((OpeningHoursActivity.Period) this.periods.get(0)).end == 1439;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asRippleCheck(-1, LocaleController.getString(C2888R.string.BusinessHoursDayOpen)).setChecked(this.enabled));
        arrayList.add(UItem.asShadow(null));
        if (this.enabled) {
            for (int i = 0; i < this.periods.size(); i++) {
                if (i > 0) {
                    arrayList.add(UItem.asShadow(null));
                }
                OpeningHoursActivity.Period period = (OpeningHoursActivity.Period) this.periods.get(i);
                if (!is24()) {
                    int i2 = i * 3;
                    arrayList.add(UItem.asButton(i2, LocaleController.getString(C2888R.string.BusinessHoursDayOpenHour), OpeningHoursActivity.Period.timeToString(period.start)));
                    arrayList.add(UItem.asButton(i2 + 1, LocaleController.getString(C2888R.string.BusinessHoursDayCloseHour), OpeningHoursActivity.Period.timeToString(period.end)));
                    arrayList.add(UItem.asButton(i2 + 2, LocaleController.getString(C2888R.string.Remove)).red());
                }
            }
            if (showAddButton()) {
                arrayList.add(UItem.asShadow(null));
                arrayList.add(UItem.asButton(-2, C2888R.drawable.menu_premium_clock_add, LocaleController.getString(C2888R.string.BusinessHoursDayAdd)).accent());
            }
            arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.BusinessHoursDayInfo)));
        }
    }

    private boolean showAddButton() {
        if (this.periods.size() >= this.maxPeriodsCount) {
            return false;
        }
        if (!this.periods.isEmpty() && !is24()) {
            ArrayList arrayList = this.periods;
            if (((OpeningHoursActivity.Period) arrayList.get(arrayList.size() - 1)).end >= Math.min(1438, this.max - 2)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(UItem uItem, final View view, int i, float f, float f2) {
        int i2;
        int i3 = uItem.f2105id;
        if (i3 == -1) {
            this.enabled = !this.enabled;
            this.periods.clear();
            if (this.enabled) {
                this.periods.add(new OpeningHoursActivity.Period(0, 1439));
            }
            TextCheckCell textCheckCell = (TextCheckCell) view;
            boolean z = this.enabled;
            uItem.checked = z;
            textCheckCell.setChecked(z);
            boolean z2 = this.enabled;
            textCheckCell.setBackgroundColorAnimated(z2, Theme.getColor(z2 ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
            this.listView.adapter.update(true);
            Runnable runnable = this.whenApplied;
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        if (i3 == -2) {
            if (this.periods.isEmpty() || is24()) {
                if (is24()) {
                    this.periods.clear();
                }
                int iClamp = Utilities.clamp(480, this.max - 1, this.min);
                this.periods.add(new OpeningHoursActivity.Period(iClamp, Utilities.clamp(1200, this.max, iClamp + 1)));
            } else {
                ArrayList arrayList = this.periods;
                int i4 = ((OpeningHoursActivity.Period) arrayList.get(arrayList.size() - 1)).end;
                int iClamp2 = Utilities.clamp(i4 + 30, this.max - 1, this.min);
                this.periods.add(new OpeningHoursActivity.Period(iClamp2, Utilities.clamp((i4 + 1560) / 2, this.max, iClamp2 + 1)));
            }
            Runnable runnable2 = this.whenApplied;
            if (runnable2 != null) {
                runnable2.run();
            }
            this.listView.adapter.update(true);
            return;
        }
        if (uItem.viewType != 3 || (i2 = i3 / 3) < 0 || i2 >= this.periods.size()) {
            return;
        }
        int i5 = i2 - 1;
        OpeningHoursActivity.Period period = i5 >= 0 ? (OpeningHoursActivity.Period) this.periods.get(i5) : null;
        final OpeningHoursActivity.Period period2 = (OpeningHoursActivity.Period) this.periods.get(i2);
        int i6 = i2 + 1;
        OpeningHoursActivity.Period period3 = i6 < this.periods.size() ? (OpeningHoursActivity.Period) this.periods.get(i6) : null;
        int i7 = uItem.f2105id;
        if (i7 % 3 == 0) {
            AlertsCreator.createTimePickerDialog(getContext(), LocaleController.getString(C2888R.string.BusinessHoursDayOpenHourPicker), period2.start, period == null ? this.min : period.end + 1, period2.end - 1, new Utilities.Callback() { // from class: org.telegram.ui.Business.OpeningHoursDayActivity$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$0(view, period2, (Integer) obj);
                }
            });
            return;
        }
        if (i7 % 3 == 1) {
            AlertsCreator.createTimePickerDialog(getContext(), LocaleController.getString(C2888R.string.BusinessHoursDayCloseHourPicker), period2.end, period2.start + 1, period3 == null ? this.max : period3.start - 1, new Utilities.Callback() { // from class: org.telegram.ui.Business.OpeningHoursDayActivity$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$1(view, period2, (Integer) obj);
                }
            });
            return;
        }
        if (i7 % 3 == 2) {
            this.periods.remove(i2);
            if (this.periods.isEmpty()) {
                this.periods.add(new OpeningHoursActivity.Period(0, 1439));
            }
            this.listView.adapter.update(true);
            Runnable runnable3 = this.whenApplied;
            if (runnable3 != null) {
                runnable3.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$0(View view, OpeningHoursActivity.Period period, Integer num) {
        boolean zShowAddButton = showAddButton();
        int iIntValue = num.intValue();
        period.start = iIntValue;
        ((TextCell) view).setValue(OpeningHoursActivity.Period.timeToString(iIntValue), true);
        if (zShowAddButton != showAddButton()) {
            this.listView.adapter.update(true);
        }
        Runnable runnable = this.whenApplied;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$1(View view, OpeningHoursActivity.Period period, Integer num) {
        boolean zShowAddButton = showAddButton();
        int iIntValue = num.intValue();
        period.end = iIntValue;
        ((TextCell) view).setValue(OpeningHoursActivity.Period.timeToString(iIntValue), true);
        if (zShowAddButton != showAddButton()) {
            this.listView.adapter.update(true);
        }
        Runnable runnable = this.whenApplied;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        if (this.enabled || this.periods.isEmpty()) {
            return;
        }
        this.periods.clear();
        Runnable runnable = this.whenApplied;
        if (runnable != null) {
            runnable.run();
        }
    }
}
