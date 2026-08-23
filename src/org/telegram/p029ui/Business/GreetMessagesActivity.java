package org.telegram.p029ui.Business;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Business.QuickRepliesController;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CircularProgressDrawable;
import org.telegram.p029ui.Components.CrossfadeDrawable;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes6.dex */
public class GreetMessagesActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    public TL_account.TL_businessGreetingMessage currentValue;
    private final int[] daysOfInactivity;
    private final String[] daysOfInactivityTexts;
    private ActionBarMenuItem doneButton;
    private CrossfadeDrawable doneButtonDrawable;
    public boolean enabled;
    public boolean exclude;
    private UniversalRecyclerView listView;
    private BusinessRecipientsHelper recipientsHelper;
    private boolean valueSet;
    private int shiftDp = -4;
    public int inactivityDays = 7;

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public GreetMessagesActivity() {
        int[] iArr = {7, 14, 21, 28};
        this.daysOfInactivity = iArr;
        this.daysOfInactivityTexts = new String[iArr.length];
        int i = 0;
        while (true) {
            int[] iArr2 = this.daysOfInactivity;
            if (i >= iArr2.length) {
                return;
            }
            this.daysOfInactivityTexts[i] = LocaleController.formatPluralString("DaysSchedule", iArr2[i], new Object[0]);
            i++;
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(C2888R.string.BusinessGreet));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Business.GreetMessagesActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    if (GreetMessagesActivity.this.onBackPressed(true)) {
                        GreetMessagesActivity.this.finishFragment();
                    }
                } else if (i == 1) {
                    GreetMessagesActivity.this.processDone();
                }
            }
        });
        Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.ic_ab_done).mutate();
        int i = Theme.key_actionBarDefaultIcon;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
        this.doneButtonDrawable = new CrossfadeDrawable(drawableMutate, new CircularProgressDrawable(Theme.getColor(i)));
        this.doneButton = this.actionBar.createMenu().addItemWithWidth(1, this.doneButtonDrawable, AndroidUtilities.m1124dp(56.0f), LocaleController.getString(C2888R.string.Done));
        checkDone(false);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        BusinessRecipientsHelper businessRecipientsHelper = new BusinessRecipientsHelper(this, new Runnable() { // from class: org.telegram.ui.Business.GreetMessagesActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$0();
            }
        });
        this.recipientsHelper = businessRecipientsHelper;
        businessRecipientsHelper.doNotExcludeNewChats();
        BusinessRecipientsHelper businessRecipientsHelper2 = this.recipientsHelper;
        TL_account.TL_businessGreetingMessage tL_businessGreetingMessage = this.currentValue;
        businessRecipientsHelper2.setValue(tL_businessGreetingMessage == null ? null : tL_businessGreetingMessage.recipients);
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.Business.GreetMessagesActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.Business.GreetMessagesActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, null);
        this.listView = universalRecyclerView;
        universalRecyclerView.setSections();
        this.listView.adapter.setApplyBackground(false);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.actionBar.setAdaptiveBackground(this.listView);
        setValue();
        this.fragmentView = frameLayout;
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0() {
        this.listView.adapter.update(true);
        checkDone(true);
    }

    private void setValue() {
        UniversalAdapter universalAdapter;
        if (this.valueSet) {
            return;
        }
        TLRPC.UserFull userFull = getMessagesController().getUserFull(getUserConfig().getClientUserId());
        if (userFull == null) {
            getMessagesController().loadUserInfo(getUserConfig().getCurrentUser(), true, getClassGuid());
            return;
        }
        TL_account.TL_businessGreetingMessage tL_businessGreetingMessage = userFull.business_greeting_message;
        this.currentValue = tL_businessGreetingMessage;
        this.enabled = tL_businessGreetingMessage != null;
        this.inactivityDays = tL_businessGreetingMessage != null ? tL_businessGreetingMessage.no_activity_days : 7;
        this.exclude = tL_businessGreetingMessage != null ? tL_businessGreetingMessage.recipients.exclude_selected : true;
        BusinessRecipientsHelper businessRecipientsHelper = this.recipientsHelper;
        if (businessRecipientsHelper != null) {
            businessRecipientsHelper.setValue(tL_businessGreetingMessage == null ? null : tL_businessGreetingMessage.recipients);
        }
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null && (universalAdapter = universalRecyclerView.adapter) != null) {
            universalAdapter.update(true);
        }
        checkDone(true);
        this.valueSet = true;
    }

    public boolean hasChanges() {
        if (!this.valueSet) {
            return false;
        }
        boolean z = this.enabled;
        TL_account.TL_businessGreetingMessage tL_businessGreetingMessage = this.currentValue;
        if (z != (tL_businessGreetingMessage != null)) {
            return true;
        }
        if (z && tL_businessGreetingMessage != null) {
            if (tL_businessGreetingMessage.no_activity_days != this.inactivityDays || tL_businessGreetingMessage.recipients.exclude_selected != this.exclude) {
                return true;
            }
            BusinessRecipientsHelper businessRecipientsHelper = this.recipientsHelper;
            if (businessRecipientsHelper != null && businessRecipientsHelper.hasChanges()) {
                return true;
            }
        }
        return false;
    }

    private void checkDone(boolean z) {
        if (this.doneButton == null) {
            return;
        }
        boolean zHasChanges = hasChanges();
        this.doneButton.setEnabled(zHasChanges);
        if (z) {
            this.doneButton.animate().alpha(zHasChanges ? 1.0f : 0.0f).scaleX(zHasChanges ? 1.0f : 0.0f).scaleY(zHasChanges ? 1.0f : 0.0f).setDuration(180L).start();
            return;
        }
        this.doneButton.setAlpha(zHasChanges ? 1.0f : 0.0f);
        this.doneButton.setScaleX(zHasChanges ? 1.0f : 0.0f);
        this.doneButton.setScaleY(zHasChanges ? 1.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDone() {
        if (this.doneButtonDrawable.getProgress() > 0.0f) {
            return;
        }
        if (!hasChanges()) {
            finishFragment();
            return;
        }
        QuickRepliesController.QuickReply quickReplyFindReply = QuickRepliesController.getInstance(this.currentAccount).findReply("hello");
        boolean z = this.enabled;
        if (z && quickReplyFindReply == null) {
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            View viewFindViewByItemId = this.listView.findViewByItemId(2);
            int i = -this.shiftDp;
            this.shiftDp = i;
            AndroidUtilities.shakeViewSpring(viewFindViewByItemId, i);
            return;
        }
        if (!z || this.recipientsHelper.validate(this.listView)) {
            this.doneButtonDrawable.animateToProgress(1.0f);
            TLRPC.UserFull userFull = getMessagesController().getUserFull(getUserConfig().getClientUserId());
            TL_account.updateBusinessGreetingMessage updatebusinessgreetingmessage = new TL_account.updateBusinessGreetingMessage();
            if (this.enabled) {
                TL_account.TL_inputBusinessGreetingMessage tL_inputBusinessGreetingMessage = new TL_account.TL_inputBusinessGreetingMessage();
                updatebusinessgreetingmessage.message = tL_inputBusinessGreetingMessage;
                tL_inputBusinessGreetingMessage.shortcut_id = quickReplyFindReply.f1887id;
                tL_inputBusinessGreetingMessage.recipients = this.recipientsHelper.getInputValue();
                updatebusinessgreetingmessage.message.no_activity_days = this.inactivityDays;
                updatebusinessgreetingmessage.flags |= 1;
                if (userFull != null) {
                    userFull.flags2 |= 4;
                    TL_account.TL_businessGreetingMessage tL_businessGreetingMessage = new TL_account.TL_businessGreetingMessage();
                    userFull.business_greeting_message = tL_businessGreetingMessage;
                    tL_businessGreetingMessage.shortcut_id = quickReplyFindReply.f1887id;
                    tL_businessGreetingMessage.recipients = this.recipientsHelper.getValue();
                    userFull.business_greeting_message.no_activity_days = this.inactivityDays;
                }
            } else if (userFull != null) {
                userFull.flags2 &= -5;
                userFull.business_greeting_message = null;
            }
            getConnectionsManager().sendRequest(updatebusinessgreetingmessage, new RequestDelegate() { // from class: org.telegram.ui.Business.GreetMessagesActivity$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$processDone$2(tLObject, tL_error);
                }
            });
            getMessagesStorage().updateUserInfo(userFull, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$2(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.GreetMessagesActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDone$1(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$1(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error != null) {
            this.doneButtonDrawable.animateToProgress(0.0f);
            BulletinFactory.showError(tL_error);
        } else if (tLObject instanceof TLRPC.TL_boolFalse) {
            this.doneButtonDrawable.animateToProgress(0.0f);
            BulletinFactory.m1246of(this).createErrorBulletin(LocaleController.getString(C2888R.string.UnknownError)).show();
        } else {
            finishFragment();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (!hasChanges()) {
            return super.onBackPressed(z);
        }
        if (z) {
            if (!this.enabled) {
                processDone();
                return false;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString(C2888R.string.UnsavedChanges));
            builder.setMessage(LocaleController.getString(C2888R.string.BusinessGreetUnsavedChanges));
            builder.setPositiveButton(LocaleController.getString(C2888R.string.ApplyTheme), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Business.GreetMessagesActivity$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$onBackPressed$3(alertDialog, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2888R.string.PassportDiscard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Business.GreetMessagesActivity$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$onBackPressed$4(alertDialog, i);
                }
            });
            showDialog(builder.create());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackPressed$3(AlertDialog alertDialog, int i) {
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackPressed$4(AlertDialog alertDialog, int i) {
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asTopView(LocaleController.getString(C2888R.string.BusinessGreetInfo), "RestrictedEmoji", "👋"));
        arrayList.add(UItem.asCheck(1, LocaleController.getString(C2888R.string.BusinessGreetSend)).setChecked(this.enabled));
        arrayList.add(UItem.asShadow(null));
        if (this.enabled) {
            QuickRepliesController.QuickReply quickReplyFindReply = QuickRepliesController.getInstance(this.currentAccount).findReply("hello");
            if (quickReplyFindReply != null) {
                arrayList.add(UItem.asLargeQuickReply(quickReplyFindReply));
            } else {
                arrayList.add(UItem.asButton(2, C2888R.drawable.msg2_chats_add, LocaleController.getString(C2888R.string.BusinessGreetCreate)).accent());
            }
            arrayList.add(UItem.asShadow(null));
            arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.BusinessRecipients)));
            arrayList.add(UItem.asRadio(3, LocaleController.getString(C2888R.string.BusinessChatsAllPrivateExcept)).setChecked(this.exclude));
            arrayList.add(UItem.asRadio(4, LocaleController.getString(C2888R.string.BusinessChatsOnlySelected)).setChecked(true ^ this.exclude));
            arrayList.add(UItem.asShadow(null));
            this.recipientsHelper.fillItems(arrayList);
            arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.BusinessGreetRecipientsInfo)));
            arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.BusinessGreetPeriod)));
            int i = 0;
            while (true) {
                int[] iArr = this.daysOfInactivity;
                if (i >= iArr.length) {
                    i = -1;
                    break;
                } else if (iArr[i] == this.inactivityDays) {
                    break;
                } else {
                    i++;
                }
            }
            arrayList.add(UItem.asSlideView(this.daysOfInactivityTexts, i, new Utilities.Callback() { // from class: org.telegram.ui.Business.GreetMessagesActivity$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.chooseInactivity(((Integer) obj).intValue());
                }
            }));
            arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.BusinessGreetPeriodInfo)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chooseInactivity(int i) {
        this.inactivityDays = this.daysOfInactivity[i];
        checkDone(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        if (this.recipientsHelper.onClick(uItem)) {
            return;
        }
        int i2 = uItem.f2105id;
        if (i2 == 2 || uItem.viewType == 17) {
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", getUserConfig().getClientUserId());
            bundle.putInt("chatMode", 5);
            bundle.putString("quick_reply", "hello");
            presentFragment(new ChatActivity(bundle));
            return;
        }
        if (i2 == 1) {
            this.enabled = !this.enabled;
            this.listView.adapter.update(true);
            checkDone(true);
        } else {
            if (i2 == 3) {
                BusinessRecipientsHelper businessRecipientsHelper = this.recipientsHelper;
                this.exclude = true;
                businessRecipientsHelper.setExclude(true);
                this.listView.adapter.update(true);
                checkDone(true);
                return;
            }
            if (i2 == 4) {
                BusinessRecipientsHelper businessRecipientsHelper2 = this.recipientsHelper;
                this.exclude = false;
                businessRecipientsHelper2.setExclude(false);
                this.listView.adapter.update(true);
                checkDone(true);
            }
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalAdapter universalAdapter;
        if (i == NotificationCenter.quickRepliesUpdated) {
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (universalRecyclerView != null && (universalAdapter = universalRecyclerView.adapter) != null) {
                universalAdapter.update(true);
            }
            checkDone(true);
            return;
        }
        if (i == NotificationCenter.userInfoDidLoad) {
            setValue();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.quickRepliesUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.userInfoDidLoad);
        QuickRepliesController.getInstance(this.currentAccount).load();
        setValue();
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.quickRepliesUpdated);
        getNotificationCenter().removeObserver(this, NotificationCenter.userInfoDidLoad);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
    }
}
