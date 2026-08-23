package com.exteragram.messenger.p008ai.p009ui.activities;

import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.exteragram.messenger.p008ai.AiConfig;
import com.exteragram.messenger.p008ai.AiController;
import com.exteragram.messenger.p008ai.data.Service;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CombinedDrawable;
import org.telegram.p029ui.Components.ItemOptions;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
public class ServicesActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.servicesUpdated);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.servicesUpdated);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.servicesUpdated) {
            this.listView.adapter.update(true);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2888R.string.Services);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asTopView(LocaleController.getString(C2888R.string.ServicesInfo), "exteraGramPlaceholders", "🔑"));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.Services)));
        for (Service service : AiController.getInstance().getAll()) {
            UItem checked = UItem.asRadioButton(0, service.getModel(), service.getUrl()).setChecked(service.isSelected());
            checked.object = service;
            arrayList.add(checked);
        }
        Drawable drawable = getContext().getResources().getDrawable(C2888R.drawable.poll_add_circle);
        Drawable drawable2 = getContext().getResources().getDrawable(C2888R.drawable.poll_add_plus);
        int themedColor = getThemedColor(Theme.key_switchTrackChecked);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        drawable.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
        drawable2.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_checkboxCheck), mode));
        UItem uItemAccent = UItem.asButton(1, new CombinedDrawable(drawable, drawable2) { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity.1
            @Override // org.telegram.p029ui.Components.CombinedDrawable, android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            {
                this.translateX = AndroidUtilities.m1124dp(2.0f);
            }
        }, LocaleController.getString(C2888R.string.NewService)).accent();
        uItemAccent.pad = 61;
        arrayList.add(uItemAccent);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        if (uItem.f2105id == 0) {
            Object obj = uItem.object;
            if (obj instanceof Service) {
                Service service = (Service) obj;
                if (!service.isSelected()) {
                    AiConfig.setSelectedServices(service);
                    this.listView.adapter.update(true);
                    return;
                }
            }
        }
        if (uItem.f2105id == 1) {
            presentFragment(new EditServiceActivity());
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        if (uItem == null) {
            return false;
        }
        Object obj = uItem.object;
        if (!(obj instanceof Service)) {
            return false;
        }
        final Service service = (Service) obj;
        ItemOptions.makeOptions(this, view).add(C2888R.drawable.msg_edit, LocaleController.getString(C2888R.string.Edit), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$0(service);
            }
        }).add(C2888R.drawable.msg_copy, LocaleController.getString(C2888R.string.Copy), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$1(service);
            }
        }).add(C2888R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2888R.string.Delete), true, new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$2(service);
            }
        }).setGravity(LocaleController.isRTL ? 3 : 5).setScrimViewBackground(this.listView.getClipBackground(view)).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$0(Service service) {
        presentFragment(new EditServiceActivity(service));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$1(Service service) {
        if (AndroidUtilities.addToClipboard(service.getUrl() + "\n" + service.getModel() + "\n" + service.getKey())) {
            return;
        }
        BulletinFactory.m1246of(this).createCopyBulletin(LocaleController.getString(C2888R.string.TextCopied)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$2(Service service) {
        if (AiController.getInstance().removeService(service)) {
            if (service.isSelected()) {
                AiConfig.clearSelectedService();
                if (!AiController.getInstance().isServicesEmpty()) {
                    AiConfig.setSelectedServices((Service) AiController.getInstance().getAll().get(0));
                }
            }
            if (AiController.getInstance().isServicesEmpty()) {
                finishFragment();
            } else {
                this.listView.adapter.update(true);
            }
        }
    }
}
