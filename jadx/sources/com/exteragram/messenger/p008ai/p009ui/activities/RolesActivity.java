package com.exteragram.messenger.p008ai.p009ui.activities;

import android.content.Context;
import android.view.View;
import com.exteragram.messenger.p008ai.AiConfig;
import com.exteragram.messenger.p008ai.AiController;
import com.exteragram.messenger.p008ai.data.Role;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ItemOptions;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
public class RolesActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.rolesUpdated);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.rolesUpdated);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.rolesUpdated) {
            this.listView.adapter.update(true);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        this.actionBar.createMenu().addItem(0, C2888R.drawable.msg_add);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: com.exteragram.messenger.ai.ui.activities.RolesActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    RolesActivity.this.finishFragment();
                } else if (i == 0) {
                    RolesActivity.this.presentFragment(new EditRoleActivity(null));
                }
            }
        });
        this.fragmentView = viewCreateView;
        return viewCreateView;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2888R.string.Roles);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asTopView(LocaleController.getString(C2888R.string.RolesInfo), "exteraGramPlaceholders", "🎭"));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.Suggestions)));
        for (Role role : AiController.getInstance().getSuggestedRoles()) {
            UItem checked = UItem.asRadioButton(0, role.getName(), role.getPrompt()).setChecked(role.isSelected());
            checked.object = role;
            arrayList.add(checked);
        }
        arrayList.add(UItem.asShadow(null));
        List<Role> roles = AiController.getInstance().getRoles();
        if (roles.isEmpty()) {
            return;
        }
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.Roles)));
        for (Role role2 : roles) {
            UItem checked2 = UItem.asRadioButton(0, role2.getName(), role2.getPrompt()).setChecked(role2.isSelected());
            checked2.object = role2;
            arrayList.add(checked2);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        Object obj = uItem.object;
        if (obj instanceof Role) {
            Role role = (Role) obj;
            if (role.isSelected()) {
                return;
            }
            AiConfig.setSelectedRole(role);
            this.listView.adapter.update(true);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        if (uItem == null) {
            return false;
        }
        Object obj = uItem.object;
        if (!(obj instanceof Role)) {
            return false;
        }
        final Role role = (Role) obj;
        if (role.isSuggestion()) {
            return false;
        }
        ItemOptions.makeOptions(this, view).add(C2888R.drawable.msg_edit, LocaleController.getString(C2888R.string.Edit), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.RolesActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$0(role);
            }
        }).add(C2888R.drawable.msg_copy, LocaleController.getString(C2888R.string.Copy), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.RolesActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$1(role);
            }
        }).add(C2888R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2888R.string.Delete), true, new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.RolesActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$2(role);
            }
        }).setScrimViewBackground(this.listView.getClipBackground(view)).setGravity(LocaleController.isRTL ? 3 : 5).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$0(Role role) {
        presentFragment(new EditRoleActivity(role));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$1(Role role) {
        if (AndroidUtilities.addToClipboard(role.getName() + "\n" + role.getPrompt())) {
            return;
        }
        BulletinFactory.m1246of(this).createCopyBulletin(LocaleController.getString(C2888R.string.TextCopied)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$2(Role role) {
        boolean zIsSelected = role.isSelected();
        if (AiController.getInstance().removeRole(role)) {
            if (zIsSelected) {
                AiConfig.setSelectedRole((Role) AiController.getInstance().getSuggestedRoles().get(0));
            }
            this.listView.adapter.update(true);
        }
    }
}
