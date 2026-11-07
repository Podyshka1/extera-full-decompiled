package com.exteragram.messenger.feed.ui;

import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.util.Consumer;
import com.exteragram.messenger.feed.FeedConfig;
import com.exteragram.messenger.feed.FeedController;
import com.exteragram.messenger.feed.ui.FeedCategoryEditActivity;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.utils.ui.UIUtil;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.EditTextCell;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.SelectAnimatedEmojiDialog;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 L2\u00020\u0001:\u0001LB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\"\u001a\u00020\u0014H\u0016J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020%H\u0014J(\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0003H\u0016J\u0010\u0010,\u001a\u00020'2\u0006\u0010-\u001a\u00020\u0005H\u0002J\u0010\u0010.\u001a\u00020'2\u0006\u0010$\u001a\u00020%H\u0002J\u0018\u0010/\u001a\u00020\u00172\u0006\u0010$\u001a\u00020%2\u0006\u00100\u001a\u00020\u001aH\u0002J\u0010\u00101\u001a\u00020'2\u0006\u00100\u001a\u00020\u001aH\u0002J\b\u00102\u001a\u00020'H\u0002J\b\u00103\u001a\u00020'H\u0002J\u001e\u00104\u001a\u00020'2\f\u00105\u001a\b\u0012\u0004\u0012\u0002060\u00102\u0006\u00107\u001a\u000208H\u0014J0\u00109\u001a\u00020'2\u0006\u0010:\u001a\u0002062\u0006\u0010;\u001a\u00020\u001e2\u0006\u0010<\u001a\u00020\u00032\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020>H\u0014J\u0010\u0010@\u001a\u00020'2\u0006\u0010A\u001a\u00020\u0005H\u0002J\u0010\u0010B\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u0005H\u0016J\u0012\u0010D\u001a\u00020\u00052\b\u0010E\u001a\u0004\u0018\u00010FH\u0016J\b\u0010G\u001a\u00020\u0014H\u0002J\b\u0010H\u001a\u00020\u0005H\u0002J\b\u0010I\u001a\u00020'H\u0002J\b\u0010J\u001a\u00020'H\u0002J\b\u0010K\u001a\u00020'H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\rj\b\u0012\u0004\u0012\u00020\u000b`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006M"}, d2 = {"Lcom/exteragram/messenger/feed/ui/FeedCategoryEditActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "categoryId", _UrlKt.FRAGMENT_ENCODE_SET, "selectOnCreate", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(IZ)V", "initialCategory", "Lcom/exteragram/messenger/feed/FeedConfig$Category;", "emojiId", _UrlKt.FRAGMENT_ENCODE_SET, "selectedChannels", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "channels", "Ljava/util/ArrayList;", "Lorg/telegram/tgnet/TLRPC$Chat;", "channelsLoaded", "query", _UrlKt.FRAGMENT_ENCODE_SET, "searching", "iconCell", "Landroid/widget/FrameLayout;", "iconButton", "iconView", "Lorg/telegram/ui/Components/BackupImageView;", "titleCell", "Lorg/telegram/ui/Cells/EditTextCell;", "otherItem", "Landroid/view/View;", "buttonContainer", "emojiDialog", "Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;", "getTitle", "createView", "context", "Landroid/content/Context;", "onInsets", _UrlKt.FRAGMENT_ENCODE_SET, "left", "top", "right", "bottom", "showSaveButton", "show", "createHeaderViews", "createIconCircle", "imageView", "bindIcon", "openEmojiDialog", "loadChannels", "fillItems", PluginsConstants.Settings.ITEMS, "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "setAllSelected", "selected", "onBackPressed", "invoked", "isSwipeBackEnabled", "event", "Landroid/view/MotionEvent;", "currentTitle", "hasChanges", "showUnsavedDialog", "save", "onFragmentDestroy", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFeedCategoryEditActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedCategoryEditActivity.kt\ncom/exteragram/messenger/feed/ui/FeedCategoryEditActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,425:1\n1915#2,2:426\n1915#2,2:428\n873#2:430\n1807#2,3:431\n874#2:434\n1915#2,2:435\n*S KotlinDebug\n*F\n+ 1 FeedCategoryEditActivity.kt\ncom/exteragram/messenger/feed/ui/FeedCategoryEditActivity\n*L\n318#1:426,2\n352#1:428,2\n408#1:430\n408#1:431,3\n408#1:434\n296#1:435,2\n*E\n"})
public final class FeedCategoryEditActivity extends BasePreferencesActivity {
    private FrameLayout buttonContainer;
    private final ArrayList<TLRPC.Chat> channels;
    private boolean channelsLoaded;
    private SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow emojiDialog;
    private long emojiId;
    private FrameLayout iconButton;
    private FrameLayout iconCell;
    private BackupImageView iconView;
    private final FeedConfig.Category initialCategory;
    private View otherItem;
    private String query;
    private boolean searching;
    private final boolean selectOnCreate;
    private final HashSet<Long> selectedChannels;
    private EditTextCell titleCell;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Comparator<TLRPC.Chat> BY_TITLE = new Comparator() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$$ExternalSyntheticLambda3
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return FeedCategoryEditActivity.m2614$r8$lambda$_BlK7dE1xiiAJwec_PZ8YEM4zA((TLRPC.Chat) obj, (TLRPC.Chat) obj2);
        }
    };

    @JvmStatic
    public static final void showDeleteDialog(BaseFragment baseFragment, FeedConfig.Category category, Runnable runnable) {
        INSTANCE.showDeleteDialog(baseFragment, category, runnable);
    }

    public FeedCategoryEditActivity(int i, boolean z) {
        Set<Long> channels;
        this.selectOnCreate = z;
        FeedConfig.Category category = FeedConfig.INSTANCE.getInstance(this.currentAccount).getCategory(i);
        this.initialCategory = category;
        this.emojiId = category != null ? category.getEmojiId() : 0L;
        this.selectedChannels = new HashSet<>((category == null || (channels = category.getChannels()) == null) ? SetsKt.emptySet() : channels);
        this.channels = new ArrayList<>();
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\b\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/exteragram/messenger/feed/ui/FeedCategoryEditActivity$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "MAX_TITLE_LENGTH", _UrlKt.FRAGMENT_ENCODE_SET, "MENU_OTHER", "MENU_SELECT_ALL", "MENU_DESELECT_ALL", "MENU_DELETE", "BUTTON_AREA_DP", _UrlKt.FRAGMENT_ENCODE_SET, "BY_TITLE", "Ljava/util/Comparator;", "Lorg/telegram/tgnet/TLRPC$Chat;", "Lkotlin/Comparator;", "showDeleteDialog", _UrlKt.FRAGMENT_ENCODE_SET, "fragment", "Lorg/telegram/ui/ActionBar/BaseFragment;", "category", "Lcom/exteragram/messenger/feed/FeedConfig$Category;", "onDeleted", "Ljava/lang/Runnable;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final void showDeleteDialog(BaseFragment fragment, final FeedConfig.Category category, final Runnable onDeleted) {
            Activity parentActivity = fragment.getParentActivity();
            if (parentActivity == null) {
                return;
            }
            final int currentAccount = fragment.getCurrentAccount();
            AlertDialog.Builder builder = new AlertDialog.Builder(parentActivity, fragment.getResourceProvider());
            builder.setTitle(LocaleController.getString(C2807R.string.FeedCategoryDelete));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.FeedCategoryDeleteConfirm, category.getTitle())));
            builder.setPositiveButton(LocaleController.getString(C2807R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$Companion$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    FeedCategoryEditActivity.Companion.$r8$lambda$jxX4bEl80yxv2DRlGyPbtEMWUJc(currentAccount, category, onDeleted, alertDialog, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null);
            AlertDialog alertDialogCreate = builder.create();
            fragment.showDialog(alertDialogCreate);
            View button = alertDialogCreate.getButton(-1);
            TextView textView = button instanceof TextView ? (TextView) button : null;
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold, fragment.getResourceProvider()));
            }
        }

        public static void $r8$lambda$jxX4bEl80yxv2DRlGyPbtEMWUJc(int i, FeedConfig.Category category, Runnable runnable, AlertDialog alertDialog, int i2) {
            FeedConfig.INSTANCE.getInstance(i).deleteCategory(category.getId());
            FeedController.getInstance(i).notifyCategoriesChanged();
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$_BlK7dE1xiiAJwec_PZ-8YEM4zA, reason: not valid java name */
    public static int m2614$r8$lambda$_BlK7dE1xiiAJwec_PZ8YEM4zA(TLRPC.Chat chat, TLRPC.Chat chat2) {
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
        return LocaleController.getString(this.initialCategory != null ? C2807R.string.FeedCategoryEdit : C2807R.string.FeedCategoryNew);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        createHeaderViews(context);
        View viewCreateView = super.createView(context);
        this.actionBar.setActionBarMenuOnItemClick(new C13531());
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        ActionBarMenuItem actionBarMenuItemSearchListener = actionBarMenuCreateMenu.addItem(0, C2807R.drawable.outline_header_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$createView$searchItem$1
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                this.this$0.searching = true;
                View view = this.this$0.otherItem;
                if (view != null) {
                    view.setVisibility(8);
                }
                this.this$0.showSaveButton(false);
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                this.this$0.searching = false;
                View view = this.this$0.otherItem;
                if (view != null) {
                    view.setVisibility(0);
                }
                this.this$0.showSaveButton(true);
                this.this$0.query = null;
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
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString(C2807R.string.Search));
        ActionBarMenuItem actionBarMenuItemAddItem = actionBarMenuCreateMenu.addItem(2, C2807R.drawable.ic_ab_other);
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2807R.string.AccDescrMoreOptions));
        actionBarMenuItemAddItem.addSubItem(3, C2807R.drawable.msg_select, LocaleController.getString(C2807R.string.SelectAll));
        actionBarMenuItemAddItem.addSubItem(4, C2807R.drawable.msg_cancel, LocaleController.getString(C2807R.string.DeselectAll));
        if (this.initialCategory != null) {
            actionBarMenuItemAddItem.addColoredGap();
            ActionBarMenuSubItem actionBarMenuSubItemAddSubItem = actionBarMenuItemAddItem.addSubItem(5, C2807R.drawable.msg_delete, LocaleController.getString(C2807R.string.FeedCategoryDelete));
            int i = Theme.key_text_RedRegular;
            actionBarMenuSubItemAddSubItem.setColors(getThemedColor(i), getThemedColor(i));
            actionBarMenuSubItemAddSubItem.setSelectorColor(Theme.multAlpha(getThemedColor(i), 0.12f));
        }
        this.otherItem = actionBarMenuItemAddItem;
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, true, this.resourceProvider);
        buttonWithCounterView.setRound();
        buttonWithCounterView.setText(LocaleController.getString(this.initialCategory != null ? C2807R.string.Save : C2807R.string.Create), false);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.save();
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackground(UIUtil.createBottomFade(getThemedColor(Theme.key_windowBackgroundGray)));
        frameLayout.addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 48.0f, 80, 16.0f, 12.0f, 16.0f, 12.0f));
        this.buttonContainer = frameLayout;
        ((FrameLayout) viewCreateView).addView(frameLayout, LayoutHelper.createFrame(-1, -2, 80));
        getListView$TMessagesProj().setPadding(0, getListView$TMessagesProj().getPaddingTop(), 0, AndroidUtilities.dp(72.0f));
        loadChannels();
        return viewCreateView;
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$createView$1 */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"com/exteragram/messenger/feed/ui/FeedCategoryEditActivity$createView$1", "Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;", "onItemClick", _UrlKt.FRAGMENT_ENCODE_SET, "id", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nFeedCategoryEditActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedCategoryEditActivity.kt\ncom/exteragram/messenger/feed/ui/FeedCategoryEditActivity$createView$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,425:1\n1#2:426\n*E\n"})
    public static final class C13531 extends ActionBar.ActionBarMenuOnItemClick {
        public C13531() {
        }

        @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int id) {
            FeedConfig.Category category;
            if (id == -1) {
                if (FeedCategoryEditActivity.this.onBackPressed(true)) {
                    FeedCategoryEditActivity.this.finishFragment();
                }
            } else {
                if (id == 3) {
                    FeedCategoryEditActivity.this.setAllSelected(true);
                    return;
                }
                if (id == 4) {
                    FeedCategoryEditActivity.this.setAllSelected(false);
                } else if (id == 5 && (category = FeedCategoryEditActivity.this.initialCategory) != null) {
                    final FeedCategoryEditActivity feedCategoryEditActivity = FeedCategoryEditActivity.this;
                    FeedCategoryEditActivity.INSTANCE.showDeleteDialog(feedCategoryEditActivity, category, new Runnable() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$createView$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            feedCategoryEditActivity.finishFragment();
                        }
                    });
                }
            }
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int left, int top, int right, int bottom) {
        super.onInsets(left, top, right, bottom);
        FrameLayout frameLayout = this.buttonContainer;
        if (frameLayout != null) {
            frameLayout.setPadding(0, 0, 0, bottom);
        }
        getListView$TMessagesProj().setPadding(0, getListView$TMessagesProj().getPaddingTop(), 0, bottom + AndroidUtilities.dp(72.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showSaveButton(final boolean show) {
        final FrameLayout frameLayout = this.buttonContainer;
        if (frameLayout == null) {
            return;
        }
        frameLayout.animate().cancel();
        if (show) {
            frameLayout.setVisibility(0);
        }
        frameLayout.animate().alpha(show ? 1.0f : 0.0f).translationY(show ? 0.0f : AndroidUtilities.dp(24.0f)).setDuration(220L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).withEndAction(new Runnable() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                FeedCategoryEditActivity.m2613$r8$lambda$NUK_Dhbf5se7H6X9hxgVe0fKBM(show, frameLayout);
            }
        }).start();
    }

    /* JADX INFO: renamed from: $r8$lambda$NUK_Dhbf5se7H6X9hxgVe-0fKBM, reason: not valid java name */
    public static void m2613$r8$lambda$NUK_Dhbf5se7H6X9hxgVe0fKBM(boolean z, FrameLayout frameLayout) {
        if (z) {
            return;
        }
        frameLayout.setVisibility(8);
    }

    private final void createHeaderViews(Context context) {
        String title;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setPadding(0, AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f));
        this.iconCell = frameLayout;
        BackupImageView backupImageView = new BackupImageView(context);
        this.iconView = backupImageView;
        FrameLayout frameLayoutCreateIconCircle = createIconCircle(context, backupImageView);
        frameLayoutCreateIconCircle.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.openEmojiDialog();
            }
        });
        this.iconButton = frameLayoutCreateIconCircle;
        ScaleStateListAnimator.apply(frameLayoutCreateIconCircle);
        FrameLayout frameLayout2 = this.iconCell;
        if (frameLayout2 == null) {
            frameLayout2 = null;
        }
        FrameLayout frameLayout3 = this.iconButton;
        if (frameLayout3 == null) {
            frameLayout3 = null;
        }
        frameLayout2.addView(frameLayout3, LayoutHelper.createFrame(100, 100, 17));
        BackupImageView backupImageView2 = this.iconView;
        bindIcon(backupImageView2 != null ? backupImageView2 : null);
        EditTextCell editTextCell = new EditTextCell(context, LocaleController.getString(C2807R.string.FeedCategoryName), false, false, 24, this.resourceProvider);
        editTextCell.editText.setInputType(16385);
        editTextCell.editText.setImeOptions(268435462);
        editTextCell.hideKeyboardOnEnter();
        FeedConfig.Category category = this.initialCategory;
        if (category == null || (title = category.getTitle()) == null) {
            title = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        editTextCell.setText(title);
        this.titleCell = editTextCell;
    }

    private final FrameLayout createIconCircle(Context context, BackupImageView imageView) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(100.0f), getThemedColor(Theme.key_windowBackgroundWhite)));
        frameLayout.addView(imageView, LayoutHelper.createFrame(64, 64, 17));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void bindIcon(final BackupImageView imageView) {
        if (this.emojiId == 0) {
            imageView.setAnimatedEmojiDrawable(null);
            imageView.setImageResource(C2807R.drawable.menu_smile_add);
            imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_dialogEmptyImage), PorterDuff.Mode.SRC_IN));
            IconManager.INSTANCE.requestDrawableForSize(C2807R.drawable.menu_smile_add, AndroidUtilities.dp(64.0f), new Utilities.Callback() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    FeedCategoryEditActivity.$r8$lambda$b1fNRCjNXPgCGS56s7IdqItX7no(this.f$0, imageView, (Drawable) obj);
                }
            });
            return;
        }
        imageView.setAnimatedEmojiDrawable(new AnimatedEmojiDrawable(4, this.currentAccount, this.emojiId));
        imageView.setColorFilter(null);
        imageView.setEmojiColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundWhiteBlackText), PorterDuff.Mode.SRC_IN));
    }

    public static void $r8$lambda$b1fNRCjNXPgCGS56s7IdqItX7no(FeedCategoryEditActivity feedCategoryEditActivity, BackupImageView backupImageView, Drawable drawable) {
        if (feedCategoryEditActivity.emojiId == 0) {
            backupImageView.setImageDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [android.view.View, com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$openEmojiDialog$layout$1, org.telegram.ui.SelectAnimatedEmojiDialog] */
    public final void openEmojiDialog() {
        if (this.emojiDialog == null) {
            FrameLayout frameLayout = this.iconButton;
            if (frameLayout == null) {
                frameLayout = null;
            }
            if (frameLayout.isAttachedToWindow()) {
                EditTextCell editTextCell = this.titleCell;
                if (editTextCell == null) {
                    editTextCell = null;
                }
                AndroidUtilities.hideKeyboard(editTextCell.editText);
                EditTextCell editTextCell2 = this.titleCell;
                if (editTextCell2 == null) {
                    editTextCell2 = null;
                }
                editTextCell2.editText.clearFocus();
                FrameLayout frameLayout2 = this.iconButton;
                if (frameLayout2 == null) {
                    frameLayout2 = null;
                }
                final Context context = frameLayout2.getContext();
                final SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[1];
                final BackupImageView backupImageView = new BackupImageView(context);
                FrameLayout frameLayoutCreateIconCircle = createIconCircle(context, backupImageView);
                frameLayoutCreateIconCircle.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$$ExternalSyntheticLambda8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        FeedCategoryEditActivity.m2612$r8$lambda$MPG8yAzCdY6D3FHi7x5aQzcr6o(selectAnimatedEmojiDialogWindowArr, view);
                    }
                });
                bindIcon(backupImageView);
                final Theme.ResourcesProvider resourcesProvider = this.resourceProvider;
                ?? r0 = new SelectAnimatedEmojiDialog(context, resourcesProvider) { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$openEmojiDialog$layout$1
                    @Override // org.telegram.ui.SelectAnimatedEmojiDialog
                    public boolean isBottom() {
                        return false;
                    }

                    @Override // org.telegram.ui.SelectAnimatedEmojiDialog
                    public void onEmojiSelected(View view, Long documentId, TLRPC.Document document, TL_stars.TL_starGiftUnique gift, Integer until) {
                        this.this$0.emojiId = documentId != null ? documentId.longValue() : 0L;
                        FeedCategoryEditActivity feedCategoryEditActivity = this.this$0;
                        BackupImageView backupImageView2 = feedCategoryEditActivity.iconView;
                        if (backupImageView2 == null) {
                            backupImageView2 = null;
                        }
                        feedCategoryEditActivity.bindIcon(backupImageView2);
                        this.this$0.bindIcon(backupImageView);
                        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = selectAnimatedEmojiDialogWindowArr[0];
                        if (selectAnimatedEmojiDialogWindow != null) {
                            selectAnimatedEmojiDialogWindow.dismiss();
                        }
                    }
                };
                long j = this.emojiId;
                r0.setSelected(j != 0 ? Long.valueOf(j) : null);
                FrameLayout frameLayout3 = new FrameLayout(context);
                frameLayout3.addView(frameLayoutCreateIconCircle, LayoutHelper.createFrame(100, 100, 49));
                frameLayout3.addView((View) r0, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 108.0f, 0.0f, 0.0f));
                C13551 c13551 = new C13551(frameLayout3, this, r0);
                selectAnimatedEmojiDialogWindowArr[0] = c13551;
                this.emojiDialog = c13551;
                int iMin = Math.min(AndroidUtilities.dp(324.0f), (int) (AndroidUtilities.displaySize.x * 0.95f));
                int[] iArr = new int[2];
                FrameLayout frameLayout4 = this.iconButton;
                if (frameLayout4 == null) {
                    frameLayout4 = null;
                }
                frameLayout4.getLocationInWindow(iArr);
                SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = selectAnimatedEmojiDialogWindowArr[0];
                if (selectAnimatedEmojiDialogWindow != null) {
                    FrameLayout frameLayout5 = this.iconButton;
                    selectAnimatedEmojiDialogWindow.showAtLocation(frameLayout5 == null ? null : frameLayout5, 51, iArr[0] + (((frameLayout5 != null ? frameLayout5 : null).getWidth() - iMin) / 2), iArr[1]);
                }
                SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow2 = selectAnimatedEmojiDialogWindowArr[0];
                if (selectAnimatedEmojiDialogWindow2 != null) {
                    selectAnimatedEmojiDialogWindow2.dimBehind();
                }
                r0.onShow(new Runnable() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        FeedCategoryEditActivity.$r8$lambda$bLoovqhj9HJEiLCQqnCur8hSTs0(selectAnimatedEmojiDialogWindowArr);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$MPG8yAzCd-Y6D3FHi7x5aQzcr6o, reason: not valid java name */
    public static void m2612$r8$lambda$MPG8yAzCdY6D3FHi7x5aQzcr6o(SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr, View view) {
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = selectAnimatedEmojiDialogWindowArr[0];
        if (selectAnimatedEmojiDialogWindow != null) {
            selectAnimatedEmojiDialogWindow.dismiss();
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$openEmojiDialog$1 */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"com/exteragram/messenger/feed/ui/FeedCategoryEditActivity$openEmojiDialog$1", "Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;", "dismissing", _UrlKt.FRAGMENT_ENCODE_SET, "dismiss", _UrlKt.FRAGMENT_ENCODE_SET, "dismissWindow", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class C13551 extends SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow {
        final /* synthetic */ FeedCategoryEditActivity$openEmojiDialog$layout$1 $layout;
        private boolean dismissing;
        final /* synthetic */ FeedCategoryEditActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13551(FrameLayout frameLayout, FeedCategoryEditActivity feedCategoryEditActivity, FeedCategoryEditActivity$openEmojiDialog$layout$1 feedCategoryEditActivity$openEmojiDialog$layout$1) {
            super(frameLayout, -2, -2);
            this.this$0 = feedCategoryEditActivity;
            this.$layout = feedCategoryEditActivity$openEmojiDialog$layout$1;
        }

        @Override // org.telegram.ui.SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow, android.widget.PopupWindow
        public void dismiss() {
            if (this.dismissing) {
                return;
            }
            this.dismissing = true;
            this.this$0.emojiDialog = null;
            onDismiss(new Runnable() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$openEmojiDialog$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.dismissWindow();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void dismissWindow() {
            super.dismiss();
        }
    }

    public static void $r8$lambda$bLoovqhj9HJEiLCQqnCur8hSTs0(SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr) {
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = selectAnimatedEmojiDialogWindowArr[0];
        if (selectAnimatedEmojiDialogWindow != null) {
            selectAnimatedEmojiDialogWindow.dismiss();
        }
    }

    private final void loadChannels() {
        FeedController.getInstance(this.currentAccount).loadChannels(true, new FeedController.ChannelsCallback() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$$ExternalSyntheticLambda7
            @Override // com.exteragram.messenger.feed.FeedController.ChannelsCallback
            public final void onChannels(ArrayList arrayList, int i, boolean z, FeedConfig.Snapshot snapshot) {
                FeedCategoryEditActivity.m2616$r8$lambda$x_fKol4Njw9DWO5Xju9LFc3V0I(this.f$0, arrayList, i, z, snapshot);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$x_fKol4Njw9DWO5Xju9LFc-3V0I, reason: not valid java name */
    public static void m2616$r8$lambda$x_fKol4Njw9DWO5Xju9LFc3V0I(FeedCategoryEditActivity feedCategoryEditActivity, ArrayList arrayList, int i, boolean z, FeedConfig.Snapshot snapshot) {
        final Set<Long> setEmptySet;
        if (z) {
            return;
        }
        feedCategoryEditActivity.channels.clear();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            TLRPC.Chat chat = (TLRPC.Chat) obj;
            ArrayList<TLRPC.Chat> arrayList2 = feedCategoryEditActivity.channels;
            TLRPC.Chat chat2 = feedCategoryEditActivity.getMessagesController().getChat(Long.valueOf(chat.id));
            if (chat2 != null) {
                chat = chat2;
            }
            arrayList2.add(chat);
        }
        FeedConfig.Category category = feedCategoryEditActivity.initialCategory;
        if (category == null || (setEmptySet = category.getChannels()) == null) {
            setEmptySet = SetsKt.emptySet();
        }
        CollectionsKt.sortWith(feedCategoryEditActivity.channels, ComparisonsKt.then(new Comparator() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$loadChannels$lambda$18$$inlined$compareByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Boolean.valueOf(setEmptySet.contains(Long.valueOf(-((TLRPC.Chat) t2).id))), Boolean.valueOf(setEmptySet.contains(Long.valueOf(-((TLRPC.Chat) t).id))));
            }
        }, BY_TITLE));
        feedCategoryEditActivity.channelsLoaded = true;
        UniversalAdapter universalAdapter = feedCategoryEditActivity.getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        int i;
        String str;
        FeedConfig companion = FeedConfig.INSTANCE.getInstance(this.currentAccount);
        String str2 = this.query;
        boolean zIsEmpty = TextUtils.isEmpty(str2);
        if (zIsEmpty) {
            FrameLayout frameLayout = this.iconCell;
            if (frameLayout == null) {
                frameLayout = null;
            }
            items.add(UItem.asCustomShadow(frameLayout));
            EditTextCell editTextCell = this.titleCell;
            if (editTextCell == null) {
                editTextCell = null;
            }
            items.add(UItem.asCustom(editTextCell));
            items.add(UItem.asShadow());
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList<TLRPC.Chat> arrayList3 = this.channels;
        int size = arrayList3.size();
        boolean z = false;
        int i2 = 0;
        while (i2 < size) {
            TLRPC.Chat chat = arrayList3.get(i2);
            int i3 = i2 + 1;
            TLRPC.Chat chat2 = chat;
            if (zIsEmpty || ((str = chat2.title) != null && StringsKt.contains$default(str.toLowerCase(Locale.getDefault()), str2, z, 2, (Object) null))) {
                i = i3;
                (companion.isExcluded(-chat2.id) ? arrayList2 : arrayList).add(UItem.asUserCheckbox(Long.hashCode(chat2.id), chat2).setChecked(this.selectedChannels.contains(Long.valueOf(-chat2.id))));
            } else {
                i = i3;
            }
            i2 = i;
            z = false;
        }
        if (!arrayList.isEmpty()) {
            items.add(UItem.asHeader(LocaleController.getString(C2807R.string.FeedChannels)));
            items.addAll(arrayList);
        }
        if (!arrayList2.isEmpty()) {
            if (!arrayList.isEmpty()) {
                items.add(UItem.asShadow());
            }
            items.add(UItem.asHeader(LocaleController.getString(C2807R.string.FeedHiddenFromAll)));
            items.addAll(arrayList2);
        }
        if (zIsEmpty) {
            if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                return;
            }
            items.add(UItem.asShadow(LocaleController.getString(C2807R.string.FeedCategoryChannelsInfo)));
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        Object obj = item.object;
        final TLRPC.Chat chat = obj instanceof TLRPC.Chat ? (TLRPC.Chat) obj : null;
        if (chat != null) {
            toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$$ExternalSyntheticLambda6
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj2) {
                    FeedCategoryEditActivity.m2615$r8$lambda$nokpzdRrUfMusiFOhZZlnGqG9Q(this.f$0, chat, ((Boolean) obj2).booleanValue());
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$nokpzdRrUfMusiFOhZ-ZlnGqG9Q, reason: not valid java name */
    public static void m2615$r8$lambda$nokpzdRrUfMusiFOhZZlnGqG9Q(FeedCategoryEditActivity feedCategoryEditActivity, TLRPC.Chat chat, boolean z) {
        HashSet<Long> hashSet = feedCategoryEditActivity.selectedChannels;
        if (z) {
            hashSet.add(Long.valueOf(-chat.id));
        } else {
            hashSet.remove(Long.valueOf(-chat.id));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setAllSelected(boolean selected) {
        if (selected) {
            ArrayList<TLRPC.Chat> arrayList = this.channels;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TLRPC.Chat chat = arrayList.get(i);
                i++;
                this.selectedChannels.add(Long.valueOf(-chat.id));
            }
        } else {
            this.selectedChannels.clear();
        }
        UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean invoked) {
        if (this.searching) {
            if (invoked) {
                this.actionBar.closeSearchField();
            }
            return false;
        }
        if (!hasChanges()) {
            return super.onBackPressed(invoked);
        }
        if (invoked) {
            showUnsavedDialog();
        }
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent event) {
        return !hasChanges() && super.isSwipeBackEnabled(event);
    }

    private final String currentTitle() {
        String string;
        String string2;
        EditTextCell editTextCell = this.titleCell;
        if (editTextCell == null) {
            editTextCell = null;
        }
        CharSequence text = editTextCell.getText();
        return (text == null || (string = text.toString()) == null || (string2 = StringsKt.trim((CharSequence) string).toString()) == null) ? _UrlKt.FRAGMENT_ENCODE_SET : string2;
    }

    private final boolean hasChanges() {
        FeedConfig.Category category = this.initialCategory;
        return category == null ? (currentTitle().length() <= 0 && this.emojiId == 0 && this.selectedChannels.isEmpty()) ? false : true : (Intrinsics.areEqual(currentTitle(), category.getTitle()) && this.emojiId == category.getEmojiId() && Intrinsics.areEqual(this.selectedChannels, category.getChannels())) ? false : true;
    }

    private final void showUnsavedDialog() {
        Activity parentActivity = getParentActivity();
        if (parentActivity == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(parentActivity, this.resourceProvider);
        builder.setTitle(LocaleController.getString(C2807R.string.UnsavedChanges));
        builder.setMessage(LocaleController.getString(C2807R.string.FeedCategoryUnsavedChanges));
        builder.setPositiveButton(LocaleController.getString(C2807R.string.Save), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.save();
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2807R.string.PassportDiscard), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryEditActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.finishFragment();
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void save() {
        HashSet hashSet;
        String strCurrentTitle = currentTitle();
        if (strCurrentTitle.length() == 0) {
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            EditTextCell editTextCell = this.titleCell;
            if (editTextCell == null) {
                editTextCell = null;
            }
            AndroidUtilities.shakeViewSpring(editTextCell);
            EditTextCell editTextCell2 = this.titleCell;
            if (editTextCell2 == null) {
                editTextCell2 = null;
            }
            editTextCell2.editText.requestFocus();
            EditTextCell editTextCell3 = this.titleCell;
            AndroidUtilities.showKeyboard((editTextCell3 != null ? editTextCell3 : null).editText);
            return;
        }
        boolean z = this.channelsLoaded;
        HashSet<Long> hashSet2 = this.selectedChannels;
        if (z) {
            HashSet hashSet3 = new HashSet();
            for (Object obj : hashSet2) {
                long jLongValue = ((Number) obj).longValue();
                ArrayList<TLRPC.Chat> arrayList = this.channels;
                if (arrayList == null || !arrayList.isEmpty()) {
                    int size = arrayList.size();
                    int i = 0;
                    while (true) {
                        if (i < size) {
                            TLRPC.Chat chat = arrayList.get(i);
                            i++;
                            if ((-chat.id) == jLongValue) {
                                hashSet3.add(obj);
                                break;
                            }
                        }
                    }
                }
            }
            hashSet = hashSet3;
        } else {
            hashSet = hashSet2;
        }
        FeedController feedController = FeedController.getInstance(this.currentAccount);
        FeedConfig companion = FeedConfig.INSTANCE.getInstance(this.currentAccount);
        FeedConfig.Category category = this.initialCategory;
        FeedConfig.Category categorySaveCategory = companion.saveCategory(category != null ? category.getId() : 0, strCurrentTitle, this.emojiId, hashSet);
        if (this.initialCategory != null || !this.selectOnCreate || !feedController.selectCategory(categorySaveCategory.getId())) {
            feedController.notifyCategoriesChanged();
        }
        finishFragment();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = this.emojiDialog;
        if (selectAnimatedEmojiDialogWindow != null) {
            selectAnimatedEmojiDialogWindow.dismiss();
        }
        super.onFragmentDestroy();
    }
}
