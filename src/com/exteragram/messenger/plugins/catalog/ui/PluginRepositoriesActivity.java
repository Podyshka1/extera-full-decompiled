package com.exteragram.messenger.plugins.catalog.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.LinearLayout;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.catalog.GitPluginRepository;
import com.exteragram.messenger.plugins.catalog.PluginCatalogController;
import com.exteragram.messenger.plugins.catalog.PluginRepositoryLinks;
import com.exteragram.messenger.plugins.catalog.db.PluginRepositoryEntity;
import com.exteragram.messenger.plugins.catalog.ui.CatalogRepositoryCell;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.utils.ui.AddButtonDrawable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.TopicsFragment;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 J2\u00020\u00012\u00020\u0002:\u0001JB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u000bH\u0014J\b\u0010\u0017\u001a\u00020\u000bH\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J5\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0016\u0010\u001e\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010 0\u001f\"\u0004\u0018\u00010 H\u0016¢\u0006\u0002\u0010!J\b\u0010\"\u001a\u00020\u0019H\u0002J\b\u0010#\u001a\u00020\u0019H\u0002J(\u0010$\u001a\u00020\u00192\u0016\u0010%\u001a\u0012\u0012\u0004\u0012\u00020'0&j\b\u0012\u0004\u0012\u00020'`(2\u0006\u0010)\u001a\u00020*H\u0014J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\tH\u0002J\b\u0010.\u001a\u00020\u0006H\u0002J0\u0010/\u001a\u00020\u00192\u0006\u00100\u001a\u00020'2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u001c2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000205H\u0014J0\u00107\u001a\u00020\u000b2\u0006\u00100\u001a\u00020'2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u001c2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000205H\u0014J\u0010\u00108\u001a\u00020\u00192\u0006\u00109\u001a\u00020\u0015H\u0002J\u0010\u0010:\u001a\u00020\u00192\u0006\u00101\u001a\u000202H\u0002J\b\u0010;\u001a\u00020\u0019H\u0002J(\u0010<\u001a\u00020\u00192\u0006\u0010=\u001a\u00020\u00152\u0016\u0010>\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00150?H\u0002J\u0010\u0010@\u001a\u00020\u00192\u0006\u0010A\u001a\u00020\u0015H\u0002J\u0010\u0010B\u001a\u00020\u00192\u0006\u0010-\u001a\u00020\tH\u0002J\u0010\u0010C\u001a\u00020\u00192\u0006\u0010D\u001a\u00020\u0015H\u0002J\u0010\u0010E\u001a\u00020\u00192\u0006\u0010F\u001a\u00020GH\u0002J\u0014\u0010H\u001a\u0004\u0018\u00010\u00152\b\u0010I\u001a\u0004\u0018\u00010\u0015H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\b\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006K"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/ui/PluginRepositoriesActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "<init>", "()V", "addDrawable", "Lcom/exteragram/messenger/utils/ui/AddButtonDrawable;", "repositories", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/catalog/db/PluginRepositoryEntity;", "loaded", _UrlKt.FRAGMENT_ENCODE_SET, "syncRequested", "Ljava/util/HashSet;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/HashSet;", "controller", "Lcom/exteragram/messenger/plugins/catalog/PluginCatalogController;", "getController", "()Lcom/exteragram/messenger/plugins/catalog/PluginCatalogController;", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "needHideTitle", "onFragmentCreate", "onFragmentDestroy", _UrlKt.FRAGMENT_ENCODE_SET, "didReceivedNotification", "id", _UrlKt.FRAGMENT_ENCODE_SET, "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "reloadRepositories", "updateList", "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "Lkotlin/collections/ArrayList;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "getSubtitle", _UrlKt.FRAGMENT_ENCODE_SET, "repository", "getAddDrawable", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "Landroid/view/View;", "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "onLongClick", "shareRepositoryLink", "link", "showAddOptions", "openChannelPicker", "showLinkDialog", PluginsConstants.Settings.HINT, "onSubmit", "Lkotlin/Function1;", "resolveAndAdd", "username", "removeRepository", "addGitRepository", "url", "addRepository", "chat", "Lorg/telegram/tgnet/TLRPC$Chat;", "parseUsername", PluginsConstants.Settings.TYPE_INPUT, "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginRepositoriesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginRepositoriesActivity.kt\ncom/exteragram/messenger/plugins/catalog/ui/PluginRepositoriesActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,382:1\n1807#2,3:383\n777#2:386\n873#2,2:387\n1080#2:389\n777#2:390\n873#2,2:391\n1080#2:393\n1915#2,2:394\n1915#2,2:396\n1#3:398\n*S KotlinDebug\n*F\n+ 1 PluginRepositoriesActivity.kt\ncom/exteragram/messenger/plugins/catalog/ui/PluginRepositoriesActivity\n*L\n77#1:383,3\n106#1:386\n106#1:387,2\n108#1:389\n110#1:390\n110#1:391,2\n111#1:393\n123#1:394,2\n129#1:396,2\n*E\n"})
public final class PluginRepositoriesActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    private static final int ADD_REPOSITORY_ID = 1;
    private static final int FLICKER_ID_START = 100;
    private static final String HEADER_EMOJI = "🛒";
    private AddButtonDrawable addDrawable;
    private boolean loaded;
    private List<PluginRepositoryEntity> repositories = CollectionsKt.emptyList();
    private final HashSet<Long> syncRequested = new HashSet<>();
    private static final Regex USERNAME_PATTERN = new Regex("^[a-zA-Z][a-zA-Z0-9_]{3,31}$");

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean needHideTitle() {
        return true;
    }

    private final PluginCatalogController getController() {
        return PluginCatalogController.INSTANCE.getInstance(this.currentAccount);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2807R.string.PluginCatalog);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.pluginCatalogUpdated);
        getController().refreshFolderRepositories(false);
        reloadRepositories();
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.pluginCatalogUpdated);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int id, int account, Object... args) {
        if (id == NotificationCenter.pluginCatalogUpdated) {
            Object orNull = ArraysKt.getOrNull(args, 0);
            Long l = orNull instanceof Long ? (Long) orNull : null;
            if (l != null) {
                long jLongValue = l.longValue();
                if (jLongValue == 0) {
                    reloadRepositories();
                    return;
                }
                List<PluginRepositoryEntity> list = this.repositories;
                if ((list instanceof Collection) && list.isEmpty()) {
                    return;
                }
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    if (((PluginRepositoryEntity) it.next()).getRepositoryId() == jLongValue) {
                        updateList();
                        return;
                    }
                }
            }
        }
    }

    private final void reloadRepositories() {
        getController().loadRepositories(new Function1() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginRepositoriesActivity.m3101$r8$lambda$FCKdXWjixadYZx3VXDzHPRa_gY(this.f$0, (List) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$FCKdXWjixadYZx3VXD-zHPRa_gY, reason: not valid java name */
    public static Unit m3101$r8$lambda$FCKdXWjixadYZx3VXDzHPRa_gY(PluginRepositoriesActivity pluginRepositoriesActivity, List list) {
        pluginRepositoriesActivity.repositories = list;
        pluginRepositoriesActivity.loaded = true;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PluginRepositoryEntity pluginRepositoryEntity = (PluginRepositoryEntity) it.next();
            if (pluginRepositoriesActivity.syncRequested.add(Long.valueOf(pluginRepositoryEntity.getRepositoryId()))) {
                PluginCatalogController.syncRepository$default(pluginRepositoriesActivity.getController(), pluginRepositoryEntity.getRepositoryId(), false, false, null, 8, null);
            }
        }
        pluginRepositoriesActivity.updateList();
        return Unit.INSTANCE;
    }

    private final void updateList() {
        if (this.fragmentView != null) {
            getListView$TMessagesProj().adapter.update(true);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        List<PluginRepositoryEntity> list = this.repositories;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            PluginRepositoryEntity pluginRepositoryEntity = (PluginRepositoryEntity) obj;
            if (pluginRepositoryEntity.getSource() == 0 && (pluginRepositoryEntity.getSyncedAt() == 0 || pluginRepositoryEntity.getPluginsCount() > 0)) {
                arrayList.add(obj);
            }
        }
        List<PluginRepositoryEntity> listSortedWith = CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$fillItems$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(((PluginRepositoryEntity) t2).getPluginsCount()), Integer.valueOf(((PluginRepositoryEntity) t).getPluginsCount()));
            }
        });
        List<PluginRepositoryEntity> list2 = this.repositories;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            if (((PluginRepositoryEntity) obj2).getSource() == 1) {
                arrayList2.add(obj2);
            }
        }
        List<PluginRepositoryEntity> listSortedWith2 = CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$fillItems$$inlined$sortedByDescending$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(((PluginRepositoryEntity) t2).getPluginsCount()), Integer.valueOf(((PluginRepositoryEntity) t).getPluginsCount()));
            }
        });
        items.add(UItem.asTopView(getTitle(), LocaleController.getString(C2807R.string.PluginCatalogInfo), "exteraGramPlaceholders", HEADER_EMOJI));
        items.add(UItem.asShadow());
        if (!listSortedWith.isEmpty() || !this.loaded || getController().getResolvingFolder()) {
            items.add(UItem.asHeader(LocaleController.getString(C2807R.string.PluginCatalogVerified)));
            if (listSortedWith.isEmpty()) {
                for (int i = 0; i < 3; i++) {
                    items.add(UItem.asFlicker(i + 100, 6));
                }
            } else {
                for (PluginRepositoryEntity pluginRepositoryEntity2 : listSortedWith) {
                    items.add(CatalogRepositoryCell.Factory.INSTANCE.of(pluginRepositoryEntity2, getSubtitle(pluginRepositoryEntity2)));
                }
            }
            items.add(UItem.asShadow());
        }
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.PluginCatalogYourRepositories)));
        for (PluginRepositoryEntity pluginRepositoryEntity3 : listSortedWith2) {
            items.add(CatalogRepositoryCell.Factory.INSTANCE.of(pluginRepositoryEntity3, getSubtitle(pluginRepositoryEntity3)));
        }
        UItem uItemAccent = UItem.asButton(1, getAddDrawable(), LocaleController.getString(C2807R.string.PluginCatalogAddRepository)).accent();
        uItemAccent.pad = 68;
        items.add(uItemAccent);
        items.add(UItem.asShadow(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.PluginCatalogRepositoriesInfo))));
    }

    private final CharSequence getSubtitle(PluginRepositoryEntity repository) {
        return repository.getSyncedAt() != 0 ? LocaleController.formatPluralString("PluginCatalogPlugins", repository.getPluginsCount(), new Object[0]) : getController().isSyncing(repository.getRepositoryId()) ? LocaleController.getString(C2807R.string.PluginCatalogUpdating) : LocaleController.getString(C2807R.string.PluginCatalogNotLoaded);
    }

    private final AddButtonDrawable getAddDrawable() {
        AddButtonDrawable addButtonDrawable = this.addDrawable;
        if (addButtonDrawable == null) {
            addButtonDrawable = new AddButtonDrawable(getContext());
            addButtonDrawable.translateX = AndroidUtilities.dp(4.0f);
            this.addDrawable = addButtonDrawable;
        }
        addButtonDrawable.updateColors(this.resourceProvider);
        return addButtonDrawable;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        if (item.id == 1) {
            showAddOptions(view);
            return;
        }
        Object obj = item.object;
        PluginRepositoryEntity pluginRepositoryEntity = obj instanceof PluginRepositoryEntity ? (PluginRepositoryEntity) obj : null;
        if (pluginRepositoryEntity == null) {
            return;
        }
        presentFragment(new PluginCatalogActivity(pluginRepositoryEntity.getRepositoryId()));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean onLongClick(UItem item, View view, int position, float x, float y) {
        String username;
        Object obj = item.object;
        final PluginRepositoryEntity pluginRepositoryEntity = obj instanceof PluginRepositoryEntity ? (PluginRepositoryEntity) obj : null;
        if (pluginRepositoryEntity == null) {
            return false;
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        String url = pluginRepositoryEntity.getUrl();
        if (url == null) {
            itemOptionsMakeOptions.add(C2807R.drawable.msg_channel, LocaleController.getString(C2807R.string.OpenChannel2), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.presentFragment(ChatActivity.of(-pluginRepositoryEntity.getRepositoryId()));
                }
            });
        } else {
            final String webUrl = GitPluginRepository.INSTANCE.getWebUrl(url, pluginRepositoryEntity.getHomepage());
            if (webUrl != null) {
                itemOptionsMakeOptions.add(C2807R.drawable.msg_openin, LocaleController.getString(C2807R.string.PluginCatalogOpenRepository), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        Browser.openUrl(this.f$0.getParentActivity(), webUrl);
                    }
                });
            }
        }
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(pluginRepositoryEntity.getRepositoryId()));
        if (chat == null || (username = ChatObject.getPublicUsername(chat)) == null) {
            username = pluginRepositoryEntity.getUsername();
        }
        final String strBuild = PluginRepositoryLinks.INSTANCE.build(pluginRepositoryEntity, username);
        if (strBuild != null) {
            itemOptionsMakeOptions.add(C2807R.drawable.msg_share, LocaleController.getString(C2807R.string.ShareLink), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.shareRepositoryLink(strBuild);
                }
            });
            itemOptionsMakeOptions.add(C2807R.drawable.msg_copy, LocaleController.getString(C2807R.string.CopyLink), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    PluginRepositoriesActivity.$r8$lambda$WM3mNACBsKglqf4lC3uVpCyYxps(strBuild, this);
                }
            });
        }
        if (pluginRepositoryEntity.getSource() == 1) {
            itemOptionsMakeOptions.add(C2807R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2807R.string.PluginCatalogRemoveRepository), true, new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.removeRepository(pluginRepositoryEntity);
                }
            });
        }
        itemOptionsMakeOptions.setScrimViewBackground(getListView$TMessagesProj().getClipBackground(view));
        itemOptionsMakeOptions.setGravity(LocaleController.isRTL ? 3 : 5);
        itemOptionsMakeOptions.setDismissOnMoveOutside(true);
        itemOptionsMakeOptions.show();
        return true;
    }

    public static void $r8$lambda$WM3mNACBsKglqf4lC3uVpCyYxps(String str, PluginRepositoriesActivity pluginRepositoriesActivity) {
        if (AndroidUtilities.addToClipboard(str)) {
            BulletinFactory.of(pluginRepositoriesActivity).createCopyBulletin(LocaleController.getString(C2807R.string.LinkCopied)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void shareRepositoryLink(String link) {
        showShareLinkAlert(link, C2807R.string.PluginRepositoryLinkToSavedMessages, C2807R.string.PluginRepositoryLinkToUser, C2807R.string.PluginRepositoryLinkToChats);
    }

    private final void showAddOptions(View view) {
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        itemOptionsMakeOptions.add(C2807R.drawable.msg_channel, LocaleController.getString(C2807R.string.ChooseChannel), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openChannelPicker();
            }
        });
        itemOptionsMakeOptions.add(C2807R.drawable.msg_link2, LocaleController.getString(C2807R.string.PluginCatalogEnterLink), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                PluginRepositoriesActivity pluginRepositoriesActivity = this.f$0;
                pluginRepositoriesActivity.showLinkDialog(LocaleController.getString(C2807R.string.PluginCatalogLinkHint), new Function1() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PluginRepositoriesActivity.$r8$lambda$PhjE8MoV1d9vTqjfcG4eHnyqpIc(pluginRepositoriesActivity, (String) obj);
                    }
                });
            }
        });
        itemOptionsMakeOptions.add(C2807R.drawable.msg_language, LocaleController.getString(C2807R.string.PluginCatalogGitRepository), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                PluginRepositoriesActivity pluginRepositoriesActivity = this.f$0;
                pluginRepositoriesActivity.showLinkDialog(LocaleController.getString(C2807R.string.PluginCatalogGitLinkHint), new Function1() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PluginRepositoriesActivity.m3109$r8$lambda$ziS3mtrNZXoEtEMHVAo1DhbSdU(this.f$0, (String) obj);
                    }
                });
            }
        });
        itemOptionsMakeOptions.setScrimViewBackground(getListView$TMessagesProj().getClipBackground(view));
        itemOptionsMakeOptions.setGravity(LocaleController.isRTL ? 3 : 5);
        itemOptionsMakeOptions.show();
    }

    public static String $r8$lambda$PhjE8MoV1d9vTqjfcG4eHnyqpIc(PluginRepositoriesActivity pluginRepositoriesActivity, String str) {
        String username = pluginRepositoriesActivity.parseUsername(str);
        if (username == null) {
            return null;
        }
        pluginRepositoriesActivity.resolveAndAdd(username);
        return username;
    }

    /* JADX INFO: renamed from: $r8$lambda$zi-S3mtrNZXoEtEMHVAo1DhbSdU, reason: not valid java name */
    public static String m3109$r8$lambda$ziS3mtrNZXoEtEMHVAo1DhbSdU(PluginRepositoriesActivity pluginRepositoriesActivity, String str) {
        String strNormalizeUrl = GitPluginRepository.INSTANCE.normalizeUrl(str);
        if (strNormalizeUrl == null) {
            return null;
        }
        pluginRepositoriesActivity.addGitRepository(strNormalizeUrl);
        return strNormalizeUrl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openChannelPicker() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("onlySelect", true);
        bundle.putBoolean("checkCanWrite", false);
        bundle.putBoolean("searchGlobalChannels", true);
        bundle.putInt("dialogsType", 5);
        DialogsActivity dialogsActivity = new DialogsActivity(bundle);
        dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
                return PluginRepositoriesActivity.$r8$lambda$VZ_v4kFDbvrNctoyK0TOEOFLrL8(this.f$0, dialogsActivity2, arrayList, charSequence, z, z2, i, i2, topicsFragment);
            }
        });
        presentFragment(dialogsActivity);
    }

    public static boolean $r8$lambda$VZ_v4kFDbvrNctoyK0TOEOFLrL8(PluginRepositoriesActivity pluginRepositoriesActivity, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
        MessagesStorage.TopicKey topicKey = (MessagesStorage.TopicKey) CollectionsKt.firstOrNull((List) arrayList);
        TLRPC.Chat chat = topicKey != null ? pluginRepositoriesActivity.getMessagesController().getChat(Long.valueOf(-topicKey.dialogId)) : null;
        dialogsActivity.finishFragment();
        if (chat == null) {
            return true;
        }
        pluginRepositoriesActivity.addRepository(chat);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showLinkDialog(String hint, final Function1<? super String, String> onSubmit) {
        Activity parentActivity = getParentActivity();
        if (parentActivity == null) {
            return;
        }
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(parentActivity);
        editTextBoldCursor.lineYFix = true;
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourceProvider));
        editTextBoldCursor.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText, this.resourceProvider));
        editTextBoldCursor.setHintText(hint);
        editTextBoldCursor.setFocusable(true);
        editTextBoldCursor.setSingleLine(true);
        editTextBoldCursor.setInputType(17);
        editTextBoldCursor.setBackground(null);
        int color = Theme.getColor(Theme.key_windowBackgroundWhiteInputField, this.resourceProvider);
        int i = Theme.key_windowBackgroundWhiteInputFieldActivated;
        editTextBoldCursor.setLineColors(color, Theme.getColor(i, this.resourceProvider), Theme.getColor(Theme.key_text_RedRegular, this.resourceProvider));
        editTextBoldCursor.setCursorColor(Theme.getColor(i, this.resourceProvider));
        editTextBoldCursor.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f));
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, -2, 24.0f, 0.0f, 24.0f, 12.0f));
        AlertDialog.Builder builder = new AlertDialog.Builder(parentActivity, this.resourceProvider);
        builder.setTitle(LocaleController.getString(C2807R.string.PluginCatalogAddRepository));
        builder.setView(linearLayout);
        builder.setWidth(AndroidUtilities.dp(292.0f));
        builder.setPositiveButton(LocaleController.getString(C2807R.string.Add), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                PluginRepositoriesActivity.$r8$lambda$zDl61vDLY0s_HKQYFB0VL5z4rKI(onSubmit, editTextBoldCursor, alertDialog, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                alertDialog.dismiss();
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AndroidUtilities.hideKeyboard(editTextBoldCursor);
            }
        });
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                PluginRepositoriesActivity.$r8$lambda$dV8MCOengRLhkBszL_TM9q0azVM(editTextBoldCursor, dialogInterface);
            }
        });
        alertDialogCreate.setDismissDialogByButtons(false);
        showDialog(alertDialogCreate);
    }

    public static void $r8$lambda$zDl61vDLY0s_HKQYFB0VL5z4rKI(Function1 function1, EditTextBoldCursor editTextBoldCursor, AlertDialog alertDialog, int i) {
        Editable text = editTextBoldCursor.getText();
        if (function1.invoke(text != null ? text.toString() : null) == null) {
            AndroidUtilities.shakeView(editTextBoldCursor);
        } else {
            alertDialog.dismiss();
        }
    }

    public static void $r8$lambda$dV8MCOengRLhkBszL_TM9q0azVM(EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }

    private final void resolveAndAdd(String username) {
        Activity parentActivity = getParentActivity();
        if (parentActivity == null) {
            return;
        }
        final AlertDialog alertDialog = new AlertDialog(parentActivity, 3);
        alertDialog.showDelayed(300L);
        getMessagesController().getUserNameResolver().resolve(username, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda13
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PluginRepositoriesActivity.m3108$r8$lambda$vNbGo_vjeIos69AJo4qOMTXkP8(alertDialog, this, (Long) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$vNbGo_vjeIos-69AJo4qOMTXkP8, reason: not valid java name */
    public static void m3108$r8$lambda$vNbGo_vjeIos69AJo4qOMTXkP8(AlertDialog alertDialog, PluginRepositoriesActivity pluginRepositoriesActivity, Long l) {
        alertDialog.dismiss();
        if (pluginRepositoriesActivity.fragmentView == null) {
            return;
        }
        TLRPC.Chat chat = (l == null || l.longValue() >= 0) ? null : pluginRepositoriesActivity.getMessagesController().getChat(Long.valueOf(-l.longValue()));
        if (chat == null || !ChatObject.isChannel(chat)) {
            BulletinFactory.of(pluginRepositoriesActivity).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.PluginCatalogChannelNotFound)).show();
        } else {
            pluginRepositoriesActivity.addRepository(chat);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeRepository(PluginRepositoryEntity repository) {
        String title;
        Bulletin bulletinCreateSimpleBulletin;
        final TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(repository.getRepositoryId()));
        getController().removeRepository(repository.getRepositoryId());
        if ((chat == null || (title = chat.title) == null) && (title = repository.getTitle()) == null && (title = repository.getUsername()) == null) {
            title = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String string = LocaleController.formatString(C2807R.string.PluginCatalogRepositoryRemoved, title);
        BulletinFactory bulletinFactoryOf = BulletinFactory.of(this);
        final String url = repository.getUrl();
        if (url != null) {
            bulletinCreateSimpleBulletin = bulletinFactoryOf.createSimpleBulletin(C2807R.raw.ic_delete, string, LocaleController.getString(C2807R.string.Undo), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    PluginRepositoriesActivity pluginRepositoriesActivity = this.f$0;
                    PluginRepositoryLinks.INSTANCE.addGit(pluginRepositoriesActivity, url, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda19
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return PluginRepositoriesActivity.$r8$lambda$3DRP7pgVpqanIesWaHPoyWtBrG4(this.f$0, (PluginRepositoryEntity) obj);
                        }
                    });
                }
            });
        } else if (chat != null) {
            bulletinCreateSimpleBulletin = bulletinFactoryOf.createSimpleBulletin(C2807R.raw.ic_delete, string, LocaleController.getString(C2807R.string.Undo), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    PluginRepositoriesActivity pluginRepositoriesActivity = this.f$0;
                    TLRPC.Chat chat2 = chat;
                    pluginRepositoriesActivity.getController().addRepository(chat2, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda10
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return PluginRepositoriesActivity.$r8$lambda$d8vgJVgKwZ_GZJYHnknymVNSXoA(this.f$0, chat2, ((Boolean) obj).booleanValue());
                        }
                    });
                }
            });
        } else {
            bulletinCreateSimpleBulletin = bulletinFactoryOf.createSimpleBulletin(C2807R.raw.ic_delete, string);
        }
        bulletinCreateSimpleBulletin.show();
    }

    public static Unit $r8$lambda$3DRP7pgVpqanIesWaHPoyWtBrG4(PluginRepositoriesActivity pluginRepositoriesActivity, PluginRepositoryEntity pluginRepositoryEntity) {
        pluginRepositoriesActivity.syncRequested.add(Long.valueOf(pluginRepositoryEntity.getRepositoryId()));
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$d8vgJVgKwZ_GZJYHnknymVNSXoA(PluginRepositoriesActivity pluginRepositoriesActivity, TLRPC.Chat chat, boolean z) {
        if (z) {
            pluginRepositoriesActivity.syncRequested.add(Long.valueOf(chat.id));
            PluginCatalogController.syncRepository$default(pluginRepositoriesActivity.getController(), chat.id, true, false, null, 8, null);
        }
        return Unit.INSTANCE;
    }

    private final void addGitRepository(final String url) {
        PluginRepositoryLinks.INSTANCE.addGit(this, url, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginRepositoriesActivity.m3100$r8$lambda$9JxhCevGdujmvNoPIs4FAbW2oU(this.f$0, url, (PluginRepositoryEntity) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$9JxhCevGdujmvNo-PIs4FAbW2oU, reason: not valid java name */
    public static Unit m3100$r8$lambda$9JxhCevGdujmvNoPIs4FAbW2oU(PluginRepositoriesActivity pluginRepositoriesActivity, String str, PluginRepositoryEntity pluginRepositoryEntity) {
        pluginRepositoriesActivity.syncRequested.add(Long.valueOf(pluginRepositoryEntity.getRepositoryId()));
        BulletinFactory bulletinFactoryOf = BulletinFactory.of(pluginRepositoriesActivity);
        int i = C2807R.raw.contact_check;
        int i2 = C2807R.string.PluginCatalogRepositoryAdded;
        String title = pluginRepositoryEntity.getTitle();
        if (title != null) {
            str = title;
        }
        bulletinFactoryOf.createSimpleBulletin(i, LocaleController.formatString(i2, str)).show();
        return Unit.INSTANCE;
    }

    private final void addRepository(final TLRPC.Chat chat) {
        getController().addRepository(chat, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginRepositoriesActivity$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginRepositoriesActivity.$r8$lambda$Cq6NEXZH5gqrDv1GuskRqgdkI3s(this.f$0, chat, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static Unit $r8$lambda$Cq6NEXZH5gqrDv1GuskRqgdkI3s(PluginRepositoriesActivity pluginRepositoriesActivity, TLRPC.Chat chat, boolean z) {
        if (pluginRepositoriesActivity.fragmentView == null) {
            return Unit.INSTANCE;
        }
        if (z) {
            pluginRepositoriesActivity.syncRequested.add(Long.valueOf(chat.id));
            PluginCatalogController.syncRepository$default(pluginRepositoriesActivity.getController(), chat.id, true, false, null, 8, null);
            BulletinFactory.of(pluginRepositoriesActivity).createSimpleBulletin(C2807R.raw.contact_check, LocaleController.formatString(C2807R.string.PluginCatalogRepositoryAdded, chat.title)).show();
        } else {
            BulletinFactory.of(pluginRepositoriesActivity).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.PluginCatalogRepositoryExists)).show();
        }
        return Unit.INSTANCE;
    }

    private final String parseUsername(String input) {
        String string;
        if (input != null && (string = StringsKt.trim((CharSequence) input).toString()) != null) {
            String strRemovePrefix = StringsKt.removePrefix(StringsKt.removePrefix(string, (CharSequence) "https://"), (CharSequence) "http://");
            Iterator it = CollectionsKt.listOf((Object[]) new String[]{"t.me/", "telegram.me/", "telegram.dog/"}).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String str = (String) it.next();
                if (StringsKt.startsWith(strRemovePrefix, str, true)) {
                    strRemovePrefix = strRemovePrefix.substring(str.length());
                    break;
                }
            }
            String strSubstringBefore$default = StringsKt.substringBefore$default(StringsKt.substringBefore$default(StringsKt.removePrefix(strRemovePrefix, (CharSequence) "@"), '/', (String) null, 2, (Object) null), '?', (String) null, 2, (Object) null);
            if (USERNAME_PATTERN.matches(strSubstringBefore$default)) {
                return strSubstringBefore$default;
            }
        }
        return null;
    }
}
