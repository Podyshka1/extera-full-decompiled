package org.telegram.ui;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.transition.ChangeBounds;
import android.transition.Fade;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.RadioCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.SectionsScrollView;
import org.telegram.ui.Components.StickerImageView;
import org.telegram.ui.UsersSelectActivity;

/* JADX INFO: loaded from: classes6.dex */
public class AutoDeleteMessagesActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    RadioCellInternal afterOneDay;
    RadioCellInternal afterOneMonth;
    RadioCellInternal afterOneWeek;
    LinearLayout checkBoxContainer;
    RadioCellInternal customTimeButton;
    RadioCellInternal offCell;
    ArrayList<RadioCellInternal> arrayList = new ArrayList<>();
    public int startFromTtl = 0;

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        int globalTTl = getUserConfig().getGlobalTTl();
        this.startFromTtl = globalTTl;
        if (globalTTl < 0) {
            this.startFromTtl = 0;
        }
        getUserConfig().loadGlobalTTl();
        getNotificationCenter().addObserver(this, NotificationCenter.didUpdateGlobalAutoDeleteTimer);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.didUpdateGlobalAutoDeleteTimer);
    }

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
    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2573R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(C2573R.string.AutoDeleteMessages));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.AutoDeleteMessagesActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    AutoDeleteMessagesActivity.this.finishFragment();
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        SectionsScrollView.SectionsLinearLayout sectionsLinearLayout = new SectionsScrollView.SectionsLinearLayout(getContext());
        SectionsScrollView sectionsScrollView = new SectionsScrollView(getContext(), sectionsLinearLayout, this.resourceProvider);
        sectionsLinearLayout.setOrientation(1);
        sectionsScrollView.addView(sectionsLinearLayout);
        frameLayout.addView(sectionsScrollView);
        this.actionBar.setAdaptiveBackground(sectionsScrollView);
        FrameLayout frameLayout2 = new FrameLayout(context);
        StickerImageView stickerImageView = new StickerImageView(context, this.currentAccount);
        stickerImageView.setStickerNum(10);
        frameLayout2.addView(stickerImageView, LayoutHelper.createFrame(130, 130, 17));
        frameLayout2.setTag(-33024);
        sectionsLinearLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, 170));
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.checkBoxContainer = linearLayout;
        linearLayout.setOrientation(1);
        this.checkBoxContainer.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        sectionsLinearLayout.addView(this.checkBoxContainer, LayoutHelper.createLinear(-1, -2));
        HeaderCell headerCell = new HeaderCell(getContext());
        headerCell.setText(LocaleController.getString(C2573R.string.MessageLifetime));
        this.checkBoxContainer.addView(headerCell);
        RadioCellInternal radioCellInternal = new RadioCellInternal(getContext());
        this.offCell = radioCellInternal;
        radioCellInternal.setText(LocaleController.getString(C2573R.string.ShortMessageLifetimeForever), false, true);
        RadioCellInternal radioCellInternal2 = this.offCell;
        radioCellInternal2.time = 0;
        this.checkBoxContainer.addView(radioCellInternal2);
        RadioCellInternal radioCellInternal3 = new RadioCellInternal(getContext());
        this.afterOneDay = radioCellInternal3;
        radioCellInternal3.setText(LocaleController.getString(C2573R.string.AutoDeleteAfter1Day), false, true);
        RadioCellInternal radioCellInternal4 = this.afterOneDay;
        radioCellInternal4.time = 1440;
        this.checkBoxContainer.addView(radioCellInternal4);
        RadioCellInternal radioCellInternal5 = new RadioCellInternal(getContext());
        this.afterOneWeek = radioCellInternal5;
        radioCellInternal5.setText(LocaleController.getString(C2573R.string.AutoDeleteAfter1Week), false, true);
        RadioCellInternal radioCellInternal6 = this.afterOneWeek;
        radioCellInternal6.time = 10080;
        this.checkBoxContainer.addView(radioCellInternal6);
        RadioCellInternal radioCellInternal7 = new RadioCellInternal(getContext());
        this.afterOneMonth = radioCellInternal7;
        radioCellInternal7.setText(LocaleController.getString(C2573R.string.AutoDeleteAfter1Month), false, true);
        RadioCellInternal radioCellInternal8 = this.afterOneMonth;
        radioCellInternal8.time = 44640;
        this.checkBoxContainer.addView(radioCellInternal8);
        RadioCellInternal radioCellInternal9 = new RadioCellInternal(getContext());
        this.customTimeButton = radioCellInternal9;
        radioCellInternal9.setText(LocaleController.getString(C2573R.string.SetCustomTime), false, false);
        this.customTimeButton.hideRadioButton();
        this.checkBoxContainer.addView(this.customTimeButton);
        this.arrayList.add(this.offCell);
        this.arrayList.add(this.afterOneDay);
        this.arrayList.add(this.afterOneWeek);
        this.arrayList.add(this.afterOneMonth);
        this.arrayList.add(this.customTimeButton);
        updateItems();
        TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(context, 12, this.resourceProvider);
        textInfoPrivacyCell.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.GlobalAutoDeleteInfo), new RunnableC28682()));
        sectionsLinearLayout.addView(textInfoPrivacyCell, LayoutHelper.createLinear(-1, -2));
        selectDate(this.startFromTtl, false);
        return this.fragmentView;
    }

    /* JADX INFO: renamed from: org.telegram.ui.AutoDeleteMessagesActivity$2 */
    public class RunnableC28682 implements Runnable {
        public RunnableC28682() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UsersSelectActivity usersSelectActivity = new UsersSelectActivity(1);
            usersSelectActivity.setTtlPeriod(AutoDeleteMessagesActivity.this.getSelectedTime());
            usersSelectActivity.setDelegate(new UsersSelectActivity.FilterUsersActivityDelegate() { // from class: org.telegram.ui.AutoDeleteMessagesActivity$2$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.UsersSelectActivity.FilterUsersActivityDelegate
                public final void didSelectChats(ArrayList arrayList, int i) {
                    this.f$0.lambda$run$1(arrayList, i);
                }
            });
            AutoDeleteMessagesActivity.this.presentFragment(usersSelectActivity);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(final ArrayList arrayList, int i) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.AutoDeleteMessagesActivity$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0(arrayList);
                }
            }, 100L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(ArrayList arrayList) {
            AutoDeleteMessagesActivity autoDeleteMessagesActivity;
            if (arrayList.isEmpty()) {
                return;
            }
            int i = 0;
            while (true) {
                int size = arrayList.size();
                autoDeleteMessagesActivity = AutoDeleteMessagesActivity.this;
                if (i >= size) {
                    break;
                }
                autoDeleteMessagesActivity.getMessagesController().setDialogHistoryTTL(((Long) arrayList.get(i)).longValue(), AutoDeleteMessagesActivity.this.getSelectedTime() * 60);
                i++;
            }
            int selectedTime = autoDeleteMessagesActivity.getSelectedTime();
            AutoDeleteMessagesActivity autoDeleteMessagesActivity2 = AutoDeleteMessagesActivity.this;
            if (selectedTime > 0) {
                BulletinFactory.of(autoDeleteMessagesActivity2).createSimpleBulletin(C2573R.raw.fire_on, AndroidUtilities.replaceTags(LocaleController.formatString("AutodeleteTimerEnabledForChats", C2573R.string.AutodeleteTimerEnabledForChats, LocaleController.formatTTLString(AutoDeleteMessagesActivity.this.getSelectedTime() * 60), LocaleController.formatPluralString("Chats", arrayList.size(), Integer.valueOf(arrayList.size()))))).show();
            } else {
                BulletinFactory.of(autoDeleteMessagesActivity2).createSimpleBulletin(C2573R.raw.fire_off, LocaleController.formatString("AutodeleteTimerDisabledForChats", C2573R.string.AutodeleteTimerDisabledForChats, LocaleController.formatPluralString("Chats", arrayList.size(), Integer.valueOf(arrayList.size())))).show();
            }
        }
    }

    private void updateItems() {
        for (int i = 0; i < this.arrayList.size(); i++) {
            this.arrayList.get(i).setBackground(Theme.createSelectorWithBackgroundDrawable(Theme.getColor(Theme.key_windowBackgroundWhite), Theme.getColor(Theme.key_listSelector)));
            this.arrayList.get(i).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.AutoDeleteMessagesActivity$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$updateItems$2(view);
                }
            });
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.AutoDeleteMessagesActivity$3 */
    public class C28693 implements AlertsCreator.ScheduleDatePickerDelegate {
        public C28693() {
        }

        @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
        public void didSelectDate(boolean z, final int i, int i2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.AutoDeleteMessagesActivity$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$didSelectDate$0(i);
                }
            }, 50L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectDate$0(int i) {
            AutoDeleteMessagesActivity.this.selectDate(i, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateItems$2(final View view) {
        if (view == this.customTimeButton) {
            AlertsCreator.createAutoDeleteDatePickerDialog(getContext(), 1, null, new C28693());
            return;
        }
        int i = ((RadioCellInternal) view).time;
        if (getSelectedTime() == 0 && i > 0) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setTitle(LocaleController.getString(C2573R.string.MessageLifetime));
            builder.setMessage(LocaleController.formatString("AutoDeleteConfirmMessage", C2573R.string.AutoDeleteConfirmMessage, LocaleController.formatTTLString(i * 60)));
            builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.AutoDeleteMessagesActivity$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    alertDialog.dismiss();
                }
            });
            builder.setPositiveButton(LocaleController.getString(C2573R.string.Enable), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.AutoDeleteMessagesActivity$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$updateItems$1(view, alertDialog, i2);
                }
            });
            builder.show();
            return;
        }
        selectRadioButton(view, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateItems$1(View view, AlertDialog alertDialog, int i) {
        alertDialog.dismiss();
        selectRadioButton(view, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSelectedTime() {
        for (int i = 0; i < this.arrayList.size(); i++) {
            if (this.arrayList.get(i).isChecked()) {
                return this.arrayList.get(i).time;
            }
        }
        return this.startFromTtl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectDate(int i, boolean z) {
        ArrayList<RadioCellInternal> arrayList;
        TransitionSet transitionSet = new TransitionSet();
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.setDuration(150L);
        Fade fade = new Fade(1);
        fade.setDuration(150L);
        transitionSet.addTransition(new Fade(2).setDuration(150L)).addTransition(changeBounds).addTransition(fade);
        transitionSet.setOrdering(0);
        transitionSet.setInterpolator((TimeInterpolator) CubicBezierInterpolator.DEFAULT);
        TransitionManager.beginDelayedTransition(this.checkBoxContainer, transitionSet);
        for (int i2 = 0; i2 < this.arrayList.size(); i2++) {
            if (this.arrayList.get(i2).time == i) {
                selectRadioButton(this.arrayList.get(i2), z);
                return;
            }
        }
        int i3 = 0;
        while (true) {
            int size = this.arrayList.size();
            arrayList = this.arrayList;
            if (i3 >= size) {
                break;
            }
            if (arrayList.get(i3).custom) {
                this.checkBoxContainer.removeView(this.arrayList.get(i3));
                this.arrayList.remove(i3);
                i3--;
            }
            i3++;
        }
        int size2 = arrayList.size();
        int i4 = 0;
        while (true) {
            if (i4 >= this.arrayList.size()) {
                break;
            }
            if (i < this.arrayList.get(i4).time) {
                size2 = i4 + 1;
                break;
            }
            i4++;
        }
        RadioCellInternal radioCellInternal = new RadioCellInternal(getContext());
        radioCellInternal.custom = true;
        radioCellInternal.time = i;
        radioCellInternal.setText(LocaleController.formatString("AutoDeleteAfterShort", C2573R.string.AutoDeleteAfterShort, LocaleController.formatTTLString(i * 60)), false, true);
        this.arrayList.add(size2, radioCellInternal);
        this.checkBoxContainer.addView(radioCellInternal, size2);
        updateItems();
        selectRadioButton(radioCellInternal, z);
    }

    private void selectRadioButton(View view, boolean z) {
        int i;
        for (int i2 = 0; i2 < this.arrayList.size(); i2++) {
            RadioCellInternal radioCellInternal = this.arrayList.get(i2);
            ArrayList<RadioCellInternal> arrayList = this.arrayList;
            if (radioCellInternal == view) {
                arrayList.get(i2).setChecked(true, this.fragmentBeginToShow);
            } else {
                arrayList.get(i2).setChecked(false, this.fragmentBeginToShow);
            }
        }
        if (!z || (i = ((RadioCellInternal) view).time) <= 0) {
            return;
        }
        BulletinFactory.of(this).createSimpleBulletin(C2573R.raw.fire_on, AndroidUtilities.replaceTags(LocaleController.formatString("AutoDeleteGlobalTimerEnabled", C2573R.string.AutoDeleteGlobalTimerEnabled, LocaleController.formatTTLString(i * 60)))).show();
    }

    public class RadioCellInternal extends RadioCell {
        boolean custom;
        int time;

        public RadioCellInternal(Context context) {
            super(context);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        for (int i = 0; i < this.arrayList.size(); i++) {
            if (this.arrayList.get(i).isChecked()) {
                if (this.arrayList.get(i).time != this.startFromTtl) {
                    this.startFromTtl = this.arrayList.get(i).time;
                    TLRPC.TL_messages_setDefaultHistoryTTL tL_messages_setDefaultHistoryTTL = new TLRPC.TL_messages_setDefaultHistoryTTL();
                    tL_messages_setDefaultHistoryTTL.period = this.arrayList.get(i).time * 60;
                    getConnectionsManager().sendRequest(tL_messages_setDefaultHistoryTTL, new RequestDelegate() { // from class: org.telegram.ui.AutoDeleteMessagesActivity.4
                        @Override // org.telegram.tgnet.RequestDelegate
                        public void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        }
                    });
                    getUserConfig().setGlobalTtl(this.startFromTtl);
                    NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.didUpdateGlobalAutoDeleteTimer, new Object[0]);
                    return;
                }
                return;
            }
        }
    }
}
