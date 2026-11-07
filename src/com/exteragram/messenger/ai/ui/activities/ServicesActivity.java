package com.exteragram.messenger.ai.ui.activities;

import android.app.Activity;
import android.content.Intent;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.widget.TextView;
import com.exteragram.messenger.ai.AiConfig;
import com.exteragram.messenger.ai.AiController;
import com.exteragram.messenger.ai.data.Service;
import com.exteragram.messenger.ai.network.backend.OnDeviceAvailability;
import com.exteragram.messenger.ai.ui.OnDeviceModelDialogs;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0006\u0018\u0000 ;2\u00020\u00012\u00020\u0002:\u0001;B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0011\u001a\u00020\u000fH\u0016J5\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0016\u0010\u0016\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00180\u0017\"\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0002\u0010\u0019J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\rH\u0014J\u001e\u0010\u001d\u001a\u00020\u000f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010!\u001a\u00020\"H\u0014J\b\u0010#\u001a\u00020\u000bH\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0002J\b\u0010'\u001a\u00020\u000fH\u0002J\u0010\u0010(\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020*H\u0002J\u0010\u0010+\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020-H\u0002J\u0016\u0010.\u001a\u00020\u000f2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u000f00H\u0002J\b\u00101\u001a\u00020\u000fH\u0002J0\u00102\u001a\u00020\u000f2\u0006\u00103\u001a\u00020 2\u0006\u0010,\u001a\u00020-2\u0006\u00104\u001a\u00020\u00142\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000206H\u0014J0\u00108\u001a\u00020\r2\u0006\u00103\u001a\u00020 2\u0006\u0010,\u001a\u00020-2\u0006\u00104\u001a\u00020\u00142\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000206H\u0014J\u0010\u00109\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020*H\u0002J\u0010\u0010:\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020*H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "<init>", "()V", "statusPoll", "Ljava/lang/Runnable;", "newServiceCircle", "Landroid/graphics/drawable/Drawable;", "newServicePlus", "newServiceDrawable", "Lorg/telegram/ui/Components/CombinedDrawable;", "onFragmentCreate", _UrlKt.FRAGMENT_ENCODE_SET, "onResume", _UrlKt.FRAGMENT_ENCODE_SET, "onPause", "onFragmentDestroy", "didReceivedNotification", "id", _UrlKt.FRAGMENT_ENCODE_SET, "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "needHideTitle", "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "getNewServiceDrawable", "applyOnDeviceBadge", _UrlKt.FRAGMENT_ENCODE_SET, "title", "reloadServices", "onDeviceUnavailable", "service", "Lcom/exteragram/messenger/ai/data/Service;", "showOnDeviceOptions", PluginsConstants.Settings.VIEW, "Landroid/view/View;", "changeModelConfig", "change", "Lkotlin/Function0;", "openAiCoreSettings", "onClick", PluginsConstants.Settings.ITEM, "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "onLongClick", "confirmDeleteService", "deleteService", "Companion", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nServicesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServicesActivity.kt\ncom/exteragram/messenger/ai/ui/activities/ServicesActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,290:1\n1924#2,3:291\n*S KotlinDebug\n*F\n+ 1 ServicesActivity.kt\ncom/exteragram/messenger/ai/ui/activities/ServicesActivity\n*L\n111#1:291,3\n*E\n"})
public final class ServicesActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    private Drawable newServiceCircle;
    private CombinedDrawable newServiceDrawable;
    private Drawable newServicePlus;
    private final Runnable statusPoll = new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$statusPoll$1
        @Override // java.lang.Runnable
        public void run() {
            if (this.this$0.getContext() == null) {
                return;
            }
            final ServicesActivity servicesActivity = this.this$0;
            OnDeviceAvailability.refresh(new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$statusPoll$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    servicesActivity.reloadServices();
                }
            });
            if (OnDeviceAvailability.isDownloadInProgress()) {
                AndroidUtilities.runOnUIThread(this, 5000L);
            }
        }
    };

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean needHideTitle() {
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.servicesUpdated);
        OnDeviceAvailability.refresh(new ServicesActivity$$ExternalSyntheticLambda0(this));
        return super.onFragmentCreate();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        OnDeviceAvailability.refresh(new ServicesActivity$$ExternalSyntheticLambda0(this));
        AndroidUtilities.cancelRunOnUIThread(this.statusPoll);
        AndroidUtilities.runOnUIThread(this.statusPoll, 5000L);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        AndroidUtilities.cancelRunOnUIThread(this.statusPoll);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        AndroidUtilities.cancelRunOnUIThread(this.statusPoll);
        getNotificationCenter().removeObserver(this, NotificationCenter.servicesUpdated);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int id, int account, Object... args) {
        if (id == NotificationCenter.servicesUpdated) {
            reloadServices();
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2665R.string.Services);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        items.add(UItem.asTopView(getTitle(), LocaleController.getString(C2665R.string.ServicesInfo), "exteraGramPlaceholders", "🔑"));
        items.add(UItem.asHeader(LocaleController.getString(C2665R.string.Services)));
        int i = 0;
        for (Object obj : AiController.getInstance().getAll()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Service service = (Service) obj;
            UItem checked = UItem.asRadio2(i + 100, service.isOnDevice() ? applyOnDeviceBadge(service.getModel()) : service.getModel(), service.isOnDevice() ? LocaleController.getString(C2665R.string.AIOnDevice) : service.getUrl()).setChecked(service.isSelected());
            checked.object = service;
            items.add(checked);
            i = i2;
        }
        UItem uItemAccent = UItem.asButton(1, getNewServiceDrawable(), LocaleController.getString(C2665R.string.NewService)).accent();
        uItemAccent.pad = 61;
        items.add(uItemAccent);
    }

    private final CombinedDrawable getNewServiceDrawable() {
        if (this.newServiceDrawable == null) {
            this.newServiceCircle = getContext().getResources().getDrawable(C2665R.drawable.poll_add_circle).mutate();
            Drawable drawableMutate = getContext().getResources().getDrawable(C2665R.drawable.poll_add_plus).mutate();
            this.newServicePlus = drawableMutate;
            Drawable drawable = this.newServiceCircle;
            if (drawable == null) {
                drawable = null;
            }
            if (drawableMutate == null) {
                drawableMutate = null;
            }
            this.newServiceDrawable = new CombinedDrawable(drawable, drawableMutate) { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity.getNewServiceDrawable.1
                @Override // org.telegram.ui.Components.CombinedDrawable, android.graphics.drawable.Drawable
                public void setColorFilter(ColorFilter colorFilter) {
                }

                {
                    this.translateX = AndroidUtilities.dp(2.0f);
                }
            };
        }
        Drawable drawable2 = this.newServiceCircle;
        if (drawable2 == null) {
            drawable2 = null;
        }
        int themedColor = getThemedColor(Theme.key_switchTrackChecked);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        drawable2.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
        Drawable drawable3 = this.newServicePlus;
        if (drawable3 == null) {
            drawable3 = null;
        }
        drawable3.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_checkboxCheck), mode));
        CombinedDrawable combinedDrawable = this.newServiceDrawable;
        if (combinedDrawable == null) {
            return null;
        }
        return combinedDrawable;
    }

    private final CharSequence applyOnDeviceBadge(CharSequence title) {
        String string;
        if (OnDeviceAvailability.isDownloadInProgress()) {
            int downloadPercent = OnDeviceAvailability.getDownloadPercent();
            if (downloadPercent >= 0) {
                string = downloadPercent + "%";
            } else {
                string = LocaleController.getString(C2665R.string.AIOnDeviceBadgeDownloading);
            }
            return LocaleUtils.applyBadge(title, string, Theme.key_chats_unreadCounterMuted, Theme.key_chats_unreadCounterText);
        }
        if (OnDeviceAvailability.needsDownload()) {
            return LocaleUtils.applyBadge(title, LocaleController.getString(C2665R.string.AIOnDeviceBadgeDownload), Theme.key_chats_unreadCounterMuted, Theme.key_chats_unreadCounterText);
        }
        if (OnDeviceAvailability.isReady()) {
            return LocaleUtils.applyBadge(title, LocaleController.getString(C2665R.string.AIOnDeviceBadgeReady), Theme.key_featuredStickers_addButton, Theme.key_featuredStickers_buttonText);
        }
        return LocaleUtils.applyBadge(title, LocaleController.getString(C2665R.string.AIOnDeviceBadgeUnavailable), Theme.key_chats_unreadCounterMuted, Theme.key_chats_unreadCounterText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reloadServices() {
        UniversalAdapter universalAdapter;
        AiController.getInstance().loadServices();
        if (getContext() == null || this.fragmentView == null || (universalAdapter = getListView$TMessagesProj().adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onDeviceUnavailable(Service service) {
        if (getContext() == null) {
            return;
        }
        reloadServices();
        if (OnDeviceAvailability.isReady()) {
            if (service.isSelected()) {
                return;
            }
            AiConfig.setSelectedServices(service);
            reloadServices();
            return;
        }
        if (OnDeviceAvailability.needsDownload()) {
            OnDeviceModelDialogs.showDownloadDialog(this);
        } else {
            BulletinFactory.of(this).createErrorBulletin(LocaleController.getString(C2665R.string.AIErrorOnDeviceInfo)).show();
        }
    }

    private final void showOnDeviceOptions(View view) {
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        if (OnDeviceAvailability.isThinkingSupported()) {
            itemOptionsMakeOptions.addChecked(AiConfig.getOnDeviceReasoning(), C2665R.drawable.msg_discuss, LocaleController.getString(C2665R.string.AIReasoning), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    ServicesActivity.$r8$lambda$J5FwvCCb6gvNmrvFa6BnEgpawXU(this.f$0);
                }
            });
        }
        itemOptionsMakeOptions.addChecked(AiConfig.getOnDevicePreviewModel(), C2665R.drawable.msg_fave, LocaleController.getString(C2665R.string.AIOnDevicePreviewModel), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.changeModelConfig(new Function0() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ServicesActivity.$r8$lambda$iJt0lAxd7qdQnUfnJPryceLwHYA();
                    }
                });
            }
        });
        itemOptionsMakeOptions.addChecked(AiConfig.getOnDeviceFastModel(), C2665R.drawable.msg_speed, LocaleController.getString(C2665R.string.AIOnDeviceFastModel), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.changeModelConfig(new Function0() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ServicesActivity.m2162$r8$lambda$vEJSsXMOGRduS4ls0mYqdidfJQ();
                    }
                });
            }
        });
        itemOptionsMakeOptions.addGap();
        itemOptionsMakeOptions.add(C2665R.drawable.msg_reset, LocaleController.getString(C2665R.string.AIOnDeviceRefresh), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                OnDeviceAvailability.refresh(new ServicesActivity$$ExternalSyntheticLambda0(this.f$0));
            }
        });
        itemOptionsMakeOptions.add(C2665R.drawable.msg_settings, LocaleController.getString(C2665R.string.AIOnDeviceManage), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openAiCoreSettings();
            }
        });
        itemOptionsMakeOptions.setGravity(LocaleController.isRTL ? 3 : 5);
        itemOptionsMakeOptions.setScrimViewBackground(getListView$TMessagesProj().getClipBackground(view));
        itemOptionsMakeOptions.show();
    }

    public static void $r8$lambda$J5FwvCCb6gvNmrvFa6BnEgpawXU(ServicesActivity servicesActivity) {
        AiConfig.setOnDeviceReasoning(!AiConfig.getOnDeviceReasoning());
        servicesActivity.reloadServices();
    }

    public static Unit $r8$lambda$iJt0lAxd7qdQnUfnJPryceLwHYA() {
        AiConfig.setOnDevicePreviewModel(!AiConfig.getOnDevicePreviewModel());
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: $r8$lambda$vEJSsXMOGR-duS4ls0mYqdidfJQ, reason: not valid java name */
    public static Unit m2162$r8$lambda$vEJSsXMOGRduS4ls0mYqdidfJQ() {
        AiConfig.setOnDeviceFastModel(!AiConfig.getOnDeviceFastModel());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void changeModelConfig(Function0<Unit> change) {
        change.invoke();
        OnDeviceAvailability.onModelConfigChanged(new ServicesActivity$$ExternalSyntheticLambda0(this));
        AndroidUtilities.cancelRunOnUIThread(this.statusPoll);
        AndroidUtilities.runOnUIThread(this.statusPoll, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openAiCoreSettings() {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:com.google.android.aicore"));
            intent.addFlags(268435456);
            getContext().startActivity(intent);
        } catch (Exception unused) {
            BulletinFactory.of(this).createErrorBulletin(LocaleController.getString(C2665R.string.AIOnDeviceManageUnavailable)).show();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        Object obj = item.object;
        Service service = null;
        Object[] objArr = 0;
        final Service service2 = obj instanceof Service ? (Service) obj : null;
        int i = item.id;
        int i2 = 1;
        if (i < 100 || service2 == null) {
            if (i == 1) {
                presentFragment(new EditServiceActivity(service, i2, objArr == true ? 1 : 0));
                return;
            }
            return;
        }
        if (service2.isOnDevice() && !OnDeviceAvailability.isReady()) {
            if (OnDeviceAvailability.isDownloadInProgress()) {
                BulletinFactory.of(this).createSimpleBulletin(C2665R.raw.ic_download, LocaleController.getString(C2665R.string.AIErrorOnDeviceDownloading), LocaleController.getString(C2665R.string.AIOnDeviceManage), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.openAiCoreSettings();
                    }
                }).show();
                return;
            } else if (OnDeviceAvailability.needsDownload()) {
                OnDeviceModelDialogs.showDownloadDialog(this);
                return;
            } else {
                OnDeviceAvailability.refresh(new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.onDeviceUnavailable(service2);
                    }
                });
                return;
            }
        }
        if (service2.isSelected()) {
            return;
        }
        AiConfig.setSelectedServices(service2);
        UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean onLongClick(UItem item, View view, int position, float x, float y) {
        Object obj = item.object;
        final Service service = obj instanceof Service ? (Service) obj : null;
        if (service == null) {
            return false;
        }
        if (service.isOnDevice()) {
            showOnDeviceOptions(view);
            return true;
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        itemOptionsMakeOptions.add(C2665R.drawable.msg_edit, LocaleController.getString(C2665R.string.Edit), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.presentFragment(new EditServiceActivity(service));
            }
        });
        itemOptionsMakeOptions.add(C2665R.drawable.msg_copy, LocaleController.getString(C2665R.string.Copy), new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ServicesActivity.$r8$lambda$3oj12F1tQPr8C2eulDW8tSsMxYs(service, this);
            }
        });
        itemOptionsMakeOptions.add(C2665R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2665R.string.Delete), true, new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.confirmDeleteService(service);
            }
        });
        itemOptionsMakeOptions.setGravity(LocaleController.isRTL ? 3 : 5);
        itemOptionsMakeOptions.setScrimViewBackground(getListView$TMessagesProj().getClipBackground(view));
        itemOptionsMakeOptions.show();
        return true;
    }

    public static void $r8$lambda$3oj12F1tQPr8C2eulDW8tSsMxYs(Service service, ServicesActivity servicesActivity) {
        if (AndroidUtilities.addToClipboard(service.getUrl() + "\n" + service.getModel() + "\n" + service.getKey())) {
            BulletinFactory.of(servicesActivity).createCopyBulletin(LocaleController.getString(C2665R.string.TextCopied)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void confirmDeleteService(final Service service) {
        Activity parentActivity = getParentActivity();
        if (parentActivity == null) {
            return;
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(parentActivity).setTitle(LocaleController.getString(C2665R.string.Delete)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.DeleteServiceInfo, service.getShortModel()))).setPositiveButton(LocaleController.getString(C2665R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.ai.ui.activities.ServicesActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.deleteService(service);
            }
        }).setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null).create();
        showDialog(alertDialogCreate);
        View button = alertDialogCreate.getButton(-1);
        TextView textView = button instanceof TextView ? (TextView) button : null;
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deleteService(Service service) {
        UniversalAdapter universalAdapter;
        boolean zIsSelected = service.isSelected();
        if (AiController.getInstance().removeService(service)) {
            if (zIsSelected) {
                AiConfig.clearSelectedService();
                if (!AiController.getInstance().isServicesEmpty()) {
                    AiConfig.setSelectedServices(AiController.getInstance().getAll().get(0));
                }
            }
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.servicesUpdated, new Object[0]);
            if (this.fragmentView == null || (universalAdapter = getListView$TMessagesProj().adapter) == null) {
                return;
            }
            universalAdapter.update(true);
        }
    }
}
