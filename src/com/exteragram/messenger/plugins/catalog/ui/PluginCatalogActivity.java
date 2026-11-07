package com.exteragram.messenger.plugins.catalog.ui;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.TabIconsMode;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda1;
import com.exteragram.messenger.plugins.Plugin;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.catalog.CatalogPlugin;
import com.exteragram.messenger.plugins.catalog.GitPluginRepository;
import com.exteragram.messenger.plugins.catalog.PluginCatalogController;
import com.exteragram.messenger.plugins.catalog.PluginCategory;
import com.exteragram.messenger.plugins.catalog.PluginRepositoryLinks;
import com.exteragram.messenger.plugins.catalog.db.PluginMetadataEntity;
import com.exteragram.messenger.plugins.catalog.db.PluginRepositoryEntity;
import com.exteragram.messenger.plugins.catalog.ui.CatalogPluginCell;
import com.exteragram.messenger.plugins.catalog.ui.CatalogPluginSkeletonCell;
import com.exteragram.messenger.plugins.ui.components.EmptyPluginsView;
import com.exteragram.messenger.plugins.utils.PluginsWatchdog;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.utils.AppUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.exteragram.messenger.utils.ui.ChatHeaderUiHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import me.vkryl.android.animator.FactorAnimator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationBadge;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ChatAvatarContainer;
import org.telegram.ui.Components.FilterTabsView;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.PopupSwipeBackLayout;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¼\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 m2\u00020\u00012\u00020\u0002:\u0001mB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u00100\u001a\u00020\u000fH\u0016J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0014J\b\u00105\u001a\u000206H\u0002J\u0010\u0010:\u001a\u0002062\u0006\u0010;\u001a\u00020\u0014H\u0002J\u001c\u0010<\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0018\u0010>\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u0010?\u001a\u00020@H\u0014J\u0010\u0010A\u001a\u0002062\u0006\u0010B\u001a\u00020\fH\u0002J\b\u0010C\u001a\u00020\fH\u0016J\b\u0010D\u001a\u000206H\u0016J5\u0010E\u001a\u0002062\u0006\u0010F\u001a\u00020\u00142\u0006\u0010G\u001a\u00020\u00142\u0016\u0010H\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010J0I\"\u0004\u0018\u00010JH\u0016¢\u0006\u0002\u0010KJ\b\u0010L\u001a\u000206H\u0002J\b\u0010M\u001a\u00020\fH\u0016J\b\u0010N\u001a\u000206H\u0002J\n\u0010O\u001a\u0004\u0018\u00010\u000fH\u0002J\b\u0010P\u001a\u000206H\u0002J\u0012\u0010Q\u001a\u0002062\b\b\u0002\u0010B\u001a\u00020\fH\u0002J(\u0010R\u001a\u0002062\u0016\u0010S\u001a\u0012\u0012\u0004\u0012\u00020U0Tj\b\u0012\u0004\u0012\u00020U`V2\u0006\u0010W\u001a\u00020XH\u0014J(\u0010Y\u001a\u0002062\u0016\u0010S\u001a\u0012\u0012\u0004\u0012\u00020U0Tj\b\u0012\u0004\u0012\u00020U`V2\u0006\u0010Z\u001a\u00020\u0014H\u0002J \u0010[\u001a\u00020U2\u0006\u0010\\\u001a\u00020\t2\u0006\u0010]\u001a\u00020\u00142\u0006\u0010^\u001a\u00020\fH\u0002J\u0010\u0010_\u001a\u0002062\u0006\u0010\\\u001a\u00020`H\u0002J\u001c\u0010a\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0010\u0010b\u001a\u00020\u00142\u0006\u0010\\\u001a\u00020\tH\u0002J\b\u0010c\u001a\u00020\u0011H\u0002J0\u0010d\u001a\u0002062\u0006\u0010e\u001a\u00020U2\u0006\u0010f\u001a\u0002022\u0006\u0010g\u001a\u00020\u00142\u0006\u0010h\u001a\u00020%2\u0006\u0010i\u001a\u00020%H\u0014J0\u0010j\u001a\u00020\f2\u0006\u0010e\u001a\u00020U2\u0006\u0010f\u001a\u0002022\u0006\u0010g\u001a\u00020\u00142\u0006\u0010h\u001a\u00020%2\u0006\u0010i\u001a\u00020%H\u0014J\u0010\u0010k\u001a\u00020\f2\u0006\u0010l\u001a\u00020\fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0013j\b\u0012\u0004\u0012\u00020\u0014`\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0013j\b\u0012\u0004\u0012\u00020\u0014`\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020%X\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0014\u0010(\u001a\u00020%X\u0094D¢\u0006\b\n\u0000\u001a\u0004\b)\u0010'R\u0014\u0010*\u001a\u00020%X\u0094D¢\u0006\b\n\u0000\u001a\u0004\b+\u0010'R\u0014\u0010,\u001a\u00020-8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0014\u00107\u001a\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b8\u00109¨\u0006n"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/ui/PluginCatalogActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "repositoryId", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(J)V", PluginsConstants.PLUGINS, _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/catalog/CatalogPlugin;", "sortedPlugins", "loaded", _UrlKt.FRAGMENT_ENCODE_SET, "searching", "query", _UrlKt.FRAGMENT_ENCODE_SET, "emptyView", "Lcom/exteragram/messenger/plugins/ui/components/EmptyPluginsView;", "requested", "Ljava/util/HashSet;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/HashSet;", "installing", "repository", "Lcom/exteragram/messenger/plugins/catalog/db/PluginRepositoryEntity;", "otherItem", "Lorg/telegram/ui/ActionBar/ActionBarMenuItem;", "avatarContainer", "Lorg/telegram/ui/Components/ChatAvatarContainer;", "filterTabsView", "Lorg/telegram/ui/Components/FilterTabsView;", "tabCategories", "Lcom/exteragram/messenger/plugins/catalog/PluginCategory;", "selectedCategory", "sortOrder", "refreshing", "pinnedHeaderHeight", _UrlKt.FRAGMENT_ENCODE_SET, "getPinnedHeaderHeight", "()F", "pinnedHeaderMargin", "getPinnedHeaderMargin", "pinnedHeaderGap", "getPinnedHeaderGap", "controller", "Lcom/exteragram/messenger/plugins/catalog/PluginCatalogController;", "getController", "()Lcom/exteragram/messenger/plugins/catalog/PluginCatalogController;", "getTitle", "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "showMenu", _UrlKt.FRAGMENT_ENCODE_SET, "effectiveSortOrder", "getEffectiveSortOrder", "()I", "setSortOrder", "order", "sortPlugins", "source", "createPinnedHeader", "glassFactory", "Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;", "updateTabs", "animated", "onFragmentCreate", "onFragmentDestroy", "didReceivedNotification", "id", "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "reloadCatalog", "needDelayOpenAnimation", "refresh", "repositoryLink", "updateHeader", "updateList", "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "Lkotlin/collections/ArrayList;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "addSkeletons", NotificationBadge.NewHtcHomeBadger.COUNT, "createItem", "plugin", "state", "detailsAvailable", "confirmDelete", "Lcom/exteragram/messenger/plugins/Plugin;", "filterByQuery", "getState", "getEmptyView", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", "x", "y", "onLongClick", "onBackPressed", "invoked", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginCatalogActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginCatalogActivity.kt\ncom/exteragram/messenger/plugins/catalog/ui/PluginCatalogActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,622:1\n14143#2,3:623\n1#3:626\n1080#4:627\n1080#4:628\n1068#4:629\n777#4:630\n873#4:631\n1807#4,3:632\n874#4:635\n1924#4,3:636\n1834#4,4:639\n777#4:643\n873#4,2:644\n777#4:646\n873#4,2:647\n1834#4,4:649\n1300#4,2:653\n1315#4,4:655\n777#4:659\n873#4,2:660\n1915#4,2:662\n777#4:664\n873#4,2:665\n1915#4,2:667\n777#4:669\n873#4,2:670\n1807#4,3:672\n777#4:675\n873#4:676\n1807#4,3:677\n874#4:680\n296#4,2:681\n*S KotlinDebug\n*F\n+ 1 PluginCatalogActivity.kt\ncom/exteragram/messenger/plugins/catalog/ui/PluginCatalogActivity\n*L\n181#1:623,3\n243#1:627\n244#1:628\n245#1:629\n288#1:630\n288#1:631\n288#1:632,3\n288#1:635\n296#1:636,3\n392#1:639,4\n411#1:643\n411#1:644,2\n412#1:646\n412#1:647,2\n413#1:649,4\n425#1:653,2\n425#1:655,4\n426#1:659\n426#1:660,2\n429#1:662,2\n432#1:664\n432#1:665,2\n435#1:667,2\n438#1:669\n438#1:670,2\n447#1:672,3\n502#1:675\n502#1:676\n505#1:677,3\n502#1:680\n314#1:681,2\n*E\n"})
public final class PluginCatalogActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    private static final float HEADER_INSET = 6.0f;
    private static final int MAX_SKELETONS = 4;
    private static final int NEW_PERIOD = 86400;
    private static final int OTHER_ITEM_ID = 3;
    private static final long PROGRESS_DELAY = 300;
    private static final int SEARCH_ITEM_ID = 0;
    private static final int SKELETON_ID_START = 100;
    private static final int SORT_NAME = 3;
    private static final int SORT_NEWEST = 2;
    private static final int SORT_POPULAR = 1;
    private static final int SORT_UPDATED = 0;
    private static final float TABS_HEIGHT = 36.0f;
    private static final float TABS_PADDING = 7.0f;
    private ChatAvatarContainer avatarContainer;
    private EmptyPluginsView emptyView;
    private FilterTabsView filterTabsView;
    private boolean loaded;
    private ActionBarMenuItem otherItem;
    private final float pinnedHeaderGap;
    private String query;
    private boolean refreshing;
    private PluginRepositoryEntity repository;
    private final long repositoryId;
    private boolean searching;
    private PluginCategory selectedCategory;
    private static final int[] SORT_TITLES = {C2807R.string.PluginCatalogSortUpdated, C2807R.string.PluginCatalogSortPopular, C2807R.string.PluginCatalogSortNewest, C2807R.string.PluginCatalogSortName};
    private static final Regex VERSION_NUMBER = new Regex("\\d+(?:\\.\\d+)*");
    private List<CatalogPlugin> plugins = CollectionsKt.emptyList();
    private List<CatalogPlugin> sortedPlugins = CollectionsKt.emptyList();
    private final HashSet<Integer> requested = new HashSet<>();
    private final HashSet<Integer> installing = new HashSet<>();
    private List<? extends PluginCategory> tabCategories = CollectionsKt.emptyList();
    private int sortOrder = PluginCatalogController.INSTANCE.getSortOrder();
    private final float pinnedHeaderHeight = 50.0f;
    private final float pinnedHeaderMargin = 4.0f;

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean needDelayOpenAnimation() {
        return true;
    }

    public PluginCatalogActivity(long j) {
        this.repositoryId = j;
        setPinnedHeaderVisible(false, false);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public float getPinnedHeaderHeight() {
        return this.pinnedHeaderHeight;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public float getPinnedHeaderMargin() {
        return this.pinnedHeaderMargin;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public float getPinnedHeaderGap() {
        return this.pinnedHeaderGap;
    }

    private final PluginCatalogController getController() {
        return PluginCatalogController.INSTANCE.getInstance(this.currentAccount);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        String str;
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.repositoryId));
        if (chat != null && (str = chat.title) != null) {
            return str;
        }
        PluginRepositoryEntity pluginRepositoryEntity = this.repository;
        String title = pluginRepositoryEntity != null ? pluginRepositoryEntity.getTitle() : null;
        return title == null ? LocaleController.getString(C2807R.string.PluginCatalog) : title;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.menu.addItem(0, C2807R.drawable.outline_header_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity.createView.1
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                PluginCatalogActivity.this.searching = true;
                PluginCatalogActivity.this.setPinnedHeaderVisible(false, true);
                ActionBarMenuItem actionBarMenuItem = PluginCatalogActivity.this.otherItem;
                if (actionBarMenuItem != null) {
                    actionBarMenuItem.setVisibility(8);
                }
                ChatAvatarContainer chatAvatarContainer = PluginCatalogActivity.this.avatarContainer;
                if (chatAvatarContainer != null) {
                    chatAvatarContainer.setVisibility(8);
                }
                PluginCatalogActivity.this.getListView$TMessagesProj().adapter.update(true);
                PluginCatalogActivity.this.getListView$TMessagesProj().scrollToPosition(0);
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                PluginCatalogActivity.this.searching = false;
                PluginCatalogActivity.this.query = null;
                PluginCatalogActivity.this.updateTabs(true);
                ActionBarMenuItem actionBarMenuItem = PluginCatalogActivity.this.otherItem;
                if (actionBarMenuItem != null) {
                    actionBarMenuItem.setVisibility(0);
                }
                ChatAvatarContainer chatAvatarContainer = PluginCatalogActivity.this.avatarContainer;
                if (chatAvatarContainer != null) {
                    chatAvatarContainer.setVisibility(0);
                }
                PluginCatalogActivity.this.getListView$TMessagesProj().adapter.update(true);
                PluginCatalogActivity.this.getListView$TMessagesProj().scrollToPosition(0);
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                PluginCatalogActivity.this.query = editText.getText().toString();
                PluginCatalogActivity.this.getListView$TMessagesProj().adapter.update(true);
                PluginCatalogActivity.this.getListView$TMessagesProj().scrollToPosition(0);
            }
        });
        actionBarMenuItemSearchListener.setSearchPaddingStart(7);
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString(C2807R.string.Search));
        ChatAvatarContainer chatAvatarContainer = new ChatAvatarContainer(context, this.resourceProvider) { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity.createView.3
            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public /* bridge */ /* synthetic */ void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
                super.onFactorChangeFinished(i, f, factorAnimator);
            }

            @Override // org.telegram.ui.Components.ChatAvatarContainer
            public boolean useAnimatedSubtitle() {
                return true;
            }
        };
        ChatHeaderUiHelper.setupGlassAvatarContainer(chatAvatarContainer);
        chatAvatarContainer.setOccupyStatusBar(!AndroidUtilities.isTablet());
        chatAvatarContainer.setEnabled(false);
        this.avatarContainer = chatAvatarContainer;
        this.actionBar.setTitle(null);
        this.actionBar.addView(this.avatarContainer, 0, LayoutHelper.createFrame(-2, -1.0f, 51, ChatHeaderUiHelper.getAvatarContainerLeftMargin(false) + HEADER_INSET, 0.0f, 106.0f, 0.0f));
        updateHeader();
        ActionBarMenuItem actionBarMenuItemAddItem = this.actionBar.menu.addItem(3, C2807R.drawable.ic_ab_other);
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2807R.string.AccDescrMoreOptions));
        this.otherItem = actionBarMenuItemAddItem;
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity.createView.6
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int id) {
                if (id == -1) {
                    PluginCatalogActivity.this.finishFragment();
                } else {
                    if (id != 3) {
                        return;
                    }
                    PluginCatalogActivity.this.showMenu();
                }
            }
        });
        getListView$TMessagesProj().setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity.createView.7
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                if (newState == 1) {
                    AndroidUtilities.hideKeyboard(PluginCatalogActivity.this.getParentActivity().getCurrentFocus());
                }
            }
        });
        this.fragmentView = viewCreateView;
        updateTabs(false);
        return viewCreateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showMenu() {
        String url;
        PopupSwipeBackLayout swipeBack;
        ActionBarMenuItem actionBarMenuItem = this.otherItem;
        if (actionBarMenuItem == null) {
            return;
        }
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions((BaseFragment) this, (View) actionBarMenuItem, true);
        final ItemOptions itemOptionsMakeSwipeback = itemOptionsMakeOptions.makeSwipeback();
        itemOptionsMakeSwipeback.add(C2807R.drawable.ic_ab_back, LocaleController.getString(C2807R.string.Back), new RatePill$$ExternalSyntheticLambda1(itemOptionsMakeOptions));
        itemOptionsMakeSwipeback.addGap();
        int effectiveSortOrder = getEffectiveSortOrder();
        int[] iArr = SORT_TITLES;
        int length = iArr.length;
        int i = 0;
        final int i2 = 0;
        while (i < length) {
            int i3 = iArr[i];
            int i4 = i2 + 1;
            if (i2 != 1 || !PluginRepositoryEntity.INSTANCE.isGitId(this.repositoryId)) {
                itemOptionsMakeSwipeback.addChecked(effectiveSortOrder == i2, LocaleController.getString(i3), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        PluginCatalogActivity.$r8$lambda$95wWcPDTwOsjiWX7198dOAv7Cew(itemOptionsMakeOptions, this, i2);
                    }
                });
            }
            i++;
            i2 = i4;
        }
        int i5 = C2807R.drawable.msg_filter;
        String string = LocaleController.getString(C2807R.string.SortBy);
        int[] iArr2 = SORT_TITLES;
        itemOptionsMakeOptions.add(i5, string, LocaleController.getString((effectiveSortOrder < 0 || effectiveSortOrder >= iArr2.length) ? iArr2[0] : iArr2[effectiveSortOrder]), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                itemOptionsMakeOptions.openSwipeback(itemOptionsMakeSwipeback);
            }
        });
        ActionBarMenuSubItem last = itemOptionsMakeOptions.getLast();
        if (last != null) {
            last.setRightIcon(C2807R.drawable.msg_arrowright);
        }
        itemOptionsMakeOptions.addGap();
        itemOptionsMakeOptions.add(C2807R.drawable.msg_retry, LocaleController.getString(C2807R.string.Refresh), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.refresh();
            }
        });
        if (!PluginRepositoryEntity.INSTANCE.isGitId(this.repositoryId)) {
            itemOptionsMakeOptions.add(C2807R.drawable.msg_channel, LocaleController.getString(C2807R.string.OpenChannel2), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogActivity pluginCatalogActivity = this.f$0;
                    pluginCatalogActivity.presentFragment(ChatActivity.of(-pluginCatalogActivity.repositoryId));
                }
            });
        } else {
            PluginRepositoryEntity pluginRepositoryEntity = this.repository;
            if (pluginRepositoryEntity != null && (url = pluginRepositoryEntity.getUrl()) != null) {
                GitPluginRepository gitPluginRepository = GitPluginRepository.INSTANCE;
                PluginRepositoryEntity pluginRepositoryEntity2 = this.repository;
                final String webUrl = gitPluginRepository.getWebUrl(url, pluginRepositoryEntity2 != null ? pluginRepositoryEntity2.getHomepage() : null);
                if (webUrl != null) {
                    itemOptionsMakeOptions.add(C2807R.drawable.msg_openin, LocaleController.getString(C2807R.string.PluginCatalogOpenRepository), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            Browser.openUrl(this.f$0.getParentActivity(), webUrl);
                        }
                    });
                }
            }
        }
        final String strRepositoryLink = repositoryLink();
        if (strRepositoryLink != null) {
            itemOptionsMakeOptions.add(C2807R.drawable.msg_share, LocaleController.getString(C2807R.string.ShareLink), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.showShareLinkAlert(strRepositoryLink, C2807R.string.PluginRepositoryLinkToSavedMessages, C2807R.string.PluginRepositoryLinkToUser, C2807R.string.PluginRepositoryLinkToChats);
                }
            });
            itemOptionsMakeOptions.add(C2807R.drawable.msg_copy, LocaleController.getString(C2807R.string.CopyLink), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogActivity.m3095$r8$lambda$JaCVn3EzZ3k8QWyapAy4iJEVUs(strRepositoryLink, this);
                }
            });
        }
        itemOptionsMakeOptions.setGravity(5);
        itemOptionsMakeOptions.setSwipebackGravity(false, false);
        ViewGroup layout = itemOptionsMakeOptions.getLayout();
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = layout instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout ? (ActionBarPopupWindow.ActionBarPopupWindowLayout) layout : null;
        if (actionBarPopupWindowLayout != null && (swipeBack = actionBarPopupWindowLayout.getSwipeBack()) != null) {
            swipeBack.setStickToRight(true);
        }
        itemOptionsMakeOptions.setOnTopOfScrim();
        Rect rect = new Rect();
        Drawable drawable = ContextCompat.getDrawable(getContext(), C2807R.drawable.popup_fixed_alert4);
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        itemOptionsMakeOptions.translate(0.0f, -rect.top);
        itemOptionsMakeOptions.show();
    }

    public static void $r8$lambda$95wWcPDTwOsjiWX7198dOAv7Cew(ItemOptions itemOptions, PluginCatalogActivity pluginCatalogActivity, int i) {
        itemOptions.dismiss();
        pluginCatalogActivity.setSortOrder(i);
    }

    /* JADX INFO: renamed from: $r8$lambda$JaCVn3E-zZ3k8QWyapAy4iJEVUs, reason: not valid java name */
    public static void m3095$r8$lambda$JaCVn3EzZ3k8QWyapAy4iJEVUs(String str, PluginCatalogActivity pluginCatalogActivity) {
        if (AndroidUtilities.addToClipboard(str)) {
            BulletinFactory.of(pluginCatalogActivity).createCopyBulletin(LocaleController.getString(C2807R.string.LinkCopied)).show();
        }
    }

    private final int getEffectiveSortOrder() {
        if (this.sortOrder == 1 && PluginRepositoryEntity.INSTANCE.isGitId(this.repositoryId)) {
            return 0;
        }
        return this.sortOrder;
    }

    private final void setSortOrder(int order) {
        if (getEffectiveSortOrder() == order) {
            return;
        }
        this.sortOrder = order;
        PluginCatalogController.INSTANCE.setSortOrder(order);
        this.sortedPlugins = sortPlugins(this.plugins);
        getListView$TMessagesProj().adapter.update(true);
        getListView$TMessagesProj().scrollToPosition(0);
    }

    private final List<CatalogPlugin> sortPlugins(List<CatalogPlugin> source) {
        int effectiveSortOrder = getEffectiveSortOrder();
        if (effectiveSortOrder == 1) {
            return CollectionsKt.sortedWith(source, new Comparator() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$sortPlugins$$inlined$sortedByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(Integer.valueOf(((CatalogPlugin) t2).getViews()), Integer.valueOf(((CatalogPlugin) t).getViews()));
                }
            });
        }
        if (effectiveSortOrder != 2) {
            return effectiveSortOrder != 3 ? source : CollectionsKt.sortedWith(source, new Comparator() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$sortPlugins$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    String fileName;
                    String fileName2;
                    CatalogPlugin catalogPlugin = (CatalogPlugin) t;
                    PluginMetadataEntity metadata = catalogPlugin.getMetadata();
                    if (metadata == null || (fileName = metadata.getName()) == null) {
                        fileName = catalogPlugin.getFileName();
                    }
                    Locale locale = Locale.ROOT;
                    String lowerCase = fileName.toLowerCase(locale);
                    CatalogPlugin catalogPlugin2 = (CatalogPlugin) t2;
                    PluginMetadataEntity metadata2 = catalogPlugin2.getMetadata();
                    if (metadata2 == null || (fileName2 = metadata2.getName()) == null) {
                        fileName2 = catalogPlugin2.getFileName();
                    }
                    return ComparisonsKt.compareValues(lowerCase, fileName2.toLowerCase(locale));
                }
            });
        }
        return CollectionsKt.sortedWith(source, new Comparator() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$sortPlugins$$inlined$sortedByDescending$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(((CatalogPlugin) t2).getPublishedAt()), Integer.valueOf(((CatalogPlugin) t).getPublishedAt()));
            }
        });
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public View createPinnedHeader(Context context, BlurredBackgroundDrawableViewFactory glassFactory) {
        FilterTabsView filterTabsView = new FilterTabsView(context, this.resourceProvider);
        BlurredBackgroundDrawable blurredBackgroundDrawableCreate = glassFactory.create(filterTabsView, BlurredBackgroundProviderImpl.topPanel(this.resourceProvider));
        blurredBackgroundDrawableCreate.setRadius(AndroidUtilities.dp(18.0f));
        blurredBackgroundDrawableCreate.setPadding(AndroidUtilities.dp(6.666f));
        filterTabsView.setPadding(0, AndroidUtilities.dp(TABS_PADDING), 0, AndroidUtilities.dp(TABS_PADDING));
        filterTabsView.setBlurredBackground(blurredBackgroundDrawableCreate);
        filterTabsView.setFillWidth(true);
        filterTabsView.setForcedTabIcons(TabIconsMode.ICONS_AND_TITLES);
        filterTabsView.setDelegate(new FilterTabsView.FilterTabsViewDelegate() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$createPinnedHeader$1$1
            @Override // org.telegram.ui.Components.FilterTabsView.FilterTabsViewDelegate
            public boolean didSelectTab(FilterTabsView.TabView tabView, boolean selected) {
                return false;
            }

            @Override // org.telegram.ui.Components.FilterTabsView.FilterTabsViewDelegate
            public int getTabCounter(int tabId) {
                return 0;
            }

            @Override // org.telegram.ui.Components.FilterTabsView.FilterTabsViewDelegate
            public boolean isTabMenuVisible() {
                return false;
            }

            @Override // org.telegram.ui.Components.FilterTabsView.FilterTabsViewDelegate
            public void onDeletePressed(int id) {
            }

            @Override // org.telegram.ui.Components.FilterTabsView.FilterTabsViewDelegate
            public void onPageReorder(int fromId, int toId) {
            }

            @Override // org.telegram.ui.Components.FilterTabsView.FilterTabsViewDelegate
            public void onPageScrolled(float progress) {
            }

            @Override // org.telegram.ui.Components.FilterTabsView.FilterTabsViewDelegate
            public /* bridge */ /* synthetic */ void onTabSelected(FilterTabsView.Tab tab, boolean z, boolean z2) {
                super.onTabSelected(tab, z, z2);
            }

            @Override // org.telegram.ui.Components.FilterTabsView.FilterTabsViewDelegate
            public void onPageSelected(FilterTabsView.Tab tab, boolean forward) {
                PluginCatalogActivity pluginCatalogActivity = this.this$0;
                pluginCatalogActivity.selectedCategory = (PluginCategory) CollectionsKt.getOrNull(pluginCatalogActivity.tabCategories, tab.id);
                this.this$0.updateHeader();
                this.this$0.getListView$TMessagesProj().adapter.update(true);
                this.this$0.getListView$TMessagesProj().scrollToPosition(0);
            }

            @Override // org.telegram.ui.Components.FilterTabsView.FilterTabsViewDelegate
            public void onSamePageSelected() {
                this.this$0.getListView$TMessagesProj().smoothScrollToPosition(0);
            }

            @Override // org.telegram.ui.Components.FilterTabsView.FilterTabsViewDelegate
            public boolean canPerformActions() {
                return !this.this$0.searching;
            }
        });
        this.filterTabsView = filterTabsView;
        return filterTabsView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateTabs(boolean animated) {
        FilterTabsView filterTabsView = this.filterTabsView;
        if (filterTabsView == null) {
            return;
        }
        EnumEntries<PluginCategory> entries = PluginCategory.getEntries();
        ArrayList arrayList = new ArrayList();
        for (PluginCategory pluginCategory : entries) {
            PluginCategory pluginCategory2 = pluginCategory;
            List<CatalogPlugin> list = this.plugins;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((CatalogPlugin) it.next()).getCategories().contains(pluginCategory2)) {
                            arrayList.add(pluginCategory);
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
        }
        if (!CollectionsKt.contains(arrayList, this.selectedCategory)) {
            this.selectedCategory = null;
        }
        List<? extends PluginCategory> listEmptyList = arrayList.isEmpty() ? CollectionsKt.emptyList() : CollectionsKt.plus((Collection) CollectionsKt.listOf((Object) null), (Iterable) arrayList);
        if (!Intrinsics.areEqual(listEmptyList, this.tabCategories)) {
            this.tabCategories = listEmptyList;
            filterTabsView.removeTabs();
            int i = 0;
            for (Object obj : listEmptyList) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                PluginCategory pluginCategory3 = (PluginCategory) obj;
                if (pluginCategory3 == null) {
                    filterTabsView.addTab(i, 0, LocaleController.getString(C2807R.string.FilterAllChatsShort), C2807R.drawable.filter_plugins);
                } else {
                    filterTabsView.addTab(i, pluginCategory3.ordinal() + 1, LocaleController.getString(pluginCategory3.getTitleRes()), pluginCategory3.getIconRes());
                }
                i = i2;
            }
            PluginCategory pluginCategory4 = this.selectedCategory;
            filterTabsView.selectTabWithStableId(pluginCategory4 != null ? pluginCategory4.ordinal() + 1 : 0);
            filterTabsView.finishAddingTabs(animated);
        }
        setPinnedHeaderVisible((listEmptyList.isEmpty() || this.searching) ? false : true, animated);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.pluginCatalogUpdated);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginsUpdated);
        reloadCatalog();
        getController().loadRepositories(new Function1() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogActivity.m3096$r8$lambda$NaWFbBd_SpQVNwhrNo5gc9eeJQ(this.f$0, (List) obj);
            }
        });
        PluginCatalogController.syncRepository$default(getController(), this.repositoryId, false, true, null, 8, null);
        return super.onFragmentCreate();
    }

    /* JADX INFO: renamed from: $r8$lambda$NaWF-bBd_SpQVNwhrNo5gc9eeJQ, reason: not valid java name */
    public static Unit m3096$r8$lambda$NaWFbBd_SpQVNwhrNo5gc9eeJQ(PluginCatalogActivity pluginCatalogActivity, List list) {
        Object next;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((PluginRepositoryEntity) next).getRepositoryId() == pluginCatalogActivity.repositoryId) {
                break;
            }
        }
        pluginCatalogActivity.repository = (PluginRepositoryEntity) next;
        updateList$default(pluginCatalogActivity, false, 1, null);
        return Unit.INSTANCE;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.pluginCatalogUpdated);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginsUpdated);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int id, int account, Object... args) {
        if (id == NotificationCenter.pluginCatalogUpdated) {
            if (Intrinsics.areEqual(ArraysKt.getOrNull(args, 0), Long.valueOf(this.repositoryId))) {
                reloadCatalog();
            }
        } else if (id == NotificationCenter.pluginsUpdated) {
            updateList$default(this, false, 1, null);
        }
    }

    private final void reloadCatalog() {
        getController().loadCatalog(this.repositoryId, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogActivity.$r8$lambda$_YC5TD38E8ZPY4nJQ0MGigBeabw(this.f$0, (List) obj);
            }
        });
    }

    public static Unit $r8$lambda$_YC5TD38E8ZPY4nJQ0MGigBeabw(PluginCatalogActivity pluginCatalogActivity, List list) {
        pluginCatalogActivity.plugins = list;
        pluginCatalogActivity.sortedPlugins = pluginCatalogActivity.sortPlugins(list);
        boolean z = pluginCatalogActivity.loaded;
        pluginCatalogActivity.loaded = true;
        pluginCatalogActivity.updateList(z);
        if (!z) {
            pluginCatalogActivity.resumeDelayedFragmentAnimation();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refresh() {
        if (this.refreshing) {
            return;
        }
        this.refreshing = true;
        updateHeader();
        getController().syncRepository(this.repositoryId, true, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogActivity.$r8$lambda$1p__ROidDxae73QCfQJ0wfV7fFY(this.f$0, (Integer) obj);
            }
        });
    }

    public static Unit $r8$lambda$1p__ROidDxae73QCfQJ0wfV7fFY(PluginCatalogActivity pluginCatalogActivity, Integer num) {
        Bulletin bulletinCreateSimpleBulletin;
        pluginCatalogActivity.refreshing = false;
        if (pluginCatalogActivity.fragmentView == null) {
            return Unit.INSTANCE;
        }
        pluginCatalogActivity.updateHeader();
        if (num == null) {
            bulletinCreateSimpleBulletin = BulletinFactory.of(pluginCatalogActivity).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.PluginCatalogRefreshFailed));
        } else {
            bulletinCreateSimpleBulletin = num.intValue() == 0 ? BulletinFactory.of(pluginCatalogActivity).createSimpleBulletin(C2807R.raw.done, LocaleController.getString(C2807R.string.PluginCatalogUpToDate)) : BulletinFactory.of(pluginCatalogActivity).createSimpleBulletin(C2807R.raw.done, LocaleController.formatPluralString("PluginCatalogNewVersions", num.intValue(), new Object[0]));
        }
        bulletinCreateSimpleBulletin.show();
        return Unit.INSTANCE;
    }

    private final String repositoryLink() {
        String username;
        PluginRepositoryEntity pluginRepositoryEntity = this.repository;
        if (pluginRepositoryEntity == null) {
            return null;
        }
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.repositoryId));
        if (chat == null || (username = ChatObject.getPublicUsername(chat)) == null) {
            username = pluginRepositoryEntity.getUsername();
        }
        return PluginRepositoryLinks.INSTANCE.build(pluginRepositoryEntity, username);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateHeader() {
        int size;
        ChatAvatarContainer chatAvatarContainer = this.avatarContainer;
        if (chatAvatarContainer == null) {
            return;
        }
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.repositoryId));
        if (chat != null) {
            chatAvatarContainer.setTitle(chat.title, chat.scam, chat.fake, chat.verified, false, BadgesController.INSTANCE.getBadge(chat), chat.emoji_status, false);
            chatAvatarContainer.setChatAvatar(chat);
        } else {
            chatAvatarContainer.setTitle(getTitle());
            BackupImageView backupImageView = chatAvatarContainer.avatarImageView;
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(this.repositoryId, getTitle(), null);
            backupImageView.setImageDrawable(avatarDrawable);
        }
        PluginCategory pluginCategory = this.selectedCategory;
        List<CatalogPlugin> list = this.plugins;
        if (pluginCategory == null) {
            size = list.size();
        } else {
            List<CatalogPlugin> list2 = list;
            if ((list2 instanceof Collection) && list2.isEmpty()) {
                size = 0;
            } else {
                Iterator<T> it = list2.iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (((CatalogPlugin) it.next()).getCategories().contains(pluginCategory) && (i = i + 1) < 0) {
                        CollectionsKt.throwCountOverflow();
                    }
                }
                size = i;
            }
        }
        chatAvatarContainer.setSubtitle((!this.loaded || this.refreshing) ? LocaleController.getString(C2807R.string.PluginCatalogUpdating) : LocaleController.formatPluralString("PluginCatalogPlugins", size, new Object[0]));
    }

    public static /* synthetic */ void updateList$default(PluginCatalogActivity pluginCatalogActivity, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        pluginCatalogActivity.updateList(z);
    }

    private final void updateList(boolean animated) {
        if (this.fragmentView != null) {
            updateTabs(animated);
            updateHeader();
            boolean zCanScrollVertically = getListView$TMessagesProj().canScrollVertically(-1);
            getListView$TMessagesProj().adapter.update(animated);
            if (zCanScrollVertically) {
                return;
            }
            getListView$TMessagesProj().scrollToPosition(0);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        ArrayList arrayList;
        int iMin;
        List arrayList2;
        List arrayList3;
        String string;
        int i;
        boolean zIsMetadataAvailable = getController().isMetadataAvailable();
        PluginCategory pluginCategory = this.selectedCategory;
        if (pluginCategory == null || this.searching) {
            pluginCategory = null;
        }
        List<CatalogPlugin> listFilterByQuery = filterByQuery(this.sortedPlugins);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj : listFilterByQuery) {
            CatalogPlugin catalogPlugin = (CatalogPlugin) obj;
            if (pluginCategory == null || catalogPlugin.getCategories().contains(pluginCategory)) {
                arrayList4.add(obj);
            }
        }
        int i2 = 0;
        if (zIsMetadataAvailable) {
            arrayList = new ArrayList();
            int size = arrayList4.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj2 = arrayList4.get(i3);
                i3++;
                if (!((CatalogPlugin) obj2).isPending()) {
                    arrayList.add(obj2);
                }
            }
        } else {
            arrayList = arrayList4;
        }
        if (zIsMetadataAvailable && !this.searching && pluginCategory == null) {
            if (arrayList4.isEmpty()) {
                i = 0;
            } else {
                int size2 = arrayList4.size();
                i = 0;
                int i4 = 0;
                while (i4 < size2) {
                    Object obj3 = arrayList4.get(i4);
                    i4++;
                    if (((CatalogPlugin) obj3).isPending() && (i = i + 1) < 0) {
                        CollectionsKt.throwCountOverflow();
                    }
                }
            }
            iMin = Math.min(i, 4);
        } else {
            iMin = 0;
        }
        if (arrayList.isEmpty() && iMin == 0) {
            if (this.searching || (this.loaded && !getController().isSyncing(this.repositoryId))) {
                items.add(UItem.asFullscreenCustom(getEmptyView(), AndroidUtilities.dp(this.searching ? 148.0f : 74.0f), true).setTransparent(true));
                return;
            }
            items.add(UItem.asHeader(LocaleController.getString(C2807R.string.PluginCatalogAllPlugins)));
            addSkeletons(items, 4);
            items.add(UItem.asShadow());
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList, 10)), 16));
        int size3 = arrayList.size();
        int i5 = 0;
        while (i5 < size3) {
            Object obj4 = arrayList.get(i5);
            i5++;
            linkedHashMap.put(obj4, Integer.valueOf(getState((CatalogPlugin) obj4)));
        }
        if (this.searching) {
            arrayList2 = CollectionsKt.emptyList();
        } else {
            arrayList2 = new ArrayList();
            int size4 = arrayList.size();
            int i6 = 0;
            while (i6 < size4) {
                Object obj5 = arrayList.get(i6);
                i6++;
                Integer num = (Integer) linkedHashMap.get((CatalogPlugin) obj5);
                if (num != null && num.intValue() == 1) {
                    arrayList2.add(obj5);
                }
            }
        }
        if (!arrayList2.isEmpty()) {
            items.add(UItem.asHeader(LocaleController.getString(C2807R.string.PluginCatalogUpdates)));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                items.add(createItem((CatalogPlugin) it.next(), 1, zIsMetadataAvailable));
            }
            items.add(UItem.asShadow());
        }
        if (this.searching) {
            arrayList3 = CollectionsKt.emptyList();
        } else {
            arrayList3 = new ArrayList();
            int size5 = arrayList.size();
            int i7 = 0;
            while (i7 < size5) {
                Object obj6 = arrayList.get(i7);
                i7++;
                Integer num2 = (Integer) linkedHashMap.get((CatalogPlugin) obj6);
                if (num2 != null && num2.intValue() == 2) {
                    arrayList3.add(obj6);
                }
            }
        }
        if (!arrayList3.isEmpty()) {
            items.add(UItem.asHeader(LocaleController.getString(C2807R.string.PluginCatalogInstalled)));
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                items.add(createItem((CatalogPlugin) it2.next(), 2, zIsMetadataAvailable));
            }
            items.add(UItem.asShadow());
        }
        ArrayList arrayList5 = new ArrayList();
        int size6 = arrayList.size();
        int i8 = 0;
        while (i8 < size6) {
            Object obj7 = arrayList.get(i8);
            i8++;
            CatalogPlugin catalogPlugin2 = (CatalogPlugin) obj7;
            if (!arrayList2.contains(catalogPlugin2) && !arrayList3.contains(catalogPlugin2)) {
                arrayList5.add(obj7);
            }
        }
        if (arrayList5.isEmpty() && iMin == 0) {
            return;
        }
        if (pluginCategory == null || (string = LocaleController.getString(pluginCategory.getTitleRes())) == null) {
            string = LocaleController.getString(C2807R.string.PluginCatalogAllPlugins);
        }
        items.add(UItem.asHeader(string));
        int size7 = arrayList5.size();
        int i9 = 0;
        while (i9 < size7) {
            Object obj8 = arrayList5.get(i9);
            i9++;
            CatalogPlugin catalogPlugin3 = (CatalogPlugin) obj8;
            Integer num3 = (Integer) linkedHashMap.get(catalogPlugin3);
            items.add(createItem(catalogPlugin3, num3 != null ? num3.intValue() : 0, zIsMetadataAvailable));
        }
        addSkeletons(items, iMin);
        if (!zIsMetadataAvailable && !arrayList5.isEmpty()) {
            int size8 = arrayList5.size();
            while (i2 < size8) {
                Object obj9 = arrayList5.get(i2);
                i2++;
                if (((CatalogPlugin) obj9).isPending()) {
                    items.add(UItem.asShadow(LocaleController.getString(C2807R.string.PluginCatalogEngineUnavailable)));
                    return;
                }
            }
        }
        items.add(UItem.asShadow());
    }

    private final void addSkeletons(ArrayList<UItem> items, int count) {
        for (int i = 0; i < count; i++) {
            items.add(CatalogPluginSkeletonCell.Factory.INSTANCE.of(i + 100, i));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0016  */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v8, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.exteragram.messenger.plugins.catalog.ui.CatalogPluginCell$Factory$Companion] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final UItem createItem(CatalogPlugin plugin, int state, boolean detailsAvailable) {
        ?? ReplaceArrows;
        PluginMetadataEntity metadata = plugin.getMetadata();
        if (metadata == null) {
            ReplaceArrows = 0;
        } else {
            if (metadata.getError() != null) {
                metadata = null;
            }
            if (metadata != null) {
                ReplaceArrows = metadata.getVersion();
            }
        }
        String pluginId = plugin.getPluginId();
        final Plugin plugin2 = pluginId != null ? PluginsController.INSTANCE.getInstance().getPlugins().get(pluginId) : null;
        if (state == 1) {
            if ((plugin2 != null ? plugin2.getVersion() : null) != null && ReplaceArrows != 0) {
                ReplaceArrows = LocaleUtils.replaceArrows(getContext(), plugin2.getVersion() + " -> " + ReplaceArrows, C2807R.drawable.msg_mini_arrow_mediathin);
            }
        }
        return CatalogPluginCell.Factory.INSTANCE.of(plugin, state, ReplaceArrows, state == 0 && plugin.getPublishedAt() >= getConnectionsManager().getCurrentTime() - NEW_PERIOD, this.installing.contains(Integer.valueOf(plugin.getEntryId())), detailsAvailable, plugin2 != null ? new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.confirmDelete(plugin2);
            }
        } : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void confirmDelete(final Plugin plugin) {
        if (plugin.getIsNotResponding()) {
            PluginsWatchdog.INSTANCE.showNotRespondingAlert(plugin);
            return;
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(getParentActivity(), this.resourceProvider).setTitle(LocaleController.getString(C2807R.string.PluginDelete)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.PluginDeleteInfo, plugin.getName()))).setPositiveButton(LocaleController.getString(C2807R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda13
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                PluginsController.INSTANCE.getInstance().deletePlugin(plugin.getId(), new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda11
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                PluginCatalogActivity.m3094$r8$lambda$BgPOaW2M3_9HU3N0Wg_kjsDHM(pluginCatalogActivity, str);
                            }
                        });
                    }
                });
            }
        }).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).create();
        showDialog(alertDialogCreate);
        View button = alertDialogCreate.getButton(-1);
        TextView textView = button instanceof TextView ? (TextView) button : null;
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$BgPOaW2M3-_9HU-3N0Wg_kjsDHM, reason: not valid java name */
    public static void m3094$r8$lambda$BgPOaW2M3_9HU3N0Wg_kjsDHM(PluginCatalogActivity pluginCatalogActivity, String str) {
        if (pluginCatalogActivity.fragmentView == null || str == null) {
            return;
        }
        BulletinFactory.of(pluginCatalogActivity).createSimpleBulletin(C2807R.raw.error, str).show();
    }

    private final List<CatalogPlugin> filterByQuery(List<CatalogPlugin> source) {
        String string;
        String str = this.query;
        String lowerCase = (str == null || (string = StringsKt.trim((CharSequence) str).toString()) == null) ? null : string.toLowerCase(Locale.ROOT);
        if (!this.searching || lowerCase == null || lowerCase.length() == 0) {
            return source;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : source) {
            CatalogPlugin catalogPlugin = (CatalogPlugin) obj;
            PluginMetadataEntity metadata = catalogPlugin.getMetadata();
            List listListOfNotNull = CollectionsKt.listOfNotNull((Object[]) new String[]{metadata != null ? metadata.getName() : null, metadata != null ? metadata.getAuthor() : null, metadata != null ? metadata.getDescription() : null, catalogPlugin.getFileName()});
            if (!(listListOfNotNull instanceof Collection) || !listListOfNotNull.isEmpty()) {
                Iterator it = listListOfNotNull.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (StringsKt.contains$default((CharSequence) ((String) it.next()).toLowerCase(Locale.ROOT), (CharSequence) lowerCase, false, 2, (Object) null)) {
                        arrayList.add(obj);
                        break;
                    }
                }
            }
        }
        return arrayList;
    }

    private final int getState(CatalogPlugin plugin) {
        Plugin plugin2;
        String version;
        String version2;
        String pluginId = plugin.getPluginId();
        if (pluginId == null || (plugin2 = PluginsController.INSTANCE.getInstance().getPlugins().get(pluginId)) == null) {
            return 0;
        }
        PluginMetadataEntity metadata = plugin.getMetadata();
        if (metadata != null && (version = metadata.getVersion()) != null) {
            Regex regex = VERSION_NUMBER;
            MatchResult matchResultFind$default = Regex.find$default(regex, version, 0, 2, null);
            String value = matchResultFind$default != null ? matchResultFind$default.getValue() : null;
            if (value != null && (version2 = plugin2.getVersion()) != null) {
                MatchResult matchResultFind$default2 = Regex.find$default(regex, version2, 0, 2, null);
                String value2 = matchResultFind$default2 != null ? matchResultFind$default2.getValue() : null;
                if (value2 != null) {
                    try {
                        if (AppUtils.compareVersionValues(value, value2) > 0) {
                            return 1;
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
        return 2;
    }

    private final EmptyPluginsView getEmptyView() {
        EmptyPluginsView emptyPluginsView = this.emptyView;
        if (emptyPluginsView == null) {
            emptyPluginsView = new EmptyPluginsView(getContext(), this.resourceProvider);
            this.emptyView = emptyPluginsView;
        }
        int i = this.searching ? 1 : 2;
        if (!Intrinsics.areEqual(emptyPluginsView.getTag(), Integer.valueOf(i))) {
            MediaDataController.getInstance(this.currentAccount).setPlaceholderImage(emptyPluginsView.getBackupImageView(), "AnimatedEmojies", this.searching ? "🔎" : "📂", "100_100");
            emptyPluginsView.setText(LocaleController.getString(this.searching ? C2807R.string.PluginsNotFound : C2807R.string.PluginCatalogEmpty));
            emptyPluginsView.setTag(Integer.valueOf(i));
        }
        return emptyPluginsView;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        Object obj = item.object;
        final CatalogPlugin catalogPlugin = obj instanceof CatalogPlugin ? (CatalogPlugin) obj : null;
        if (catalogPlugin != null && this.requested.add(Integer.valueOf(catalogPlugin.getEntryId()))) {
            final Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogActivity.$r8$lambda$cHRJPww3meHHjWNqufXkphePJoM(this.f$0, catalogPlugin);
                }
            };
            AndroidUtilities.runOnUIThread(runnable, PROGRESS_DELAY);
            getController().downloadPlugin(catalogPlugin, new Function2() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return PluginCatalogActivity.$r8$lambda$FrVHsSOYkkfl8Ha4q0H2DEvIL4Y(runnable, this, catalogPlugin, (File) obj2, (MessageObject) obj3);
                }
            });
        }
    }

    public static void $r8$lambda$cHRJPww3meHHjWNqufXkphePJoM(PluginCatalogActivity pluginCatalogActivity, CatalogPlugin catalogPlugin) {
        pluginCatalogActivity.installing.add(Integer.valueOf(catalogPlugin.getEntryId()));
        updateList$default(pluginCatalogActivity, false, 1, null);
    }

    public static Unit $r8$lambda$FrVHsSOYkkfl8Ha4q0H2DEvIL4Y(Runnable runnable, PluginCatalogActivity pluginCatalogActivity, CatalogPlugin catalogPlugin, File file, MessageObject messageObject) {
        AndroidUtilities.cancelRunOnUIThread(runnable);
        pluginCatalogActivity.requested.remove(Integer.valueOf(catalogPlugin.getEntryId()));
        if (pluginCatalogActivity.fragmentView == null) {
            return Unit.INSTANCE;
        }
        if (pluginCatalogActivity.installing.remove(Integer.valueOf(catalogPlugin.getEntryId()))) {
            updateList$default(pluginCatalogActivity, false, 1, null);
        }
        if (file == null) {
            BulletinFactory.of(pluginCatalogActivity).createSimpleBulletin(C2807R.raw.error, LocaleController.formatString(C2807R.string.PluginCatalogDownloadFailed, catalogPlugin.getFileName())).show();
            return Unit.INSTANCE;
        }
        if (messageObject != null) {
            PluginsController.INSTANCE.getInstance().showInstallDialog(pluginCatalogActivity, messageObject, file.getAbsolutePath());
        } else {
            PluginsController.showInstallDialog$default(PluginsController.INSTANCE.getInstance(), (BaseFragment) pluginCatalogActivity, file.getAbsolutePath(), false, 4, (Object) null);
        }
        return Unit.INSTANCE;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean onLongClick(UItem item, View view, int position, float x, float y) {
        Object obj = item.object;
        final CatalogPlugin catalogPlugin = obj instanceof CatalogPlugin ? (CatalogPlugin) obj : null;
        if (catalogPlugin == null || PluginRepositoryEntity.INSTANCE.isGitId(this.repositoryId)) {
            return false;
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        itemOptionsMakeOptions.add(C2807R.drawable.msg_message, LocaleController.getString(C2807R.string.ViewInChat), new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.ui.PluginCatalogActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogActivity pluginCatalogActivity = this.f$0;
                pluginCatalogActivity.presentFragment(ChatActivity.of(-pluginCatalogActivity.repositoryId, catalogPlugin.getEntryId()));
            }
        });
        itemOptionsMakeOptions.setScrimViewBackground(getListView$TMessagesProj().getClipBackground(view));
        itemOptionsMakeOptions.setGravity(LocaleController.isRTL ? 3 : 5);
        itemOptionsMakeOptions.setDismissOnMoveOutside(true);
        itemOptionsMakeOptions.show();
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean invoked) {
        if (!this.searching) {
            return super.onBackPressed(invoked);
        }
        if (!invoked) {
            return false;
        }
        this.actionBar.closeSearchField();
        return false;
    }
}
