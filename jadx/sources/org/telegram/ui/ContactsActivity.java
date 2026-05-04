package org.telegram.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Keep;
import androidx.collection.LongSparseArray;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import j$.util.Objects;
import java.util.ArrayList;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SecretChatHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.SearchTextWatcher;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Adapters.ContactsAdapter;
import org.telegram.ui.Adapters.SearchAdapter;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.LetterSectionCell;
import org.telegram.ui.Cells.ProfileSearchCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.UserCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ContactsEmptyView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.EmojiView$$ExternalSyntheticLambda13;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.FragmentFloatingButton;
import org.telegram.ui.Components.FragmentSearchField;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.NumberTextView;
import org.telegram.ui.Components.RecyclerAnimationScrollHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.StickerEmptyView;
import org.telegram.ui.Components.blur3.DownscaleScrollableNoiseSuppressor;
import org.telegram.ui.Components.blur3.ViewGroupPartRenderer;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceRenderNode;
import org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider;
import org.telegram.ui.MainTabsActivity;

/* JADX INFO: loaded from: classes6.dex */
public class ContactsActivity extends BaseFragment implements FactorAnimator.Target, NotificationCenter.NotificationCenterDelegate, MainTabsActivity.TabFragmentDelegate, WindowAnimatedInsetsProvider.Listener {
    private final int ADDITIONAL_LIST_HEIGHT_DP;
    private ImageView actionModeCloseView;
    private int additionFloatingButtonOffset;
    private int additionNavigationBarHeight;
    private float additionalFloatingTranslation;
    private boolean allowBots;
    private boolean allowSelf;
    private boolean allowUsernameSearch;
    private final BoolAnimator animatorSearchFieldVisible;
    private final BoolAnimator animatorSearchHasQuery;
    private boolean askAboutContacts;
    private BackDrawable backDrawable;
    private long channelId;
    private long chatId;
    private boolean checkPermission;
    private SizeNotifierFrameLayout contentView;
    private boolean createSecretChat;
    private boolean creatingChat;
    private ContactsActivityDelegate delegate;
    private boolean destroyAfterSelect;
    private boolean disableSections;
    private StickerEmptyView emptyView;
    private FragmentFloatingButton floatingButton;
    private boolean floatingButtonVisibleByScroll;
    public boolean hasMainTabs;
    private HeaderShadowView headerShadowView;
    private IBlur3Capture iBlur3Capture;
    private boolean iBlur3Invalidated;
    private final RectF iBlur3PositionActionBar;
    private final RectF iBlur3PositionMainTabs;
    private final ArrayList iBlur3Positions;
    private final BlurredBackgroundSourceRenderNode iBlur3SourceGlass;
    private final BlurredBackgroundSourceRenderNode iBlur3SourceGlassFrosted;
    private LongSparseArray ignoreUsers;
    private int imeInsetAnimatedHeight;
    private String initialSearchString;
    private boolean lastIsEmpty;
    private LinearLayoutManager layoutManager;
    private RecyclerListView listView;
    private ContactsAdapter listViewAdapter;
    private MainTabsActivityController mainTabsActivityController;
    private int navigationBarHeight;
    private boolean needFinishFragment;
    private boolean needForwardCount;
    private boolean needPhonebook;
    private boolean onlyUsers;
    private ActionBarMenuItem otherItem;
    private AlertDialog permissionDialog;
    private long permissionRequestTime;

    @Keep
    public int phonebookRow;
    private boolean resetDelegate;
    private boolean returnAsResult;
    boolean scheduled;
    private RecyclerAnimationScrollHelper scrollHelper;
    private final DownscaleScrollableNoiseSuppressor scrollableViewNoiseSuppressor;
    private FragmentSearchField searchField;
    private ActionBarMenuItem searchItem;
    private SearchAdapter searchListViewAdapter;
    private String searchQuery;
    private boolean searchWas;
    private boolean searching;
    private String selectAlertString;
    private final LongSparseArray selectedContacts;
    private NumberTextView selectedContactsCountTextView;
    private boolean sortByName;
    Runnable sortContactsRunnable;
    private ActionBarMenuItem sortItem;

    public interface ContactsActivityDelegate {
        void didSelectContact(TLRPC.User user, String str, ContactsActivity contactsActivity);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider.Listener
    public /* synthetic */ void onAnimatedInsetsFinished() {
        WindowAnimatedInsetsProvider.Listener.CC.$default$onAnimatedInsetsFinished(this);
    }

    @Override // org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider.Listener
    public /* synthetic */ void onAnimatedInsetsStarted() {
        WindowAnimatedInsetsProvider.Listener.CC.$default$onAnimatedInsetsStarted(this);
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
    }

    public ContactsActivity(Bundle bundle) {
        super(bundle);
        int i = Build.VERSION.SDK_INT;
        this.ADDITIONAL_LIST_HEIGHT_DP = i >= 31 ? 48 : 0;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.animatorSearchFieldVisible = new BoolAnimator(0, this, cubicBezierInterpolator, 350L);
        this.animatorSearchHasQuery = new BoolAnimator(2, this, cubicBezierInterpolator, 350L);
        this.phonebookRow = 0;
        this.floatingButtonVisibleByScroll = true;
        this.allowSelf = true;
        this.allowBots = true;
        this.needForwardCount = true;
        this.needFinishFragment = true;
        this.resetDelegate = true;
        this.selectAlertString = null;
        this.allowUsernameSearch = true;
        this.askAboutContacts = true;
        this.selectedContacts = new LongSparseArray();
        this.checkPermission = true;
        this.sortContactsRunnable = new Runnable() { // from class: org.telegram.ui.ContactsActivity.9
            @Override // java.lang.Runnable
            public void run() {
                ContactsActivity.this.listViewAdapter.sortOnlineContacts();
                ContactsActivity.this.scheduled = false;
            }
        };
        ArrayList arrayList = new ArrayList();
        this.iBlur3Positions = arrayList;
        RectF rectF = new RectF();
        this.iBlur3PositionActionBar = rectF;
        RectF rectF2 = new RectF();
        this.iBlur3PositionMainTabs = rectF2;
        arrayList.add(rectF);
        arrayList.add(rectF2);
        if (i >= 31) {
            this.scrollableViewNoiseSuppressor = new DownscaleScrollableNoiseSuppressor();
            this.iBlur3SourceGlassFrosted = new BlurredBackgroundSourceRenderNode(null);
            this.iBlur3SourceGlass = new BlurredBackgroundSourceRenderNode(null);
        } else {
            this.scrollableViewNoiseSuppressor = null;
            this.iBlur3SourceGlassFrosted = null;
            this.iBlur3SourceGlass = null;
        }
    }

    public void setMainTabsActivityController(MainTabsActivityController mainTabsActivityController) {
        this.mainTabsActivityController = mainTabsActivityController;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.contactsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.updateInterfaces);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.encryptedChatCreated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.closeChats);
        this.checkPermission = UserConfig.getInstance(this.currentAccount).syncContacts;
        Bundle bundle = this.arguments;
        int iDp = 0;
        if (bundle != null) {
            this.onlyUsers = bundle.getBoolean("onlyUsers", false);
            this.destroyAfterSelect = this.arguments.getBoolean("destroyAfterSelect", false);
            this.returnAsResult = this.arguments.getBoolean("returnAsResult", false);
            this.createSecretChat = this.arguments.getBoolean("createSecretChat", false);
            this.selectAlertString = this.arguments.getString("selectAlertString");
            this.allowUsernameSearch = this.arguments.getBoolean("allowUsernameSearch", true);
            this.needForwardCount = this.arguments.getBoolean("needForwardCount", true);
            this.allowBots = this.arguments.getBoolean("allowBots", true);
            this.allowSelf = this.arguments.getBoolean("allowSelf", true);
            this.channelId = this.arguments.getLong("channelId", 0L);
            this.needFinishFragment = this.arguments.getBoolean("needFinishFragment", true);
            this.chatId = this.arguments.getLong("chat_id", 0L);
            this.disableSections = this.arguments.getBoolean("disableSections", false);
            this.resetDelegate = this.arguments.getBoolean("resetDelegate", false);
            this.needPhonebook = this.arguments.getBoolean("needPhonebook", false);
            this.hasMainTabs = this.arguments.getBoolean("hasMainTabs", false);
        } else {
            this.needPhonebook = true;
        }
        if (!this.createSecretChat && !this.returnAsResult) {
            this.sortByName = SharedConfig.sortContactsByName;
        }
        getContactsController().checkInviteText();
        getContactsController().reloadContactsStatusesMaybe(false);
        this.additionNavigationBarHeight = (!this.hasMainTabs || ExteraConfig.BottomNavigationBar.hidden() || ExteraConfig.BottomNavigationBar.floating()) ? 0 : AndroidUtilities.dp(72.0f);
        if (this.hasMainTabs && ExteraConfig.BottomNavigationBar.visible()) {
            iDp = AndroidUtilities.dp(64.0f);
        }
        this.additionFloatingButtonOffset = iDp;
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.contactsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.updateInterfaces);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.encryptedChatCreated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.closeChats);
        this.delegate = null;
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            recyclerListView.setAdapter(null);
            this.listView = null;
        }
        Bulletin.removeDelegate(this);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationProgress(boolean z, float f) {
        super.onTransitionAnimationProgress(z, f);
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:61:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0425  */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v79 */
    /* JADX WARN: Type inference failed for: r0v95 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [int] */
    /* JADX WARN: Type inference failed for: r8v5 */
    @Override // org.telegram.ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View createView(Context context) {
        final ?? r8;
        ?? CanUserDoAdminAction;
        String str;
        LaunchActivity launchActivity;
        this.additionNavigationBarHeight = (!this.hasMainTabs || ExteraConfig.BottomNavigationBar.hidden() || ExteraConfig.BottomNavigationBar.floating()) ? 0 : AndroidUtilities.dp(72.0f);
        this.additionFloatingButtonOffset = (this.hasMainTabs && ExteraConfig.BottomNavigationBar.visible()) ? AndroidUtilities.dp(64.0f) : 0;
        this.searching = false;
        this.searchWas = false;
        this.actionBar.setAllowOverlayTitle(true);
        if (this.destroyAfterSelect) {
            if (this.returnAsResult) {
                this.actionBar.setTitle(LocaleController.getString(C2484R.string.SelectContact));
            } else {
                this.actionBar.setTitle(LocaleController.getString(this.createSecretChat ? C2484R.string.NewSecretChat : C2484R.string.NewMessageTitle));
            }
        } else {
            this.actionBar.setTitle(LocaleController.getString(C2484R.string.Contacts));
        }
        BackDrawable backDrawable = new BackDrawable(false);
        this.backDrawable = backDrawable;
        if (!this.hasMainTabs) {
            this.actionBar.setBackButtonDrawable(backDrawable);
        }
        FragmentSearchField fragmentSearchField = new FragmentSearchField(context, this.resourceProvider);
        this.searchField = fragmentSearchField;
        fragmentSearchField.setSectionBackground();
        this.searchField.setPivotY(0.0f);
        ActionBarMenu actionBarMenuCreateActionMode = this.actionBar.createActionMode(false, null);
        actionBarMenuCreateActionMode.setBackgroundColor(0);
        if (this.hasMainTabs) {
            ImageView imageView = new ImageView(context);
            this.actionModeCloseView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.actionModeCloseView.setImageDrawable(new BackDrawable(true));
            this.actionModeCloseView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_actionBarActionModeDefaultIcon), PorterDuff.Mode.MULTIPLY));
            this.actionModeCloseView.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_actionBarActionModeDefaultSelector)));
            this.actionModeCloseView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$0(view);
                }
            });
            actionBarMenuCreateActionMode.addView(this.actionModeCloseView, LayoutHelper.createLinear(54, 54, 16));
        }
        NumberTextView numberTextView = new NumberTextView(actionBarMenuCreateActionMode.getContext());
        this.selectedContactsCountTextView = numberTextView;
        numberTextView.setTextSize(18);
        this.selectedContactsCountTextView.setTypeface(AndroidUtilities.bold());
        this.selectedContactsCountTextView.setTextColor(getThemedColor(Theme.key_actionBarActionModeDefaultIcon));
        actionBarMenuCreateActionMode.addView(this.selectedContactsCountTextView, LayoutHelper.createLinear(0, -1, 1.0f, this.hasMainTabs ? 18 : 72, 0, 0, 0));
        this.selectedContactsCountTextView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ContactsActivity.$r8$lambda$JKMMNZVbhnScE5UBvbHjndBG4o0(view, motionEvent);
            }
        });
        actionBarMenuCreateActionMode.addItemWithWidth(100, C2484R.drawable.msg_delete, AndroidUtilities.dp(54.0f), LocaleController.getString(C2484R.string.Delete));
        this.actionBar.setActionBarMenuOnItemClick(new C45491());
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        ActionBarMenuItem actionBarMenuItemAddItem = actionBarMenuCreateMenu.addItem(0, C2484R.drawable.outline_header_search);
        this.searchItem = actionBarMenuItemAddItem;
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2484R.string.SearchContacts));
        EditTextBoldCursor editTextBoldCursor = this.searchField.editText;
        editTextBoldCursor.addTextChangedListener(new SearchTextWatcher(editTextBoldCursor, new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.ContactsActivity.2
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                ContactsActivity.this.searching = true;
                ContactsActivity.this.checkUi_floatingButtonVisible();
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                ContactsActivity.this.searchListViewAdapter.searchDialogs(null);
                ContactsActivity.this.searching = false;
                ContactsActivity.this.searchWas = false;
                ContactsActivity.this.listView.setAdapter(ContactsActivity.this.listViewAdapter);
                ContactsActivity.this.listView.setSectionsType(1);
                ContactsActivity.this.listViewAdapter.notifyDataSetChanged();
                ContactsActivity.this.listView.setFastScrollVisible(true);
                ContactsActivity.this.listView.setVerticalScrollBarEnabled(false);
                ContactsActivity.this.listView.getFastScroll().topOffset = AndroidUtilities.dp(90.0f);
                ContactsActivity.this.checkUi_floatingButtonVisible();
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                if (ContactsActivity.this.searchListViewAdapter == null) {
                    return;
                }
                String string = editText.getText().toString();
                ContactsActivity.this.animatorSearchHasQuery.setValue(!string.isEmpty(), true);
                ContactsActivity.this.searchQuery = string;
                if (!string.isEmpty()) {
                    ContactsActivity.this.searchWas = true;
                    if (ContactsActivity.this.listView != null) {
                        ContactsActivity.this.listView.setAdapter(ContactsActivity.this.searchListViewAdapter);
                        ContactsActivity.this.listView.setSectionsType(0);
                        ContactsActivity.this.searchListViewAdapter.notifyDataSetChanged();
                        ContactsActivity.this.listView.setFastScrollVisible(false);
                        ContactsActivity.this.listView.setVerticalScrollBarEnabled(true);
                    }
                    ContactsActivity.this.emptyView.showProgress(true, true);
                    ContactsActivity.this.searchListViewAdapter.searchDialogs(string);
                    return;
                }
                if (ContactsActivity.this.listView != null) {
                    ContactsActivity.this.listView.setAdapter(ContactsActivity.this.listViewAdapter);
                    ContactsActivity.this.listView.setSectionsType(1);
                }
            }
        }));
        if (!this.createSecretChat && !this.returnAsResult) {
            ActionBarMenuItem actionBarMenuItemAddItem2 = actionBarMenuCreateMenu.addItem(1, this.sortByName ? C2484R.drawable.msg_contacts_time : C2484R.drawable.msg_contacts_name);
            this.sortItem = actionBarMenuItemAddItem2;
            actionBarMenuItemAddItem2.setContentDescription(LocaleController.getString(C2484R.string.AccDescrContactSorting));
            ActionBarMenuItem actionBarMenuItemAddItem3 = actionBarMenuCreateMenu.addItem(-1, C2484R.drawable.ic_ab_other);
            this.otherItem = actionBarMenuItemAddItem3;
            actionBarMenuItemAddItem3.setContentDescription(LocaleController.getString(C2484R.string.AccDescrMoreOptions));
            this.otherItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$2(view);
                }
            });
        }
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        SearchAdapter searchAdapter = new SearchAdapter(recyclerListView, context, this.ignoreUsers, this.selectedContacts, this.allowUsernameSearch, false, false, this.allowBots, this.allowSelf, true, 0, this.resourceProvider) { // from class: org.telegram.ui.ContactsActivity.3
            @Override // org.telegram.ui.Adapters.SearchAdapter
            protected void onSearchProgressChanged() {
                if (searchInProgress() || getItemCount() != 0) {
                    return;
                }
                ContactsActivity.this.emptyView.showProgress(false, true);
            }
        };
        this.searchListViewAdapter = searchAdapter;
        searchAdapter.setUseUserCell(true);
        this.searchListViewAdapter.includeSearch = false;
        int i = 2;
        if (this.chatId != 0) {
            CanUserDoAdminAction = ChatObject.canUserDoAdminAction(getMessagesController().getChat(Long.valueOf(this.chatId)), 3);
        } else if (this.channelId != 0) {
            TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.channelId));
            CanUserDoAdminAction = (!ChatObject.canUserDoAdminAction(chat, 3) || ChatObject.isPublic(chat)) ? 0 : 2;
        } else {
            r8 = 0;
            ContactsAdapter contactsAdapter = new ContactsAdapter(context, this, this.onlyUsers ? 1 : 0, this.needPhonebook, this.ignoreUsers, this.selectedContacts, r8) { // from class: org.telegram.ui.ContactsActivity.4
                @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
                public void notifyDataSetChanged() {
                    super.notifyDataSetChanged();
                    if (ContactsActivity.this.listView == null || ContactsActivity.this.listView.getAdapter() != this) {
                        return;
                    }
                    int itemCount = super.getItemCount();
                    if (ContactsActivity.this.needPhonebook) {
                        ContactsActivity.this.listView.setFastScrollVisible(itemCount != 2);
                    } else {
                        ContactsActivity.this.listView.setFastScrollVisible(itemCount != 0);
                    }
                }

                @Override // org.telegram.ui.Adapters.ContactsAdapter, org.telegram.ui.Components.RecyclerListView.SectionsAdapter
                public int getSectionCount() {
                    int sectionCount = super.getSectionCount();
                    ContactsActivity.this.checkUi_floatingButtonVisible();
                    ContactsActivity.this.checkUi_sortItem();
                    ContactsActivity.this.checkUi_searchFieldHint();
                    return sectionCount;
                }
            };
            this.listViewAdapter = contactsAdapter;
            if (this.sortItem != null) {
                i = 0;
            } else if (this.sortByName) {
                i = 1;
            }
            contactsAdapter.setSortType(i, false);
            this.listViewAdapter.setDisableSections(this.disableSections);
            this.listViewAdapter.includeSearch = false;
            SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.ContactsActivity.5
                @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    if (Build.VERSION.SDK_INT >= 31 && ContactsActivity.this.scrollableViewNoiseSuppressor != null) {
                        ContactsActivity.this.lambda$createView$3();
                        int measuredWidth = getMeasuredWidth();
                        int measuredHeight = getMeasuredHeight();
                        if (ContactsActivity.this.iBlur3SourceGlassFrosted != null && !ContactsActivity.this.iBlur3SourceGlassFrosted.inRecording()) {
                            RecordingCanvas recordingCanvasBeginRecording = ContactsActivity.this.iBlur3SourceGlassFrosted.beginRecording(measuredWidth, measuredHeight);
                            recordingCanvasBeginRecording.drawColor(ContactsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                            if (SharedConfig.chatBlurEnabled()) {
                                ContactsActivity.this.scrollableViewNoiseSuppressor.draw(recordingCanvasBeginRecording, -3);
                            }
                            ContactsActivity.this.iBlur3SourceGlassFrosted.endRecording();
                        }
                        if (ContactsActivity.this.iBlur3SourceGlass != null && !ContactsActivity.this.iBlur3SourceGlass.inRecording()) {
                            RecordingCanvas recordingCanvasBeginRecording2 = ContactsActivity.this.iBlur3SourceGlass.beginRecording(measuredWidth, measuredHeight);
                            recordingCanvasBeginRecording2.drawColor(ContactsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                            if (SharedConfig.chatBlurEnabled()) {
                                ContactsActivity.this.scrollableViewNoiseSuppressor.draw(recordingCanvasBeginRecording2, -2);
                            }
                            ContactsActivity.this.iBlur3SourceGlass.endRecording();
                        }
                        ContactsActivity.this.iBlur3Invalidated = false;
                    }
                    super.dispatchDraw(canvas);
                }

                @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
                public void drawBlurRect(Canvas canvas, float f, Rect rect, Paint paint, boolean z) {
                    if (Build.VERSION.SDK_INT < 29 || !SharedConfig.chatBlurEnabled() || ContactsActivity.this.iBlur3SourceGlassFrosted == null) {
                        canvas.drawRect(rect, paint);
                        return;
                    }
                    canvas.save();
                    canvas.translate(0.0f, -f);
                    ContactsActivity.this.iBlur3SourceGlassFrosted.draw(canvas, rect.left, rect.top + f, rect.right, rect.bottom + f);
                    canvas.restore();
                    int alpha = paint.getAlpha();
                    paint.setAlpha(178);
                    canvas.drawRect(rect, paint);
                    paint.setAlpha(alpha);
                }

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i2, int i3) {
                    measureChildWithMargins(((BaseFragment) ContactsActivity.this).actionBar, i2, 0, i3, 0);
                    ((ViewGroup.MarginLayoutParams) ContactsActivity.this.emptyView.getLayoutParams()).topMargin = ((BaseFragment) ContactsActivity.this).actionBar.getMeasuredHeight() + AndroidUtilities.dp(48.0f);
                    ((ViewGroup.MarginLayoutParams) ContactsActivity.this.headerShadowView.getLayoutParams()).topMargin = ((BaseFragment) ContactsActivity.this).actionBar.getMeasuredHeight();
                    ContactsActivity.this.checkUi_listViewPadding();
                    super.onMeasure(i2, i3);
                }

                @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                    super.onLayout(z, i2, i3, i4, i5);
                    ContactsActivity.this.checkUi_emptyView();
                    ContactsActivity.this.checkUi_searchButton();
                    ContactsActivity.this.checkUi_sortItem();
                    ContactsActivity.this.checkUi_floatingButtonPosition();
                    ContactsActivity.this.checkUi_searchFieldY();
                }
            };
            this.contentView = sizeNotifierFrameLayout;
            this.fragmentView = sizeNotifierFrameLayout;
            RecyclerListView recyclerListView2 = this.listView;
            Objects.requireNonNull(recyclerListView2);
            this.iBlur3Capture = new ViewGroupPartRenderer(recyclerListView2, sizeNotifierFrameLayout, new EmojiView$$ExternalSyntheticLambda13(recyclerListView2));
            this.listView.addEdgeEffectListener(new Runnable() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$4();
                }
            });
            this.listView.setSections(true);
            this.contentView.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
            FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
            flickerLoadingView.setViewType(29);
            flickerLoadingView.showDate(false);
            StickerEmptyView stickerEmptyView = new StickerEmptyView(context, flickerLoadingView, 1);
            this.emptyView = stickerEmptyView;
            stickerEmptyView.addView(flickerLoadingView, 0);
            this.emptyView.setAnimateLayoutChange(true);
            this.emptyView.showProgress(true, false);
            this.emptyView.title.setText(LocaleController.getString(C2484R.string.NoResult));
            this.emptyView.subtitle.setText(LocaleController.getString(C2484R.string.SearchEmptyViewFilteredSubtitle2));
            this.contentView.addView(this.emptyView, LayoutHelper.createFrame(-1, -1.0f, 119, 12.0f, 64.0f, 12.0f, 0.0f));
            DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
            defaultItemAnimator.setDelayAnimations(false);
            defaultItemAnimator.setDurations(150L);
            defaultItemAnimator.setSupportsChangeAnimations(false);
            this.listView.setItemAnimator(defaultItemAnimator);
            this.listView.setSectionsType(1);
            this.listView.setVerticalScrollBarEnabled(false);
            this.listView.setFastScrollEnabled(0);
            RecyclerListView recyclerListView3 = this.listView;
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
            this.layoutManager = linearLayoutManager;
            recyclerListView3.setLayoutManager(linearLayoutManager);
            this.listView.setAdapter(this.listViewAdapter);
            this.listView.setClipToPadding(false);
            RecyclerAnimationScrollHelper recyclerAnimationScrollHelper = new RecyclerAnimationScrollHelper(this.listView, this.layoutManager);
            this.scrollHelper = recyclerAnimationScrollHelper;
            recyclerAnimationScrollHelper.setScrollListener(new RecyclerAnimationScrollHelper.ScrollListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda6
                @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.ScrollListener
                public final void onScroll() {
                    this.f$0.lambda$createView$3();
                }
            });
            SizeNotifierFrameLayout sizeNotifierFrameLayout2 = this.contentView;
            RecyclerListView recyclerListView4 = this.listView;
            int i2 = this.ADDITIONAL_LIST_HEIGHT_DP;
            sizeNotifierFrameLayout2.addView(recyclerListView4, LayoutHelper.createFrame(-1, -1.0f, 3, 0.0f, -i2, 0.0f, -i2));
            this.contentView.addView(this.searchField, LayoutHelper.createFrame(-1, 52.0f, 48, 6.0f, 0.0f, 6.0f, 0.0f));
            this.listView.setEmptyView(this.emptyView);
            this.listView.setAnimateEmptyView(true, 0);
            this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda7
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ boolean hasDoubleTap(View view, int i3) {
                    return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i3);
                }

                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ void onDoubleTap(View view, int i3, float f, float f2) {
                    RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i3, f, f2);
                }

                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
                public final void onItemClick(View view, int i3, float f, float f2) {
                    this.f$0.lambda$createView$6(r8, view, i3, f, f2);
                }
            });
            this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda8
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
                public final boolean onItemClick(View view, int i3) {
                    return this.f$0.lambda$createView$7(view, i3);
                }
            });
            this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ContactsActivity.6
                private boolean lastScrollToDown;
                private boolean scrollUpdated;
                private boolean scrollingManually;

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i3) {
                    if (i3 == 1) {
                        if ((ContactsActivity.this.searching && ContactsActivity.this.searchWas) || ContactsActivity.this.searchField.editText.isFocused()) {
                            AndroidUtilities.hideKeyboard(ContactsActivity.this.getParentActivity().getCurrentFocus());
                        }
                        this.scrollingManually = true;
                        return;
                    }
                    this.scrollingManually = false;
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                    int iFindFirstVisibleItemPosition = ContactsActivity.this.layoutManager.findFirstVisibleItemPosition();
                    View childAt = recyclerView.getChildAt(0);
                    int top = childAt != null ? childAt.getTop() : 0;
                    if (ContactsActivity.this.floatingButton != null && !ContactsActivity.this.searching) {
                        boolean z = i4 > 0;
                        if (i4 != 0 && this.scrollUpdated && (z || this.scrollingManually)) {
                            ContactsActivity.this.floatingButtonVisibleByScroll = !z;
                            ContactsActivity.this.checkUi_floatingButtonVisible();
                        }
                        this.scrollUpdated = true;
                    }
                    ContactsActivity.this.headerShadowView.setShadowVisible(iFindFirstVisibleItemPosition != 0 || top < ContactsActivity.this.listView.getPaddingTop(), true);
                    this.lastScrollToDown = i4 < 0;
                    if (Build.VERSION.SDK_INT >= 31 && ContactsActivity.this.scrollableViewNoiseSuppressor != null) {
                        ContactsActivity.this.scrollableViewNoiseSuppressor.onScrolled(i3, i4);
                        ContactsActivity.this.lambda$createView$3();
                    }
                    ContactsActivity.this.checkUi_searchFieldY();
                }
            });
            if (!this.createSecretChat && !this.returnAsResult) {
                FragmentFloatingButton fragmentFloatingButton = new FragmentFloatingButton(context, this.resourceProvider);
                this.floatingButton = fragmentFloatingButton;
                this.contentView.addView(fragmentFloatingButton, FragmentFloatingButton.createDefaultLayoutParams());
                this.floatingButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$createView$8(view);
                    }
                });
                this.floatingButton.setAnimation(C2484R.raw.write_contacts_fab_icon, 44);
                this.floatingButton.imageView.getAnimatedDrawable().setCurrentFrame(this.floatingButton.imageView.getAnimatedDrawable().getFramesCount() - 1);
                this.floatingButton.setContentDescription(LocaleController.getString(C2484R.string.CreateNewContact));
            }
            str = this.initialSearchString;
            if (str != null) {
                this.actionBar.openSearchField(str, false);
                this.initialSearchString = null;
            }
            this.contentView.addView(this.actionBar);
            HeaderShadowView headerShadowView = new HeaderShadowView(context, this.parentLayout);
            this.headerShadowView = headerShadowView;
            headerShadowView.setShadowVisible(false, false);
            this.contentView.addView(this.headerShadowView, LayoutHelper.createFrame(-1, 5, 48));
            this.actionBar.setAdaptiveBackground(this.listView);
            this.actionBar.setDrawBlurBackground(this.contentView);
            this.animatorSearchFieldVisible.setValue(true, false);
            checkUi_searchFieldHint();
            Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.ContactsActivity.7
                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean allowLayoutChanges() {
                    return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean bottomOffsetAnimated() {
                    return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean clipWithGradient(int i3) {
                    return Bulletin.Delegate.CC.$default$clipWithGradient(this, i3);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ int getTopOffset(int i3) {
                    return Bulletin.Delegate.CC.$default$getTopOffset(this, i3);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ void onHide(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onHide(this, bulletin);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ void onShow(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onShow(this, bulletin);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public void onBottomOffsetChange(float f) {
                    ContactsActivity.this.additionalFloatingTranslation = Math.max(0.0f, (f - r0.navigationBarHeight) - ContactsActivity.this.additionFloatingButtonOffset);
                    ContactsActivity.this.checkUi_floatingButtonPosition();
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public int getBottomOffset(int i3) {
                    return ContactsActivity.this.navigationBarHeight + ContactsActivity.this.additionFloatingButtonOffset;
                }
            });
            launchActivity = LaunchActivity.instance;
            if (launchActivity != null) {
                launchActivity.getRootAnimatedInsetsListener().subscribeToWindowInsetsAnimation(this);
            }
            ViewCompat.setOnApplyWindowInsetsListener(this.fragmentView, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda10
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return this.f$0.onApplyWindowInsets(view, windowInsetsCompat);
                }
            });
            return this.fragmentView;
        }
        r8 = CanUserDoAdminAction;
        ContactsAdapter contactsAdapter2 = new ContactsAdapter(context, this, this.onlyUsers ? 1 : 0, this.needPhonebook, this.ignoreUsers, this.selectedContacts, r8) { // from class: org.telegram.ui.ContactsActivity.4
            @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public void notifyDataSetChanged() {
                super.notifyDataSetChanged();
                if (ContactsActivity.this.listView == null || ContactsActivity.this.listView.getAdapter() != this) {
                    return;
                }
                int itemCount = super.getItemCount();
                if (ContactsActivity.this.needPhonebook) {
                    ContactsActivity.this.listView.setFastScrollVisible(itemCount != 2);
                } else {
                    ContactsActivity.this.listView.setFastScrollVisible(itemCount != 0);
                }
            }

            @Override // org.telegram.ui.Adapters.ContactsAdapter, org.telegram.ui.Components.RecyclerListView.SectionsAdapter
            public int getSectionCount() {
                int sectionCount = super.getSectionCount();
                ContactsActivity.this.checkUi_floatingButtonVisible();
                ContactsActivity.this.checkUi_sortItem();
                ContactsActivity.this.checkUi_searchFieldHint();
                return sectionCount;
            }
        };
        this.listViewAdapter = contactsAdapter2;
        if (this.sortItem != null) {
        }
        contactsAdapter2.setSortType(i, false);
        this.listViewAdapter.setDisableSections(this.disableSections);
        this.listViewAdapter.includeSearch = false;
        SizeNotifierFrameLayout sizeNotifierFrameLayout3 = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.ContactsActivity.5
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                if (Build.VERSION.SDK_INT >= 31 && ContactsActivity.this.scrollableViewNoiseSuppressor != null) {
                    ContactsActivity.this.lambda$createView$3();
                    int measuredWidth = getMeasuredWidth();
                    int measuredHeight = getMeasuredHeight();
                    if (ContactsActivity.this.iBlur3SourceGlassFrosted != null && !ContactsActivity.this.iBlur3SourceGlassFrosted.inRecording()) {
                        RecordingCanvas recordingCanvasBeginRecording = ContactsActivity.this.iBlur3SourceGlassFrosted.beginRecording(measuredWidth, measuredHeight);
                        recordingCanvasBeginRecording.drawColor(ContactsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                        if (SharedConfig.chatBlurEnabled()) {
                            ContactsActivity.this.scrollableViewNoiseSuppressor.draw(recordingCanvasBeginRecording, -3);
                        }
                        ContactsActivity.this.iBlur3SourceGlassFrosted.endRecording();
                    }
                    if (ContactsActivity.this.iBlur3SourceGlass != null && !ContactsActivity.this.iBlur3SourceGlass.inRecording()) {
                        RecordingCanvas recordingCanvasBeginRecording2 = ContactsActivity.this.iBlur3SourceGlass.beginRecording(measuredWidth, measuredHeight);
                        recordingCanvasBeginRecording2.drawColor(ContactsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                        if (SharedConfig.chatBlurEnabled()) {
                            ContactsActivity.this.scrollableViewNoiseSuppressor.draw(recordingCanvasBeginRecording2, -2);
                        }
                        ContactsActivity.this.iBlur3SourceGlass.endRecording();
                    }
                    ContactsActivity.this.iBlur3Invalidated = false;
                }
                super.dispatchDraw(canvas);
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public void drawBlurRect(Canvas canvas, float f, Rect rect, Paint paint, boolean z) {
                if (Build.VERSION.SDK_INT < 29 || !SharedConfig.chatBlurEnabled() || ContactsActivity.this.iBlur3SourceGlassFrosted == null) {
                    canvas.drawRect(rect, paint);
                    return;
                }
                canvas.save();
                canvas.translate(0.0f, -f);
                ContactsActivity.this.iBlur3SourceGlassFrosted.draw(canvas, rect.left, rect.top + f, rect.right, rect.bottom + f);
                canvas.restore();
                int alpha = paint.getAlpha();
                paint.setAlpha(178);
                canvas.drawRect(rect, paint);
                paint.setAlpha(alpha);
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i22, int i3) {
                measureChildWithMargins(((BaseFragment) ContactsActivity.this).actionBar, i22, 0, i3, 0);
                ((ViewGroup.MarginLayoutParams) ContactsActivity.this.emptyView.getLayoutParams()).topMargin = ((BaseFragment) ContactsActivity.this).actionBar.getMeasuredHeight() + AndroidUtilities.dp(48.0f);
                ((ViewGroup.MarginLayoutParams) ContactsActivity.this.headerShadowView.getLayoutParams()).topMargin = ((BaseFragment) ContactsActivity.this).actionBar.getMeasuredHeight();
                ContactsActivity.this.checkUi_listViewPadding();
                super.onMeasure(i22, i3);
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i22, int i3, int i4, int i5) {
                super.onLayout(z, i22, i3, i4, i5);
                ContactsActivity.this.checkUi_emptyView();
                ContactsActivity.this.checkUi_searchButton();
                ContactsActivity.this.checkUi_sortItem();
                ContactsActivity.this.checkUi_floatingButtonPosition();
                ContactsActivity.this.checkUi_searchFieldY();
            }
        };
        this.contentView = sizeNotifierFrameLayout3;
        this.fragmentView = sizeNotifierFrameLayout3;
        RecyclerListView recyclerListView22 = this.listView;
        Objects.requireNonNull(recyclerListView22);
        this.iBlur3Capture = new ViewGroupPartRenderer(recyclerListView22, sizeNotifierFrameLayout3, new EmojiView$$ExternalSyntheticLambda13(recyclerListView22));
        this.listView.addEdgeEffectListener(new Runnable() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$4();
            }
        });
        this.listView.setSections(true);
        this.contentView.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        FlickerLoadingView flickerLoadingView2 = new FlickerLoadingView(context);
        flickerLoadingView2.setViewType(29);
        flickerLoadingView2.showDate(false);
        StickerEmptyView stickerEmptyView2 = new StickerEmptyView(context, flickerLoadingView2, 1);
        this.emptyView = stickerEmptyView2;
        stickerEmptyView2.addView(flickerLoadingView2, 0);
        this.emptyView.setAnimateLayoutChange(true);
        this.emptyView.showProgress(true, false);
        this.emptyView.title.setText(LocaleController.getString(C2484R.string.NoResult));
        this.emptyView.subtitle.setText(LocaleController.getString(C2484R.string.SearchEmptyViewFilteredSubtitle2));
        this.contentView.addView(this.emptyView, LayoutHelper.createFrame(-1, -1.0f, 119, 12.0f, 64.0f, 12.0f, 0.0f));
        DefaultItemAnimator defaultItemAnimator2 = new DefaultItemAnimator();
        defaultItemAnimator2.setDelayAnimations(false);
        defaultItemAnimator2.setDurations(150L);
        defaultItemAnimator2.setSupportsChangeAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator2);
        this.listView.setSectionsType(1);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setFastScrollEnabled(0);
        RecyclerListView recyclerListView32 = this.listView;
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(context, 1, false);
        this.layoutManager = linearLayoutManager2;
        recyclerListView32.setLayoutManager(linearLayoutManager2);
        this.listView.setAdapter(this.listViewAdapter);
        this.listView.setClipToPadding(false);
        RecyclerAnimationScrollHelper recyclerAnimationScrollHelper2 = new RecyclerAnimationScrollHelper(this.listView, this.layoutManager);
        this.scrollHelper = recyclerAnimationScrollHelper2;
        recyclerAnimationScrollHelper2.setScrollListener(new RecyclerAnimationScrollHelper.ScrollListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.ScrollListener
            public final void onScroll() {
                this.f$0.lambda$createView$3();
            }
        });
        SizeNotifierFrameLayout sizeNotifierFrameLayout22 = this.contentView;
        RecyclerListView recyclerListView42 = this.listView;
        int i22 = this.ADDITIONAL_LIST_HEIGHT_DP;
        sizeNotifierFrameLayout22.addView(recyclerListView42, LayoutHelper.createFrame(-1, -1.0f, 3, 0.0f, -i22, 0.0f, -i22));
        this.contentView.addView(this.searchField, LayoutHelper.createFrame(-1, 52.0f, 48, 6.0f, 0.0f, 6.0f, 0.0f));
        this.listView.setEmptyView(this.emptyView);
        this.listView.setAnimateEmptyView(true, 0);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i3) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i3);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i3, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i3, f, f2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i3, float f, float f2) {
                this.f$0.lambda$createView$6(r8, view, i3, f, f2);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i3) {
                return this.f$0.lambda$createView$7(view, i3);
            }
        });
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ContactsActivity.6
            private boolean lastScrollToDown;
            private boolean scrollUpdated;
            private boolean scrollingManually;

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i3) {
                if (i3 == 1) {
                    if ((ContactsActivity.this.searching && ContactsActivity.this.searchWas) || ContactsActivity.this.searchField.editText.isFocused()) {
                        AndroidUtilities.hideKeyboard(ContactsActivity.this.getParentActivity().getCurrentFocus());
                    }
                    this.scrollingManually = true;
                    return;
                }
                this.scrollingManually = false;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                int iFindFirstVisibleItemPosition = ContactsActivity.this.layoutManager.findFirstVisibleItemPosition();
                View childAt = recyclerView.getChildAt(0);
                int top = childAt != null ? childAt.getTop() : 0;
                if (ContactsActivity.this.floatingButton != null && !ContactsActivity.this.searching) {
                    boolean z = i4 > 0;
                    if (i4 != 0 && this.scrollUpdated && (z || this.scrollingManually)) {
                        ContactsActivity.this.floatingButtonVisibleByScroll = !z;
                        ContactsActivity.this.checkUi_floatingButtonVisible();
                    }
                    this.scrollUpdated = true;
                }
                ContactsActivity.this.headerShadowView.setShadowVisible(iFindFirstVisibleItemPosition != 0 || top < ContactsActivity.this.listView.getPaddingTop(), true);
                this.lastScrollToDown = i4 < 0;
                if (Build.VERSION.SDK_INT >= 31 && ContactsActivity.this.scrollableViewNoiseSuppressor != null) {
                    ContactsActivity.this.scrollableViewNoiseSuppressor.onScrolled(i3, i4);
                    ContactsActivity.this.lambda$createView$3();
                }
                ContactsActivity.this.checkUi_searchFieldY();
            }
        });
        if (!this.createSecretChat) {
            FragmentFloatingButton fragmentFloatingButton2 = new FragmentFloatingButton(context, this.resourceProvider);
            this.floatingButton = fragmentFloatingButton2;
            this.contentView.addView(fragmentFloatingButton2, FragmentFloatingButton.createDefaultLayoutParams());
            this.floatingButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$8(view);
                }
            });
            this.floatingButton.setAnimation(C2484R.raw.write_contacts_fab_icon, 44);
            this.floatingButton.imageView.getAnimatedDrawable().setCurrentFrame(this.floatingButton.imageView.getAnimatedDrawable().getFramesCount() - 1);
            this.floatingButton.setContentDescription(LocaleController.getString(C2484R.string.CreateNewContact));
        }
        str = this.initialSearchString;
        if (str != null) {
        }
        this.contentView.addView(this.actionBar);
        HeaderShadowView headerShadowView2 = new HeaderShadowView(context, this.parentLayout);
        this.headerShadowView = headerShadowView2;
        headerShadowView2.setShadowVisible(false, false);
        this.contentView.addView(this.headerShadowView, LayoutHelper.createFrame(-1, 5, 48));
        this.actionBar.setAdaptiveBackground(this.listView);
        this.actionBar.setDrawBlurBackground(this.contentView);
        this.animatorSearchFieldVisible.setValue(true, false);
        checkUi_searchFieldHint();
        Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.ContactsActivity.7
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean bottomOffsetAnimated() {
                return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean clipWithGradient(int i3) {
                return Bulletin.Delegate.CC.$default$clipWithGradient(this, i3);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ int getTopOffset(int i3) {
                return Bulletin.Delegate.CC.$default$getTopOffset(this, i3);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ void onShow(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onShow(this, bulletin);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public void onBottomOffsetChange(float f) {
                ContactsActivity.this.additionalFloatingTranslation = Math.max(0.0f, (f - r0.navigationBarHeight) - ContactsActivity.this.additionFloatingButtonOffset);
                ContactsActivity.this.checkUi_floatingButtonPosition();
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i3) {
                return ContactsActivity.this.navigationBarHeight + ContactsActivity.this.additionFloatingButtonOffset;
            }
        });
        launchActivity = LaunchActivity.instance;
        if (launchActivity != null) {
        }
        ViewCompat.setOnApplyWindowInsetsListener(this.fragmentView, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda10
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.onApplyWindowInsets(view, windowInsetsCompat);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view) {
        hideActionMode();
    }

    public static /* synthetic */ boolean $r8$lambda$JKMMNZVbhnScE5UBvbHjndBG4o0(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.ContactsActivity$1 */
    class C45491 extends ActionBar.ActionBarMenuOnItemClick {
        C45491() {
        }

        @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == -1) {
                if (((BaseFragment) ContactsActivity.this).actionBar.isActionModeShowed()) {
                    ContactsActivity.this.hideActionMode();
                    return;
                } else {
                    ContactsActivity.this.finishFragment();
                    return;
                }
            }
            if (i == 100) {
                ContactsActivity.this.performSelectedContactsDelete();
                return;
            }
            if (i == 1) {
                SharedConfig.toggleSortContactsByName();
                ContactsActivity.this.sortByName = SharedConfig.sortContactsByName;
                ContactsActivity.this.listViewAdapter.setSortType(ContactsActivity.this.sortByName ? 1 : 2, false);
                ContactsActivity.this.sortItem.setIcon(ContactsActivity.this.sortByName ? C2484R.drawable.msg_contacts_time : C2484R.drawable.msg_contacts_name);
                return;
            }
            if (i == 0) {
                ContactsActivity.this.listView.smoothScrollToPosition(0);
                AndroidUtilities.doOnPreDraw(ContactsActivity.this.searchField.editText, new Runnable() { // from class: org.telegram.ui.ContactsActivity$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onItemClick$0();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0() {
            ContactsActivity.this.searchField.editText.requestFocus();
            AndroidUtilities.showKeyboard(ContactsActivity.this.searchField.editText);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view) {
        showItemOptions();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4() {
        this.listView.postOnAnimation(new Runnable() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(int i, View view, int i2, float f, float f2) {
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        SearchAdapter searchAdapter = this.searchListViewAdapter;
        if (adapter == searchAdapter) {
            if (searchAdapter.includeSearch) {
                if (i2 == 0) {
                    return;
                } else {
                    i2--;
                }
            }
            Object item = searchAdapter.getItem(i2);
            if (!this.selectedContacts.isEmpty() && (view instanceof ProfileSearchCell)) {
                ProfileSearchCell profileSearchCell = (ProfileSearchCell) view;
                if (profileSearchCell.getUser() == null || !profileSearchCell.getUser().contact) {
                    return;
                }
                showOrUpdateActionMode(profileSearchCell);
                return;
            }
            if (item instanceof TLRPC.User) {
                TLRPC.User user = (TLRPC.User) item;
                if (this.searchListViewAdapter.isGlobalSearch(i2)) {
                    ArrayList<TLRPC.User> arrayList = new ArrayList<>();
                    arrayList.add(user);
                    getMessagesController().putUsers(arrayList, false);
                    MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(arrayList, null, false, true);
                }
                if (this.returnAsResult) {
                    LongSparseArray longSparseArray = this.ignoreUsers;
                    if (longSparseArray == null || longSparseArray.indexOfKey(user.id) < 0) {
                        didSelectResult(user, true, null);
                        return;
                    }
                    return;
                }
                if (this.createSecretChat) {
                    if (user.id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                        return;
                    }
                    this.creatingChat = true;
                    SecretChatHelper.getInstance(this.currentAccount).startSecretChat(getParentActivity(), user);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putLong("user_id", user.id);
                if (getMessagesController().checkCanOpenChat(bundle, this)) {
                    presentFragment(new ChatActivity(bundle), this.needFinishFragment);
                    return;
                }
                return;
            }
            if (item instanceof String) {
                String str = (String) item;
                if (str.equals("section")) {
                    return;
                }
                if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
                    AccountFrozenAlert.show(this.currentAccount);
                    return;
                }
                NewContactBottomSheet newContactBottomSheet = new NewContactBottomSheet(this, getContext());
                newContactBottomSheet.setInitialPhoneNumber(str, true);
                newContactBottomSheet.show();
                return;
            }
            if (item instanceof ContactsController.Contact) {
                ContactsController.Contact contact = (ContactsController.Contact) item;
                AlertsCreator.createContactInviteDialog(this, contact.first_name, contact.last_name, contact.phones.get(0));
                return;
            }
            return;
        }
        ContactsAdapter contactsAdapter = this.listViewAdapter;
        if (contactsAdapter.includeSearch) {
            if (i2 == 0) {
                return;
            } else {
                i2--;
            }
        }
        int sectionForPosition = contactsAdapter.getSectionForPosition(i2);
        int positionInSectionForPosition = this.listViewAdapter.getPositionInSectionForPosition(i2);
        if (positionInSectionForPosition < 0 || sectionForPosition < 0) {
            return;
        }
        if ((view instanceof ViewGroup) && (((ViewGroup) view).getChildAt(0) instanceof ContactsEmptyView)) {
            FragmentFloatingButton fragmentFloatingButton = this.floatingButton;
            if (fragmentFloatingButton != null) {
                fragmentFloatingButton.performClick();
                return;
            }
            return;
        }
        if (!this.selectedContacts.isEmpty() && (view instanceof UserCell)) {
            showOrUpdateActionMode((UserCell) view);
            return;
        }
        if ((!this.onlyUsers || i != 0) && sectionForPosition == 0) {
            if (this.needPhonebook) {
                if (positionInSectionForPosition != 0) {
                    if (positionInSectionForPosition == 1) {
                        presentFragment(new CallLogActivity());
                        return;
                    }
                    return;
                } else if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
                    AccountFrozenAlert.show(this.currentAccount);
                    return;
                } else {
                    presentFragment(new InviteContactsActivity());
                    return;
                }
            }
            if (i != 0) {
                if (positionInSectionForPosition == 0) {
                    if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
                        AccountFrozenAlert.show(this.currentAccount);
                        return;
                    }
                    long j = this.chatId;
                    if (j == 0) {
                        j = this.channelId;
                    }
                    presentFragment(new GroupInviteActivity(j));
                    return;
                }
                return;
            }
            if (positionInSectionForPosition == 0) {
                if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
                    AccountFrozenAlert.show(this.currentAccount);
                    return;
                } else {
                    presentFragment(new GroupCreateActivity(new Bundle()), false);
                    return;
                }
            }
            if (positionInSectionForPosition == 1) {
                if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
                    AccountFrozenAlert.show(this.currentAccount);
                    return;
                }
                SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
                if (!BuildVars.DEBUG_VERSION && globalMainSettings.getBoolean("channel_intro", false)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("step", 0);
                    presentFragment(new ChannelCreateActivity(bundle2));
                    return;
                } else {
                    presentFragment(new ActionIntroActivity(0));
                    globalMainSettings.edit().putBoolean("channel_intro", true).apply();
                    return;
                }
            }
            return;
        }
        Object item2 = this.listViewAdapter.getItem(this.listViewAdapter.getSectionForPosition(i2), this.listViewAdapter.getPositionInSectionForPosition(i2));
        if (item2 instanceof TLRPC.User) {
            TLRPC.User user2 = (TLRPC.User) item2;
            if (this.returnAsResult) {
                LongSparseArray longSparseArray2 = this.ignoreUsers;
                if (longSparseArray2 == null || longSparseArray2.indexOfKey(user2.id) < 0) {
                    didSelectResult(user2, true, null);
                    return;
                }
                return;
            }
            if (this.createSecretChat) {
                this.creatingChat = true;
                SecretChatHelper.getInstance(this.currentAccount).startSecretChat(getParentActivity(), user2);
                return;
            }
            Bundle bundle3 = new Bundle();
            bundle3.putLong("user_id", user2.id);
            if (getMessagesController().checkCanOpenChat(bundle3, this)) {
                presentFragment(new ChatActivity(bundle3), this.needFinishFragment);
                return;
            }
            return;
        }
        if (item2 instanceof ContactsController.Contact) {
            ContactsController.Contact contact2 = (ContactsController.Contact) item2;
            final String str2 = !contact2.phones.isEmpty() ? contact2.phones.get(0) : null;
            if (str2 == null || getParentActivity() == null) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setMessage(LocaleController.getString(C2484R.string.InviteUser));
            builder.setTitle(LocaleController.getString(C2484R.string.AppName));
            builder.setPositiveButton(LocaleController.getString(C2484R.string.OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda17
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i3) {
                    this.f$0.lambda$createView$5(str2, alertDialog, i3);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2484R.string.Cancel), null);
            showDialog(builder.create());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(String str, AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.fromParts("sms", str, null));
            intent.putExtra("sms_body", ContactsController.getInstance(this.currentAccount).getInviteText(1));
            getParentActivity().startActivityForResult(intent, 500);
        } catch (Exception e) {
            FileLog.m955e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$7(View view, int i) {
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        ContactsAdapter contactsAdapter = this.listViewAdapter;
        if (adapter == contactsAdapter) {
            int sectionForPosition = contactsAdapter.getSectionForPosition(i);
            int positionInSectionForPosition = this.listViewAdapter.getPositionInSectionForPosition(i);
            if (Bulletin.getVisibleBulletin() != null) {
                Bulletin.getVisibleBulletin().hide();
            }
            if (positionInSectionForPosition < 0 || sectionForPosition < 0) {
                return false;
            }
        }
        boolean z = this.returnAsResult;
        if (!z && !this.createSecretChat && (view instanceof UserCell)) {
            showOrUpdateActionMode((UserCell) view);
            return true;
        }
        if (z || this.createSecretChat || !(view instanceof ProfileSearchCell)) {
            return false;
        }
        ProfileSearchCell profileSearchCell = (ProfileSearchCell) view;
        if (profileSearchCell.getUser() != null && profileSearchCell.getUser().contact) {
            showOrUpdateActionMode(profileSearchCell);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(View view) {
        if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
            AccountFrozenAlert.show(this.currentAccount);
        } else {
            new NewContactBottomSheet(this, getContext()).show();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ActionBar createActionBar(Context context) {
        ActionBar actionBarCreateActionBar = super.createActionBar(context);
        actionBarCreateActionBar.setUseContainerForTitles();
        actionBarCreateActionBar.getTitlesContainer().setTranslationX(AndroidUtilities.dp(4.0f));
        actionBarCreateActionBar.setAddToContainer(false);
        actionBarCreateActionBar.createAdditionalSubTitleOverlayContainer();
        actionBarCreateActionBar.getAdditionalSubTitleOverlayContainer().setTranslationX(AndroidUtilities.dp(4.0f));
        actionBarCreateActionBar.getAdditionalSubTitleOverlayContainer().setTranslationY(-AndroidUtilities.dp(2.0f));
        return actionBarCreateActionBar;
    }

    public boolean addOrRemoveSelectedContact(UserCell userCell) {
        long dialogId = userCell.getDialogId();
        if (this.selectedContacts.indexOfKey(dialogId) >= 0) {
            this.selectedContacts.remove(dialogId);
            userCell.setChecked(false, true);
        } else if (userCell.getCurrentObject() instanceof TLRPC.User) {
            this.selectedContacts.put(dialogId, (TLRPC.User) userCell.getCurrentObject());
            userCell.setChecked(true, true);
            return true;
        }
        return false;
    }

    public boolean addOrRemoveSelectedContact(ProfileSearchCell profileSearchCell) {
        long dialogId = profileSearchCell.getDialogId();
        if (this.selectedContacts.indexOfKey(dialogId) >= 0) {
            this.selectedContacts.remove(dialogId);
            profileSearchCell.setChecked(false, true);
        } else if (profileSearchCell.getUser() != null) {
            this.selectedContacts.put(dialogId, profileSearchCell.getUser());
            profileSearchCell.setChecked(true, true);
            return true;
        }
        return false;
    }

    private void showOrUpdateActionMode(Object obj) {
        boolean zAddOrRemoveSelectedContact;
        if (obj instanceof UserCell) {
            zAddOrRemoveSelectedContact = addOrRemoveSelectedContact((UserCell) obj);
        } else if (!(obj instanceof ProfileSearchCell)) {
            return;
        } else {
            zAddOrRemoveSelectedContact = addOrRemoveSelectedContact((ProfileSearchCell) obj);
        }
        boolean z = true;
        if (!this.actionBar.isActionModeShowed()) {
            if (zAddOrRemoveSelectedContact) {
                AndroidUtilities.hideKeyboard(this.fragmentView.findFocus());
                this.actionBar.showActionMode();
                this.backDrawable.setRotation(1.0f, true);
            }
            z = false;
        } else if (this.selectedContacts.isEmpty()) {
            hideActionMode();
            return;
        }
        this.selectedContactsCountTextView.setNumber(this.selectedContacts.size(), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideActionMode() {
        this.actionBar.hideActionMode();
        int childCount = this.listView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.listView.getChildAt(i);
            if (childAt instanceof UserCell) {
                UserCell userCell = (UserCell) childAt;
                if (this.selectedContacts.indexOfKey(userCell.getDialogId()) >= 0) {
                    userCell.setChecked(false, true);
                }
            } else if (childAt instanceof ProfileSearchCell) {
                ProfileSearchCell profileSearchCell = (ProfileSearchCell) childAt;
                if (this.selectedContacts.indexOfKey(profileSearchCell.getDialogId()) >= 0) {
                    profileSearchCell.setChecked(false, true);
                }
            }
        }
        this.selectedContacts.clear();
        this.backDrawable.setRotation(0.0f, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performSelectedContactsDelete() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), getResourceProvider());
        if (this.selectedContacts.size() == 1) {
            builder.setTitle(LocaleController.getString(C2484R.string.DeleteContactTitle));
            builder.setMessage(LocaleController.getString(C2484R.string.DeleteContactSubtitle));
        } else {
            builder.setTitle(LocaleController.formatPluralString("DeleteContactsTitle", this.selectedContacts.size(), new Object[0]));
            builder.setMessage(LocaleController.getString(C2484R.string.DeleteContactsSubtitle));
        }
        builder.setPositiveButton(LocaleController.getString(C2484R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda15
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$performSelectedContactsDelete$9(alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2484R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda16
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                alertDialog.dismiss();
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        alertDialogCreate.redPositive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedContactsDelete$9(AlertDialog alertDialog, int i) {
        ArrayList<TLRPC.User> arrayList = new ArrayList<>(this.selectedContacts.size());
        for (int i2 = 0; i2 < this.selectedContacts.size(); i2++) {
            arrayList.add((TLRPC.User) this.selectedContacts.get(this.selectedContacts.keyAt(i2)));
        }
        getContactsController().deleteContactsUndoable(getContext(), this, arrayList);
        hideActionMode();
    }

    private void didSelectResult(final TLRPC.User user, boolean z, final String str) {
        final EditTextBoldCursor editTextBoldCursor;
        if (z && this.selectAlertString != null) {
            if (getParentActivity() == null) {
                return;
            }
            if (user.bot) {
                if (user.bot_nochats) {
                    try {
                        BulletinFactory.of(this).createErrorBulletin(LocaleController.getString(C2484R.string.BotCantJoinGroups)).show();
                        return;
                    } catch (Exception e) {
                        FileLog.m955e(e);
                        return;
                    }
                }
                if (this.channelId != 0) {
                    TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.channelId));
                    AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                    if (ChatObject.canAddAdmins(chat)) {
                        builder.setTitle(LocaleController.getString(C2484R.string.AddBotAdminAlert));
                        builder.setMessage(LocaleController.getString(C2484R.string.AddBotAsAdmin));
                        builder.setPositiveButton(LocaleController.getString(C2484R.string.AddAsAdmin), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda18
                            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                            public final void onClick(AlertDialog alertDialog, int i) {
                                this.f$0.lambda$didSelectResult$11(user, str, alertDialog, i);
                            }
                        });
                        builder.setNegativeButton(LocaleController.getString(C2484R.string.Cancel), null);
                    } else {
                        builder.setMessage(LocaleController.getString(C2484R.string.CantAddBotAsAdmin));
                        builder.setPositiveButton(LocaleController.getString(C2484R.string.OK), null);
                    }
                    showDialog(builder.create());
                    return;
                }
            }
            AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity());
            builder2.setTitle(LocaleController.getString(C2484R.string.AppName));
            String stringSimple = LocaleController.formatStringSimple(this.selectAlertString, UserObject.getUserName(user));
            if (user.bot || !this.needForwardCount) {
                editTextBoldCursor = null;
            } else {
                stringSimple = String.format("%s\n\n%s", stringSimple, LocaleController.getString(C2484R.string.AddToTheGroupForwardCount));
                editTextBoldCursor = new EditTextBoldCursor(getParentActivity());
                editTextBoldCursor.setTextSize(1, 18.0f);
                editTextBoldCursor.setText("50");
                editTextBoldCursor.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
                editTextBoldCursor.setGravity(17);
                editTextBoldCursor.setInputType(2);
                editTextBoldCursor.setImeOptions(6);
                editTextBoldCursor.setBackground(Theme.createEditTextDrawable(getParentActivity(), true));
                editTextBoldCursor.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.ContactsActivity.8
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        try {
                            String string = editable.toString();
                            if (string.isEmpty()) {
                                return;
                            }
                            int iIntValue = Utilities.parseInt((CharSequence) string).intValue();
                            if (iIntValue < 0) {
                                editTextBoldCursor.setText(MVEL.VERSION_SUB);
                                EditText editText = editTextBoldCursor;
                                editText.setSelection(editText.length());
                                return;
                            }
                            if (iIntValue > 300) {
                                editTextBoldCursor.setText("300");
                                EditText editText2 = editTextBoldCursor;
                                editText2.setSelection(editText2.length());
                                return;
                            }
                            if (string.equals(_UrlKt.FRAGMENT_ENCODE_SET + iIntValue)) {
                                return;
                            }
                            editTextBoldCursor.setText(_UrlKt.FRAGMENT_ENCODE_SET + iIntValue);
                            EditText editText3 = editTextBoldCursor;
                            editText3.setSelection(editText3.length());
                        } catch (Exception e2) {
                            FileLog.m955e(e2);
                        }
                    }
                });
                builder2.setView(editTextBoldCursor);
            }
            builder2.setMessage(stringSimple);
            builder2.setPositiveButton(LocaleController.getString(C2484R.string.OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda19
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$didSelectResult$12(user, editTextBoldCursor, alertDialog, i);
                }
            });
            builder2.setNegativeButton(LocaleController.getString(C2484R.string.Cancel), null);
            showDialog(builder2.create());
            if (editTextBoldCursor != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) editTextBoldCursor.getLayoutParams();
                if (marginLayoutParams != null) {
                    if (marginLayoutParams instanceof FrameLayout.LayoutParams) {
                        ((FrameLayout.LayoutParams) marginLayoutParams).gravity = 1;
                    }
                    int iDp = AndroidUtilities.dp(24.0f);
                    marginLayoutParams.leftMargin = iDp;
                    marginLayoutParams.rightMargin = iDp;
                    marginLayoutParams.height = AndroidUtilities.dp(36.0f);
                    editTextBoldCursor.setLayoutParams(marginLayoutParams);
                }
                editTextBoldCursor.setSelection(editTextBoldCursor.getText().length());
                return;
            }
            return;
        }
        ContactsActivityDelegate contactsActivityDelegate = this.delegate;
        if (contactsActivityDelegate != null) {
            contactsActivityDelegate.didSelectContact(user, str, this);
            if (this.resetDelegate) {
                this.delegate = null;
            }
        }
        if (this.needFinishFragment) {
            finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$11(TLRPC.User user, String str, AlertDialog alertDialog, int i) {
        ContactsActivityDelegate contactsActivityDelegate = this.delegate;
        if (contactsActivityDelegate != null) {
            contactsActivityDelegate.didSelectContact(user, str, this);
            this.delegate = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$12(TLRPC.User user, EditText editText, AlertDialog alertDialog, int i) {
        didSelectResult(user, false, editText != null ? editText.getText().toString() : MVEL.VERSION_SUB);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (this.actionBar.isActionModeShowed()) {
            if (z) {
                hideActionMode();
            }
            return false;
        }
        if (!this.animatorSearchHasQuery.getValue()) {
            return super.onBackPressed(z);
        }
        if (z) {
            this.searchField.editText.getText().clear();
        }
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        this.floatingButtonVisibleByScroll = true;
        checkUi_floatingButtonVisible();
        ContactsAdapter contactsAdapter = this.listViewAdapter;
        if (contactsAdapter != null) {
            contactsAdapter.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        Activity parentActivity;
        super.onBecomeFullyVisible();
        if (!this.checkPermission || (parentActivity = getParentActivity()) == null) {
            return;
        }
        this.checkPermission = false;
        if (parentActivity.checkSelfPermission("android.permission.READ_CONTACTS") != 0) {
            if (parentActivity.shouldShowRequestPermissionRationale("android.permission.READ_CONTACTS")) {
                AlertDialog alertDialogCreate = AlertsCreator.createContactsPermissionDialog(parentActivity, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i) {
                        this.f$0.lambda$onBecomeFullyVisible$13(i);
                    }
                }).create();
                this.permissionDialog = alertDialogCreate;
                showDialog(alertDialogCreate);
                return;
            }
            askForPermissons(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBecomeFullyVisible$13(int i) {
        this.askAboutContacts = i != 0;
        if (i == 0) {
            return;
        }
        askForPermissons(false);
    }

    protected RecyclerListView getListView() {
        return this.listView;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    protected void onDialogDismiss(Dialog dialog) {
        super.onDialogDismiss(dialog);
        AlertDialog alertDialog = this.permissionDialog;
        if (alertDialog == null || dialog != alertDialog || getParentActivity() == null || !this.askAboutContacts) {
            return;
        }
        askForPermissons(false);
    }

    private void askForPermissons(boolean z) {
        Activity parentActivity = getParentActivity();
        if (parentActivity == null || !UserConfig.getInstance(this.currentAccount).syncContacts || parentActivity.checkSelfPermission("android.permission.READ_CONTACTS") == 0) {
            return;
        }
        if (z && this.askAboutContacts) {
            showDialog(AlertsCreator.createContactsPermissionDialog(parentActivity, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda11
                @Override // org.telegram.messenger.MessagesStorage.IntCallback
                public final void run(int i) {
                    this.f$0.lambda$askForPermissons$14(i);
                }
            }).create());
            return;
        }
        this.permissionRequestTime = SystemClock.elapsedRealtime();
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.READ_CONTACTS");
        arrayList.add("android.permission.WRITE_CONTACTS");
        arrayList.add("android.permission.GET_ACCOUNTS");
        try {
            parentActivity.requestPermissions((String[]) arrayList.toArray(new String[0]), 1);
        } catch (Exception e) {
            FileLog.m955e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$askForPermissons$14(int i) {
        MessagesController.getGlobalNotificationsSettings().edit().putBoolean("askAboutContacts2", false).commit();
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsPermissionBadgeCheck, new Object[0]);
        this.askAboutContacts = i != 0;
        if (i == 0) {
            return;
        }
        askForPermissons(false);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        if (i == 1) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (iArr.length > i2 && "android.permission.READ_CONTACTS".equals(strArr[i2])) {
                    if (iArr[i2] == 0) {
                        ContactsController.getInstance(this.currentAccount).forceImportContacts();
                        return;
                    }
                    SharedPreferences.Editor editorEdit = MessagesController.getGlobalNotificationsSettings().edit();
                    this.askAboutContacts = false;
                    editorEdit.putBoolean("askAboutContacts", false).putBoolean("askAboutContacts2", false).apply();
                    if (SystemClock.elapsedRealtime() - this.permissionRequestTime < 200) {
                        try {
                            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                            intent.setData(Uri.fromParts("package", ApplicationLoader.applicationContext.getPackageName(), null));
                            getParentActivity().startActivity(intent);
                            return;
                        } catch (Exception e) {
                            FileLog.m955e(e);
                            return;
                        }
                    }
                    return;
                }
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.closeSearchField();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.contactsDidLoad) {
            ContactsAdapter contactsAdapter = this.listViewAdapter;
            if (contactsAdapter != null) {
                if (!this.sortByName) {
                    contactsAdapter.setSortType(2, true);
                }
                this.listViewAdapter.notifyDataSetChanged();
            }
            if (this.searchListViewAdapter != null) {
                RecyclerView.Adapter adapter = this.listView.getAdapter();
                SearchAdapter searchAdapter = this.searchListViewAdapter;
                if (adapter == searchAdapter) {
                    searchAdapter.searchDialogs(this.searchQuery);
                    return;
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.updateInterfaces) {
            int iIntValue = ((Integer) objArr[0]).intValue();
            if ((MessagesController.UPDATE_MASK_AVATAR & iIntValue) != 0 || (MessagesController.UPDATE_MASK_NAME & iIntValue) != 0 || (MessagesController.UPDATE_MASK_STATUS & iIntValue) != 0) {
                updateVisibleRows(iIntValue);
            }
            if ((iIntValue & MessagesController.UPDATE_MASK_STATUS) == 0 || this.sortByName || this.listViewAdapter == null) {
                return;
            }
            scheduleSort();
            return;
        }
        if (i == NotificationCenter.encryptedChatCreated) {
            if (this.createSecretChat && this.creatingChat) {
                TLRPC.EncryptedChat encryptedChat = (TLRPC.EncryptedChat) objArr[0];
                Bundle bundle = new Bundle();
                bundle.putInt("enc_id", encryptedChat.id);
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
                presentFragment(new ChatActivity(bundle), false);
                return;
            }
            return;
        }
        if (i != NotificationCenter.closeChats || this.creatingChat) {
            return;
        }
        removeSelfFromStack(true);
    }

    private void scheduleSort() {
        if (this.scheduled) {
            return;
        }
        this.scheduled = true;
        AndroidUtilities.cancelRunOnUIThread(this.sortContactsRunnable);
        AndroidUtilities.runOnUIThread(this.sortContactsRunnable, 5000L);
    }

    private void updateVisibleRows(int i) {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.listView.getChildAt(i2);
                if (childAt instanceof UserCell) {
                    ((UserCell) childAt).update(i);
                }
            }
        }
    }

    public void setDelegate(ContactsActivityDelegate contactsActivityDelegate) {
        this.delegate = contactsActivityDelegate;
    }

    public void setInitialSearchString(String str) {
        this.initialSearchString = str;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$15();
            }

            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        if (!this.hasMainTabs) {
            arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundWhite));
        }
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCH, null, null, null, null, Theme.key_actionBarDefaultSearch));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCHPLACEHOLDER, null, null, null, null, Theme.key_actionBarDefaultSearchPlaceholder));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SECTIONS, new Class[]{LetterSectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, Theme.key_fastScrollActive));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, Theme.key_fastScrollInactive));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, Theme.key_fastScrollText));
        int i = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteGrayText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, null, Theme.avatarDrawables, null, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayIcon));
        if (this.floatingButton != null) {
            arrayList.add(new ThemeDescription(this.floatingButton.imageView, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_chats_actionIcon));
            arrayList.add(new ThemeDescription(this.floatingButton.imageView, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_chats_actionBackground));
            arrayList.add(new ThemeDescription(this.floatingButton.imageView, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, Theme.key_chats_actionPressedBackground));
        }
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{GraySectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_graySectionText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{GraySectionCell.class}, null, null, null, Theme.key_graySection));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ProfileSearchCell.class}, null, new Drawable[]{Theme.dialogs_verifiedCheckDrawable}, null, Theme.key_chats_verifiedCheck));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ProfileSearchCell.class}, null, new Drawable[]{Theme.dialogs_verifiedDrawable}, null, Theme.key_chats_verifiedBackground));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ProfileSearchCell.class}, Theme.dialogs_offlinePaint, null, null, Theme.key_windowBackgroundWhiteGrayText3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ProfileSearchCell.class}, Theme.dialogs_onlinePaint, null, null, Theme.key_windowBackgroundWhiteBlueText3));
        TextPaint[] textPaintArr = Theme.dialogs_namePaint;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ProfileSearchCell.class}, (String[]) null, new Paint[]{textPaintArr[0], textPaintArr[1], Theme.dialogs_searchNamePaint}, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_name));
        TextPaint[] textPaintArr2 = Theme.dialogs_nameEncryptedPaint;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ProfileSearchCell.class}, (String[]) null, new Paint[]{textPaintArr2[0], textPaintArr2[1], Theme.dialogs_searchNameEncryptedPaint}, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_secretName));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$15() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof UserCell) {
                    ((UserCell) childAt).update(0);
                } else if (childAt instanceof ProfileSearchCell) {
                    ((ProfileSearchCell) childAt).update(0);
                }
            }
        }
        ImageView imageView = this.actionModeCloseView;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_actionBarActionModeDefaultIcon), PorterDuff.Mode.MULTIPLY));
            this.actionModeCloseView.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_actionBarActionModeDefaultSelector)));
        }
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.updateColors();
        }
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.contentView;
        if (sizeNotifierFrameLayout != null) {
            sizeNotifierFrameLayout.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        }
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        if (i == 0) {
            checkUi_searchButton();
        } else if (i == 2) {
            checkUi_searchButton();
            checkUi_sortItem();
        }
    }

    @Override // org.telegram.ui.MainTabsActivity.TabFragmentDelegate
    public boolean canParentTabsSlide(MotionEvent motionEvent, boolean z) {
        RecyclerListView recyclerListView = this.listView;
        return recyclerListView == null || recyclerListView.getFastScroll() == null || !this.listView.getFastScroll().isPressed();
    }

    @Override // org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider.Listener
    public View getAnimatedInsetsTargetView() {
        return this.fragmentView;
    }

    @Override // org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider.Listener
    public void onAnimatedInsetsChanged(View view, WindowInsetsCompat windowInsetsCompat) {
        this.imeInsetAnimatedHeight = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime()).bottom;
        checkUi_emptyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        this.navigationBarHeight = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).bottom;
        checkUi_listViewPadding();
        checkUi_floatingButtonPosition();
        checkUi_emptyView();
        return WindowInsetsCompat.CONSUMED;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.navigationBarHeight = i4;
        checkUi_listViewPadding();
        checkUi_floatingButtonPosition();
        checkUi_emptyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_emptyView() {
        StickerEmptyView stickerEmptyView = this.emptyView;
        if (stickerEmptyView != null) {
            stickerEmptyView.setKeyboardHeight(Math.max(this.navigationBarHeight + this.additionNavigationBarHeight, this.imeInsetAnimatedHeight), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_listViewPadding() {
        this.listView.setPadding(0, AndroidUtilities.dp(this.ADDITIONAL_LIST_HEIGHT_DP + 44) + this.actionBar.getMeasuredHeight(), 0, AndroidUtilities.dp(this.ADDITIONAL_LIST_HEIGHT_DP) + this.navigationBarHeight + this.additionNavigationBarHeight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_searchFieldHint() {
        ContactsAdapter contactsAdapter = this.listViewAdapter;
        boolean z = contactsAdapter != null && contactsAdapter.isEmpty();
        if (this.lastIsEmpty != z || TextUtils.isEmpty(this.searchField.editText.getHint())) {
            this.searchField.editText.setHint(LocaleController.getString(z ? C2484R.string.SearchPeopleByUsername : C2484R.string.SearchContacts));
            this.searchField.editText.setContentDescription(LocaleController.getString(z ? C2484R.string.SearchPeopleByUsername : C2484R.string.SearchContacts));
            this.lastIsEmpty = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_searchFieldY() {
        float y = this.listView.getY() + this.listView.getPaddingTop();
        int i = 0;
        while (true) {
            if (i >= this.listView.getChildCount()) {
                break;
            }
            View childAt = this.listView.getChildAt(i);
            int childAdapterPosition = this.listView.getChildAdapterPosition(childAt);
            if (childAdapterPosition == 0) {
                RecyclerView.ItemDecoration itemDecorationAt = this.listView.getItemDecorationAt(i);
                Rect rect = AndroidUtilities.rectTmp2;
                RecyclerListView recyclerListView = this.listView;
                itemDecorationAt.getItemOffsets(rect, childAt, recyclerListView, recyclerListView.mState);
                y = this.listView.getY() + (childAt.getY() - (this.listViewAdapter.isEmptyWithMainTabs ? 0 : rect.top));
            } else {
                if (childAdapterPosition > 0) {
                    y = -AndroidUtilities.dp(52.0f);
                    break;
                }
                i++;
            }
        }
        this.searchField.setTranslationY(AndroidUtilities.lerp(y, this.listView.getY() + this.listView.getPaddingTop(), this.animatorSearchHasQuery.getFloatValue()) - AndroidUtilities.dp(48.0f));
        this.animatorSearchFieldVisible.setValue(y > (this.listView.getY() + ((float) this.listView.getPaddingTop())) - ((float) AndroidUtilities.dp(12.0f)), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_sortItem() {
        float floatValue = 1.0f - this.animatorSearchHasQuery.getFloatValue();
        ContactsAdapter contactsAdapter = this.listViewAdapter;
        FragmentFloatingButton.setAnimatedVisibility(this.sortItem, floatValue * ((contactsAdapter == null || contactsAdapter.isEmpty()) ? 0.0f : 1.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_searchButton() {
        FragmentFloatingButton.setAnimatedVisibility(this.searchItem, (1.0f - this.animatorSearchFieldVisible.getFloatValue()) * (1.0f - this.animatorSearchHasQuery.getFloatValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_floatingButtonPosition() {
        FragmentFloatingButton fragmentFloatingButton = this.floatingButton;
        if (fragmentFloatingButton != null) {
            fragmentFloatingButton.setTranslationY(((-this.navigationBarHeight) - this.additionFloatingButtonOffset) - this.additionalFloatingTranslation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_floatingButtonVisible() {
        ContactsAdapter contactsAdapter;
        FragmentFloatingButton fragmentFloatingButton = this.floatingButton;
        boolean z = false;
        if (fragmentFloatingButton != null && (contactsAdapter = this.listViewAdapter) != null) {
            fragmentFloatingButton.setButtonVisible((!this.floatingButtonVisibleByScroll || this.searching || contactsAdapter.isEmpty()) ? false : true, true);
        }
        if (this.mainTabsActivityController != null) {
            if (ExteraConfig.BottomNavigationBar.visible() && ((!ExteraConfig.BottomNavigationBar.floating() || this.floatingButtonVisibleByScroll) && !this.searching)) {
                z = true;
            }
            this.mainTabsActivityController.setTabsVisible(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: blur3_InvalidateBlur, reason: merged with bridge method [inline-methods] */
    public void lambda$createView$3() {
        if (Build.VERSION.SDK_INT < 31 || this.scrollableViewNoiseSuppressor == null) {
            return;
        }
        int iDp = AndroidUtilities.dp(48.0f);
        int iDp2 = AndroidUtilities.dp(48.0f);
        int measuredHeight = (this.fragmentView.getMeasuredHeight() - this.navigationBarHeight) - AndroidUtilities.dp(8.0f);
        int iDp3 = measuredHeight - AndroidUtilities.dp(56.0f);
        this.iBlur3PositionActionBar.set(0.0f, -iDp, this.fragmentView.getMeasuredWidth(), this.actionBar.getMeasuredHeight() + iDp + iDp2);
        this.iBlur3PositionMainTabs.set(0.0f, iDp3, this.fragmentView.getMeasuredWidth(), measuredHeight);
        this.iBlur3PositionMainTabs.inset(0.0f, LiteMode.isEnabled(262144) ? 0.0f : -AndroidUtilities.dp(48.0f));
        this.scrollableViewNoiseSuppressor.setupRenderNodes(this.iBlur3Positions, (this.hasMainTabs && ExteraConfig.BottomNavigationBar.visible()) ? 2 : 1);
        this.scrollableViewNoiseSuppressor.invalidateResultRenderNodes(this.iBlur3Capture, this.fragmentView.getMeasuredWidth(), this.fragmentView.getMeasuredHeight());
    }

    @Override // org.telegram.ui.MainTabsActivity.TabFragmentDelegate
    public BlurredBackgroundSourceRenderNode getGlassSource() {
        return this.iBlur3SourceGlass;
    }

    @Override // org.telegram.ui.MainTabsActivity.TabFragmentDelegate
    public void onParentScrollToTop() {
        if (this.layoutManager.findFirstVisibleItemPosition() < 15) {
            this.listView.smoothScrollToPosition(0);
        } else {
            this.scrollHelper.setScrollDirection(1);
            this.scrollHelper.scrollToPosition(0, 0, false, true);
        }
        this.animatorSearchFieldVisible.setValue(true, true);
    }

    private void showItemOptions() {
        final ContactsActivity contactsActivity = this.hasMainTabs ? null : this;
        ItemOptions.makeOptions(this, this.otherItem).setDimAlpha(8).addIf(getUserConfig().showContactsTab, C2484R.drawable.msg_archive_hide, LocaleController.getString(C2484R.string.HideContactsTab), new Runnable() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showItemOptions$16(contactsActivity);
            }
        }).addIf(!getUserConfig().showContactsTab, C2484R.drawable.menu_add_tab_24, LocaleController.getString(C2484R.string.ShowContactsTab), new Runnable() { // from class: org.telegram.ui.ContactsActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showItemOptions$17(contactsActivity);
            }
        }).translate(0.0f, -AndroidUtilities.dp(64.0f)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showItemOptions$16(ContactsActivity contactsActivity) {
        getUserConfig().setShowContactsTab(contactsActivity, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showItemOptions$17(ContactsActivity contactsActivity) {
        getUserConfig().setShowContactsTab(contactsActivity, true);
    }
}
