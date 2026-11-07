package com.exteragram.messenger.feed.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import androidx.core.util.Consumer;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.feed.FeedChannelActions;
import com.exteragram.messenger.feed.FeedConfig;
import com.exteragram.messenger.feed.FeedController;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.function.Predicate;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0007\u0018\u0000 42\u00020\u00012\u00020\u0002:\u000234B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u000e\u001a\u00020\u000bH\u0016J\b\u0010\u000f\u001a\u00020\rH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J5\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0016\u0010\u0016\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00180\u0017\"\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0014J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\rH\u0016J\b\u0010 \u001a\u00020\u0011H\u0002J\u0010\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020#H\u0002J\u001e\u0010$\u001a\u00020\u00112\f\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\b2\u0006\u0010'\u001a\u00020(H\u0014J0\u0010)\u001a\u00020\u00112\u0006\u0010*\u001a\u00020&2\u0006\u0010+\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020\u00142\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020.H\u0014J0\u00100\u001a\u00020\r2\u0006\u0010*\u001a\u00020&2\u0006\u0010+\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020\u00142\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020.H\u0014J\u0010\u00101\u001a\u00020\u00112\u0006\u00102\u001a\u00020\rH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lcom/exteragram/messenger/feed/ui/FeedChannelsActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "<init>", "()V", "otherItem", "Lorg/telegram/ui/ActionBar/ActionBarMenuItem;", "channels", "Ljava/util/ArrayList;", "Lorg/telegram/tgnet/TLRPC$Chat;", "query", _UrlKt.FRAGMENT_ENCODE_SET, "searching", _UrlKt.FRAGMENT_ENCODE_SET, "getTitle", "onFragmentCreate", "onFragmentDestroy", _UrlKt.FRAGMENT_ENCODE_SET, "didReceivedNotification", "id", _UrlKt.FRAGMENT_ENCODE_SET, "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "onBackPressed", "invoked", "reloadChannels", "removeChannel", "dialogId", _UrlKt.FRAGMENT_ENCODE_SET, "fillItems", PluginsConstants.Settings.ITEMS, "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "onLongClick", "setAllExcluded", "excluded", "SettingItem", "Companion", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFeedChannelsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedChannelsActivity.kt\ncom/exteragram/messenger/feed/ui/FeedChannelsActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,248:1\n1915#2,2:249\n296#2,2:251\n1586#2:253\n1661#2,3:254\n1915#2,2:257\n*S KotlinDebug\n*F\n+ 1 FeedChannelsActivity.kt\ncom/exteragram/messenger/feed/ui/FeedChannelsActivity\n*L\n168#1:249,2\n202#1:251,2\n242#1:253\n242#1:254,3\n139#1:257,2\n*E\n"})
public final class FeedChannelsActivity extends BasePreferencesActivity implements NotificationCenter.NotificationCenterDelegate {
    private final ArrayList<TLRPC.Chat> channels = new ArrayList<>();
    private ActionBarMenuItem otherItem;
    private String query;
    private boolean searching;
    private static final Comparator<TLRPC.Chat> BY_TITLE = new Comparator() { // from class: com.exteragram.messenger.feed.ui.FeedChannelsActivity$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return FeedChannelsActivity.$r8$lambda$6HdJlreNY2feI1YiMjmGZIb4Kyo((TLRPC.Chat) obj, (TLRPC.Chat) obj2);
        }
    };

    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SettingItem.values().length];
            try {
                iArr[SettingItem.FEED_TAB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SettingItem.WIDE_POSTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SettingItem.UNREAD_COUNTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SettingItem.ARCHIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bj\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/feed/ui/FeedChannelsActivity$SettingItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "FEED_TAB", "WIDE_POSTS", "UNREAD_COUNTER", "ARCHIVE", "id", _UrlKt.FRAGMENT_ENCODE_SET, "getId", "()I", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class SettingItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ SettingItem[] $VALUES;
        private final int id = ordinal() + 1000;
        public static final SettingItem FEED_TAB = new SettingItem("FEED_TAB", 0);
        public static final SettingItem WIDE_POSTS = new SettingItem("WIDE_POSTS", 1);
        public static final SettingItem UNREAD_COUNTER = new SettingItem("UNREAD_COUNTER", 2);
        public static final SettingItem ARCHIVE = new SettingItem("ARCHIVE", 3);

        private static final /* synthetic */ SettingItem[] $values() {
            return new SettingItem[]{FEED_TAB, WIDE_POSTS, UNREAD_COUNTER, ARCHIVE};
        }

        public static EnumEntries<SettingItem> getEntries() {
            return $ENTRIES;
        }

        public static SettingItem valueOf(String str) {
            return (SettingItem) Enum.valueOf(SettingItem.class, str);
        }

        public static SettingItem[] values() {
            return (SettingItem[]) $VALUES.clone();
        }

        private SettingItem(String str, int i) {
        }

        static {
            SettingItem[] settingItemArr$values = $values();
            $VALUES = settingItemArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(settingItemArr$values);
        }

        public final int getId() {
            return this.id;
        }
    }

    public static int $r8$lambda$6HdJlreNY2feI1YiMjmGZIb4Kyo(TLRPC.Chat chat, TLRPC.Chat chat2) {
        String lowerCase;
        String lowerCase2;
        String str = chat.title;
        String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (str == null || (lowerCase = str.toLowerCase(Locale.ROOT)) == null) {
            lowerCase = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String str3 = chat2.title;
        if (str3 != null && (lowerCase2 = str3.toLowerCase(Locale.ROOT)) != null) {
            str2 = lowerCase2;
        }
        return lowerCase.compareTo(str2);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2665R.string.FeedSettings);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.feedNeedReload);
        getNotificationCenter().addObserver(this, NotificationCenter.dialogDeleted);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.feedNeedReload);
        getNotificationCenter().removeObserver(this, NotificationCenter.dialogDeleted);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int id, int account, Object... args) {
        if (id == NotificationCenter.feedNeedReload) {
            reloadChannels();
        } else if (id == NotificationCenter.dialogDeleted) {
            removeChannel(((Long) args[0]).longValue());
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        View viewCreateView = super.createView(context);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: com.exteragram.messenger.feed.ui.FeedChannelsActivity.createView.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int id) {
                if (id == -1) {
                    FeedChannelsActivity.this.finishFragment();
                } else if (id == 1) {
                    FeedChannelsActivity.this.setAllExcluded(false);
                } else {
                    if (id != 2) {
                        return;
                    }
                    FeedChannelsActivity.this.setAllExcluded(true);
                }
            }
        });
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        ActionBarMenuItem actionBarMenuItemSearchListener = actionBarMenuCreateMenu.addItem(0, C2665R.drawable.outline_header_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: com.exteragram.messenger.feed.ui.FeedChannelsActivity$createView$searchItem$1
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                this.this$0.searching = true;
                ActionBarMenuItem actionBarMenuItem = this.this$0.otherItem;
                if (actionBarMenuItem != null) {
                    actionBarMenuItem.setVisibility(8);
                }
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                this.this$0.searching = false;
                this.this$0.query = null;
                ActionBarMenuItem actionBarMenuItem = this.this$0.otherItem;
                if (actionBarMenuItem != null) {
                    actionBarMenuItem.setVisibility(0);
                }
                UniversalAdapter universalAdapter = this.this$0.getListView$TMessagesProj().adapter;
                if (universalAdapter != null) {
                    universalAdapter.update(true);
                }
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                this.this$0.query = StringsKt.trim((CharSequence) editText.getText().toString()).toString().toLowerCase(Locale.getDefault());
                UniversalAdapter universalAdapter = this.this$0.getListView$TMessagesProj().adapter;
                if (universalAdapter != null) {
                    universalAdapter.update(true);
                }
            }
        });
        actionBarMenuItemSearchListener.setSearchPaddingStart(7);
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString(C2665R.string.Search));
        ActionBarMenuItem actionBarMenuItemAddItem = actionBarMenuCreateMenu.addItem(3, C2665R.drawable.ic_ab_other);
        actionBarMenuItemAddItem.addSubItem(1, C2665R.drawable.msg_select, LocaleController.getString(C2665R.string.SelectAll));
        actionBarMenuItemAddItem.addSubItem(2, C2665R.drawable.msg_cancel, LocaleController.getString(C2665R.string.DeselectAll));
        this.otherItem = actionBarMenuItemAddItem;
        reloadChannels();
        return viewCreateView;
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

    private final void reloadChannels() {
        FeedController.getInstance(this.currentAccount).loadChannels(true, new FeedController.ChannelsCallback() { // from class: com.exteragram.messenger.feed.ui.FeedChannelsActivity$$ExternalSyntheticLambda1
            @Override // com.exteragram.messenger.feed.FeedController.ChannelsCallback
            public final void onChannels(ArrayList arrayList, int i, boolean z, int i2) {
                FeedChannelsActivity.$r8$lambda$6kPVIVrSCN3A66Wp2WuN7QKUh7A(this.f$0, arrayList, i, z, i2);
            }
        });
    }

    public static void $r8$lambda$6kPVIVrSCN3A66Wp2WuN7QKUh7A(FeedChannelsActivity feedChannelsActivity, ArrayList arrayList, int i, boolean z, int i2) {
        if (z) {
            return;
        }
        feedChannelsActivity.channels.clear();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            TLRPC.Chat chat = (TLRPC.Chat) obj;
            ArrayList<TLRPC.Chat> arrayList2 = feedChannelsActivity.channels;
            TLRPC.Chat chat2 = feedChannelsActivity.getMessagesController().getChat(Long.valueOf(chat.id));
            if (chat2 != null) {
                chat = chat2;
            }
            arrayList2.add(chat);
        }
        CollectionsKt.sortWith(feedChannelsActivity.channels, BY_TITLE);
        UniversalAdapter universalAdapter = feedChannelsActivity.getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$xHdbIe-FkeUuD-NLCgdyhjVEi10, reason: not valid java name */
    public static boolean m2507$r8$lambda$xHdbIeFkeUuDNLCgdyhjVEi10(long j, TLRPC.Chat chat) {
        return (-chat.id) == j;
    }

    private final void removeChannel(final long dialogId) {
        UniversalAdapter universalAdapter;
        ArrayList<TLRPC.Chat> arrayList = this.channels;
        final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.feed.ui.FeedChannelsActivity$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(FeedChannelsActivity.m2507$r8$lambda$xHdbIeFkeUuDNLCgdyhjVEi10(dialogId, (TLRPC.Chat) obj));
            }
        };
        if (!arrayList.removeIf(new Predicate() { // from class: com.exteragram.messenger.feed.ui.FeedChannelsActivity$$ExternalSyntheticLambda5
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((Boolean) function1.invoke(obj)).booleanValue();
            }
        }) || (universalAdapter = getListView$TMessagesProj().adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        String str;
        FeedChannelsActivity feedChannelsActivity = this;
        FeedConfig companion = FeedConfig.INSTANCE.getInstance(feedChannelsActivity.currentAccount);
        String str2 = feedChannelsActivity.query;
        boolean zIsEmpty = TextUtils.isEmpty(str2);
        if (zIsEmpty) {
            items.add(UItem.asHeader(LocaleController.getString(C2665R.string.General)));
            items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) feedChannelsActivity, SettingItem.FEED_TAB.getId(), (CharSequence) LocaleController.getString(C2665R.string.FeedBottomTab), ExteraConfig.getShowFeedTab(), (CharSequence) LocaleController.getString(C2665R.string.FeedBottomTabInfo), 0, false, "feedBottomTab", false, 0, 432, (Object) null));
            items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, SettingItem.WIDE_POSTS.getId(), (CharSequence) LocaleController.getString(C2665R.string.WidePostsInFeed), ExteraConfig.getWidePostsInFeed(), (CharSequence) null, 0, false, "feedWidePosts", false, 0, 440, (Object) null));
            items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, SettingItem.UNREAD_COUNTER.getId(), (CharSequence) LocaleController.getString(C2665R.string.FeedUnreadCounter), ExteraConfig.getShowFeedUnreadCounter(), (CharSequence) null, 0, false, "feedUnreadCounter", false, 0, 440, (Object) null));
            feedChannelsActivity = this;
            items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) feedChannelsActivity, SettingItem.ARCHIVE.getId(), (CharSequence) LocaleController.getString(C2665R.string.FeedIncludeArchived), companion.getIncludeArchived(), (CharSequence) null, 0, false, "feedIncludeArchived", false, 0, 440, (Object) null));
            items.add(UItem.asShadow(LocaleController.getString(C2665R.string.FeedIncludeArchivedInfo)));
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList<TLRPC.Chat> arrayList3 = feedChannelsActivity.channels;
        int size = arrayList3.size();
        int i = 0;
        while (i < size) {
            TLRPC.Chat chat = arrayList3.get(i);
            i++;
            TLRPC.Chat chat2 = chat;
            if (zIsEmpty || ((str = chat2.title) != null && StringsKt.contains$default((CharSequence) str.toLowerCase(Locale.getDefault()), (CharSequence) str2, false, 2, (Object) null))) {
                boolean zIsExcluded = companion.isExcluded(-chat2.id);
                (!zIsExcluded ? arrayList : arrayList2).add(UItem.asUserCheckbox(Long.hashCode(chat2.id), chat2).setChecked(!zIsExcluded));
            }
        }
        if (!arrayList.isEmpty()) {
            items.add(UItem.asHeader(LocaleController.getString(C2665R.string.FeedShownChannels)));
            items.addAll(arrayList);
        }
        if (!arrayList2.isEmpty()) {
            if (!arrayList.isEmpty()) {
                items.add(UItem.asShadow());
            }
            items.add(UItem.asHeader(LocaleController.getString(C2665R.string.FeedHiddenChannels)));
            items.addAll(arrayList2);
        }
        if (zIsEmpty) {
            if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                return;
            }
            items.add(UItem.asShadow(LocaleController.getString(C2665R.string.FeedChannelsInfo)));
        }
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
    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        Object obj = item.object;
        SettingItem settingItem = null;
        final TLRPC.Chat chat = obj instanceof TLRPC.Chat ? (TLRPC.Chat) obj : null;
        if (chat != null) {
            toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.feed.ui.FeedChannelsActivity$$ExternalSyntheticLambda6
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj2) {
                    FeedConfig.INSTANCE.getInstance(this.f$0.currentAccount).setExcluded(-chat.id, !((Boolean) obj2).booleanValue());
                }
            });
            return;
        }
        Iterator<SettingItem> it = SettingItem.getEntries().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            SettingItem next = it.next();
            if (next.getId() == item.id) {
                settingItem = next;
                break;
            }
        }
        SettingItem settingItem2 = settingItem;
        if (settingItem2 == null) {
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[settingItem2.ordinal()];
        if (i == 1) {
            toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.feed.ui.FeedChannelsActivity$$ExternalSyntheticLambda7
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj2) {
                    ExteraConfig.setShowFeedTab(((Boolean) obj2).booleanValue());
                }
            });
            UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
            if (universalAdapter != null) {
                universalAdapter.update(true);
            }
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.feedTabVisibleToggled, new Object[0]);
            return;
        }
        if (i == 2) {
            toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.feed.ui.FeedChannelsActivity$$ExternalSyntheticLambda8
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj2) {
                    ExteraConfig.setWidePostsInFeed(((Boolean) obj2).booleanValue());
                }
            });
            this.parentLayout.rebuildFragments(AndroidUtilities.isTablet() ? 1 : 0);
        } else if (i == 3) {
            toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.feed.ui.FeedChannelsActivity$$ExternalSyntheticLambda9
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj2) {
                    ExteraConfig.setShowFeedUnreadCounter(((Boolean) obj2).booleanValue());
                }
            });
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, 0);
        } else {
            if (i != 4) {
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
                return;
            }
            FeedConfig.INSTANCE.getInstance(this.currentAccount).setIncludeArchived(!r2.getIncludeArchived());
            reloadChannels();
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean onLongClick(UItem item, View view, int position, float x, float y) {
        Object obj = item.object;
        final TLRPC.Chat chat = obj instanceof TLRPC.Chat ? (TLRPC.Chat) obj : null;
        if (chat == null) {
            return super.onLongClick(item, view, position, x, y);
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        itemOptionsMakeOptions.setLongPressSelectionEnabled(false);
        itemOptionsMakeOptions.setScrimViewBackground(getListView$TMessagesProj().getClipBackground(view));
        itemOptionsMakeOptions.add(C2665R.drawable.msg_channel, LocaleController.getString(C2665R.string.OpenChannel2), new Runnable() { // from class: com.exteragram.messenger.feed.ui.FeedChannelsActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.presentFragment(ChatActivity.of(-chat.id));
            }
        });
        itemOptionsMakeOptions.addIf(FeedChannelActions.canLeave(chat), C2665R.drawable.msg_leave, (CharSequence) LocaleController.getString(C2665R.string.LeaveChannelMenu), true, new Runnable() { // from class: com.exteragram.messenger.feed.ui.FeedChannelsActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                FeedChannelActions.leaveChannel(this.f$0, chat, null, null);
            }
        });
        itemOptionsMakeOptions.show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setAllExcluded(boolean excluded) {
        FeedConfig companion = FeedConfig.INSTANCE.getInstance(this.currentAccount);
        if (excluded) {
            ArrayList<TLRPC.Chat> arrayList = this.channels;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TLRPC.Chat chat = arrayList.get(i);
                i++;
                arrayList2.add(Long.valueOf(-chat.id));
            }
            companion.excludeAll(arrayList2);
        } else {
            companion.clearExcluded();
        }
        UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }
}
