package org.telegram.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.preferences.GeneralPreferencesActivity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.TranslateController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.LanguageCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Cells.TextRadioCell;
import org.telegram.ui.Cells.TextSettingsCell;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EmptyTextProgressView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.ui.Components.RecyclerListView;

/* JADX INFO: loaded from: classes6.dex */
public class LanguageSelectActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private EmptyTextProgressView emptyView;
    private int infoPosition1;
    private int languagesStartsPosition;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private ActionBarMenuItem searchItem;
    private ListAdapter searchListViewAdapter;
    private ArrayList<LocaleController.LocaleInfo> searchResult;
    private boolean searchWas;
    private boolean searching;
    private ArrayList<LocaleController.LocaleInfo> sortedLanguages;
    private ArrayList<LocaleController.LocaleInfo> unofficialLanguages;
    private int settingsFromPosition = -1;
    private int settingsToPosition = -1;

    @Keep
    private int manualTranslationPosition = -1;

    @Keep
    private int autoTranslationPosition = -1;

    @Keep
    private int doNotTranslatePosition = -1;

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        fillLanguages();
        LocaleController.getInstance().loadRemoteLanguages(this.currentAccount, false);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.suggestedLangpack);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.suggestedLangpack);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.searching = false;
        this.searchWas = false;
        this.actionBar.setBackButtonImage(C2665R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(C2665R.string.Language));
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null && iNavigationLayout.isRightLayout()) {
            this.actionBar.setBackButtonImage(C2665R.drawable.ic_ab_close);
        }
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.LanguageSelectActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    LanguageSelectActivity.this.finishFragment();
                }
            }
        });
        ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.createMenu().addItem(0, C2665R.drawable.outline_header_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.LanguageSelectActivity.2
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                LanguageSelectActivity.this.searching = true;
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                LanguageSelectActivity.this.search(null);
                LanguageSelectActivity.this.searching = false;
                LanguageSelectActivity.this.searchWas = false;
                if (LanguageSelectActivity.this.listView != null) {
                    LanguageSelectActivity.this.emptyView.setVisibility(8);
                    LanguageSelectActivity.this.listView.setAdapter(LanguageSelectActivity.this.listAdapter);
                }
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                String string = editText.getText().toString();
                LanguageSelectActivity.this.search(string);
                int length = string.length();
                LanguageSelectActivity languageSelectActivity = LanguageSelectActivity.this;
                if (length != 0) {
                    languageSelectActivity.searchWas = true;
                    if (LanguageSelectActivity.this.listView != null) {
                        LanguageSelectActivity.this.listView.setAdapter(LanguageSelectActivity.this.searchListViewAdapter);
                        return;
                    }
                    return;
                }
                languageSelectActivity.searching = false;
                LanguageSelectActivity.this.searchWas = false;
                if (LanguageSelectActivity.this.listView != null) {
                    LanguageSelectActivity.this.emptyView.setVisibility(8);
                    LanguageSelectActivity.this.listView.setAdapter(LanguageSelectActivity.this.listAdapter);
                }
            }
        });
        this.searchItem = actionBarMenuItemSearchListener;
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString(C2665R.string.Search));
        this.listAdapter = new ListAdapter(context, false);
        this.searchListViewAdapter = new ListAdapter(context, true);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        FrameLayout frameLayout2 = (FrameLayout) this.fragmentView;
        EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context);
        this.emptyView = emptyTextProgressView;
        emptyTextProgressView.setText(LocaleController.getString(C2665R.string.NoResult));
        this.emptyView.showTextView();
        this.emptyView.setShowAtCenter(true);
        frameLayout2.addView(this.emptyView, LayoutHelper.createFrame(-1, -1.0f));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setSections();
        this.actionBar.setAdaptiveBackground(this.listView);
        this.listView.setEmptyView(this.emptyView);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setAdapter(this.listAdapter);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.LanguageSelectActivity.3
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                LanguageSelectActivity.this.listView.invalidate();
                LanguageSelectActivity.this.listView.updateSelector();
            }
        };
        defaultItemAnimator.setDurations(400L);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.listView.setItemAnimator(defaultItemAnimator);
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                this.f$0.lambda$createView$3(view, i);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i) {
                return this.f$0.lambda$createView$5(view, i);
            }
        });
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.LanguageSelectActivity.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                if (i == 1) {
                    AndroidUtilities.hideKeyboard(LanguageSelectActivity.this.getParentActivity().getCurrentFocus());
                }
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
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
    public /* synthetic */ void lambda$createView$3(View view, int i) {
        LocaleController.LocaleInfo localeInfo;
        try {
            if (view instanceof TextCheckCell) {
                boolean z = getContextValue() || getChatValue();
                if (i == this.manualTranslationPosition) {
                    boolean z2 = !getContextValue();
                    getMessagesController().getTranslateController().setContextTranslateEnabled(z2);
                    ((TextCheckCell) view).setChecked(z2);
                    NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateSearchSettings, new Object[0]);
                } else if (i == this.autoTranslationPosition) {
                    boolean chatValue = getChatValue();
                    boolean z3 = !chatValue;
                    if (!chatValue && !getUserConfig().isPremium()) {
                        showDialog(new PremiumFeatureBottomSheet(this, 13, false));
                        return;
                    } else {
                        getMessagesController().getTranslateController().setChatTranslateEnabled(z3);
                        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateSearchSettings, new Object[0]);
                        ((TextCheckCell) view).setChecked(z3);
                    }
                }
                boolean z4 = getContextValue() || getChatValue();
                if (z4 != z) {
                    int i2 = this.autoTranslationPosition;
                    if (i2 < 0) {
                        i2 = this.manualTranslationPosition;
                    }
                    TextCheckCell textCheckCell = null;
                    for (int i3 = 0; i3 < this.listView.getChildCount(); i3++) {
                        View childAt = this.listView.getChildAt(i3);
                        if (this.listView.getChildAdapterPosition(childAt) == i2 && (childAt instanceof TextCheckCell)) {
                            textCheckCell = (TextCheckCell) childAt;
                        }
                    }
                    if (textCheckCell != null) {
                        textCheckCell.setDivider(z4);
                    }
                    ListAdapter listAdapter = this.listAdapter;
                    if (z4) {
                        listAdapter.notifyItemInserted(i2 + 1);
                        return;
                    } else {
                        listAdapter.notifyItemRemoved(i2 + 1);
                        return;
                    }
                }
                return;
            }
            if (view instanceof TextSettingsCell) {
                presentFragment(new GeneralPreferencesActivity());
                return;
            }
            if (getParentActivity() != null && this.parentLayout != null && (view instanceof TextRadioCell)) {
                Object[] objArr = this.listView.getAdapter() == this.searchListViewAdapter;
                if (objArr == false) {
                    i -= this.languagesStartsPosition;
                }
                if (objArr != false) {
                    localeInfo = this.searchResult.get(i);
                } else if (!this.unofficialLanguages.isEmpty() && i >= 0 && i < this.unofficialLanguages.size()) {
                    localeInfo = this.unofficialLanguages.get(i);
                } else {
                    if (!this.unofficialLanguages.isEmpty()) {
                        i -= this.unofficialLanguages.size() + 1;
                    }
                    localeInfo = this.sortedLanguages.get(i);
                }
                LocaleController.LocaleInfo localeInfo2 = localeInfo;
                if (localeInfo2 != null) {
                    final boolean z5 = LocaleController.getInstance().getCurrentLocaleInfo() == localeInfo2;
                    final AlertDialog alertDialog = new AlertDialog(getContext(), 3);
                    if (!z5) {
                        alertDialog.showDelayed(500L);
                    }
                    getMessagesController().getTranslateController().reset();
                    final int iApplyLanguage = LocaleController.getInstance().applyLanguage(localeInfo2, true, false, false, true, this.currentAccount, new Runnable() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$createView$1(alertDialog, z5);
                        }
                    });
                    if (iApplyLanguage != 0) {
                        alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda6
                            @Override // android.content.DialogInterface.OnCancelListener
                            public final void onCancel(DialogInterface dialogInterface) {
                                this.f$0.lambda$createView$2(iApplyLanguage, dialogInterface);
                            }
                        });
                    }
                    TranslateController.invalidateSuggestedLanguageCodes();
                }
            }
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(AlertDialog alertDialog, boolean z) {
        alertDialog.dismiss();
        if (z) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$0();
            }
        }, 10L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0() {
        this.actionBar.closeSearchField();
        updateLanguage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(int i, DialogInterface dialogInterface) {
        ConnectionsManager.getInstance(this.currentAccount).cancelRequest(i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$5(View view, int i) {
        final LocaleController.LocaleInfo localeInfo;
        try {
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        if (getParentActivity() != null && this.parentLayout != null && (view instanceof TextRadioCell)) {
            boolean z = this.listView.getAdapter() == this.searchListViewAdapter;
            if (!z) {
                i -= this.languagesStartsPosition;
            }
            if (z) {
                localeInfo = this.searchResult.get(i);
            } else if (!this.unofficialLanguages.isEmpty() && i >= 0 && i < this.unofficialLanguages.size()) {
                localeInfo = this.unofficialLanguages.get(i);
            } else {
                if (!this.unofficialLanguages.isEmpty()) {
                    i -= this.unofficialLanguages.size() + 1;
                }
                localeInfo = this.sortedLanguages.get(i);
            }
            if (localeInfo != null && localeInfo.pathToFile != null && !localeInfo.builtIn && (!localeInfo.isRemote() || localeInfo.serverIndex == Integer.MAX_VALUE)) {
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                builder.setTitle(LocaleController.getString(C2665R.string.DeleteLocalizationTitle));
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("DeleteLocalizationText", C2665R.string.DeleteLocalizationText, localeInfo.name)));
                builder.setPositiveButton(LocaleController.getString(C2665R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda8
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$createView$4(localeInfo, alertDialog, i2);
                    }
                });
                builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null);
                AlertDialog alertDialogCreate = builder.create();
                showDialog(alertDialogCreate);
                TextView textView = (TextView) alertDialogCreate.getButton(-1);
                if (textView != null) {
                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                }
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(LocaleController.LocaleInfo localeInfo, AlertDialog alertDialog, int i) {
        if (LocaleController.getInstance().deleteLanguage(localeInfo, this.currentAccount)) {
            fillLanguages();
            ArrayList<LocaleController.LocaleInfo> arrayList = this.searchResult;
            if (arrayList != null) {
                arrayList.remove(localeInfo);
            }
            ListAdapter listAdapter = this.listAdapter;
            if (listAdapter != null) {
                listAdapter.notifyDataSetChanged();
            }
            ListAdapter listAdapter2 = this.searchListViewAdapter;
            if (listAdapter2 != null) {
                listAdapter2.notifyDataSetChanged();
            }
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i != NotificationCenter.suggestedLangpack || this.listAdapter == null) {
            return;
        }
        fillLanguages();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$didReceivedNotification$6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$6() {
        this.listAdapter.notifyDataSetChanged();
    }

    private void fillLanguages() {
        final LocaleController.LocaleInfo currentLocaleInfo = LocaleController.getInstance().getCurrentLocaleInfo();
        Comparator comparator = new Comparator() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return LanguageSelectActivity.$r8$lambda$eQXL73GlwHTjQxtwiJ9rFtwNBxA(currentLocaleInfo, (LocaleController.LocaleInfo) obj, (LocaleController.LocaleInfo) obj2);
            }
        };
        this.sortedLanguages = new ArrayList<>();
        this.unofficialLanguages = new ArrayList<>(LocaleController.getInstance().unofficialLanguages);
        ArrayList<LocaleController.LocaleInfo> arrayList = LocaleController.getInstance().languages;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            LocaleController.LocaleInfo localeInfo = arrayList.get(i);
            if (localeInfo.serverIndex != Integer.MAX_VALUE) {
                this.sortedLanguages.add(localeInfo);
            } else {
                this.unofficialLanguages.add(localeInfo);
            }
        }
        Collections.sort(this.sortedLanguages, comparator);
        Collections.sort(this.unofficialLanguages, comparator);
    }

    public static /* synthetic */ int $r8$lambda$eQXL73GlwHTjQxtwiJ9rFtwNBxA(LocaleController.LocaleInfo localeInfo, LocaleController.LocaleInfo localeInfo2, LocaleController.LocaleInfo localeInfo3) {
        if (localeInfo2 == localeInfo) {
            return -1;
        }
        if (localeInfo3 == localeInfo) {
            return 1;
        }
        int i = localeInfo2.serverIndex;
        int i2 = localeInfo3.serverIndex;
        if (i == i2) {
            return localeInfo2.name.compareTo(localeInfo3.name);
        }
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        super.onBecomeFullyVisible();
        LocaleController.getInstance().checkForcePatchLangpack(this.currentAccount, new Runnable() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onBecomeFullyVisible$8();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBecomeFullyVisible$8() {
        if (this.isPaused) {
            return;
        }
        updateLanguage();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    public void search(String str) {
        if (str == null) {
            this.searching = false;
            this.searchResult = null;
            if (this.listView != null) {
                this.emptyView.setVisibility(8);
                this.listView.setAdapter(this.listAdapter);
                return;
            }
            return;
        }
        processSearch(str);
    }

    private void updateLanguage() {
        if (this.actionBar != null) {
            String string = LocaleController.getString(C2665R.string.Language);
            if (!TextUtils.equals(this.actionBar.getTitle(), string)) {
                this.actionBar.setTitleAnimated(string, true, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
            }
        }
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyItemRangeChanged(0, listAdapter.getItemCount());
        }
    }

    private void processSearch(final String str) {
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processSearch$9(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSearch$9(String str) {
        if (str.trim().toLowerCase().length() == 0) {
            updateSearchResults(new ArrayList<>());
            return;
        }
        System.currentTimeMillis();
        ArrayList<LocaleController.LocaleInfo> arrayList = new ArrayList<>();
        int size = this.unofficialLanguages.size();
        for (int i = 0; i < size; i++) {
            LocaleController.LocaleInfo localeInfo = this.unofficialLanguages.get(i);
            if (localeInfo.name.toLowerCase().startsWith(str) || localeInfo.nameEnglish.toLowerCase().startsWith(str)) {
                arrayList.add(localeInfo);
            }
        }
        int size2 = this.sortedLanguages.size();
        for (int i2 = 0; i2 < size2; i2++) {
            LocaleController.LocaleInfo localeInfo2 = this.sortedLanguages.get(i2);
            if (localeInfo2.name.toLowerCase().startsWith(str) || localeInfo2.nameEnglish.toLowerCase().startsWith(str)) {
                arrayList.add(localeInfo2);
            }
        }
        updateSearchResults(arrayList);
    }

    private void updateSearchResults(final ArrayList<LocaleController.LocaleInfo> arrayList) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.LanguageSelectActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateSearchResults$10(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSearchResults$10(ArrayList arrayList) {
        this.searchResult = arrayList;
        this.searchListViewAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getContextValue() {
        return getMessagesController().getTranslateController().isContextTranslateEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getChatValue() {
        return getMessagesController().getTranslateController().isFeatureAvailable();
    }

    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;
        private boolean search;

        public ListAdapter(Context context, boolean z) {
            this.mContext = context;
            this.search = z;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            return itemViewType == 0 || itemViewType == 4 || itemViewType == 5 || itemViewType == 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            boolean z = this.search;
            LanguageSelectActivity languageSelectActivity = LanguageSelectActivity.this;
            if (z) {
                if (languageSelectActivity.searchResult == null) {
                    return 0;
                }
                return LanguageSelectActivity.this.searchResult.size();
            }
            int size = 4 + languageSelectActivity.sortedLanguages.size();
            return !LanguageSelectActivity.this.unofficialLanguages.isEmpty() ? size + LanguageSelectActivity.this.unofficialLanguages.size() + 1 : size;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View textRadioCell;
            if (i == 0) {
                textRadioCell = new TextRadioCell(this.mContext);
            } else if (i == 2) {
                textRadioCell = new TextCheckCell(this.mContext);
            } else if (i == 3) {
                textRadioCell = new HeaderCell(this.mContext);
            } else if (i == 4 || i == 5) {
                textRadioCell = new TextSettingsCell(this.mContext);
            } else if (i == 6) {
                textRadioCell = new TextInfoPrivacyCell(this.mContext);
            } else {
                textRadioCell = new ShadowSectionCell(this.mContext);
            }
            return new RecyclerListView.Holder(textRadioCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof TextRadioCell) {
                ((TextRadioCell) view).updateRTL();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:68:0x0159 A[PHI: r0
  0x0159: PHI (r0v10 org.telegram.messenger.LocaleController$LocaleInfo) = 
  (r0v3 org.telegram.messenger.LocaleController$LocaleInfo)
  (r0v7 org.telegram.messenger.LocaleController$LocaleInfo)
  (r0v11 org.telegram.messenger.LocaleController$LocaleInfo)
 binds: [B:86:0x01d2, B:76:0x0191, B:67:0x0157] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x015c A[PHI: r0
  0x015c: PHI (r0v8 org.telegram.messenger.LocaleController$LocaleInfo) = 
  (r0v3 org.telegram.messenger.LocaleController$LocaleInfo)
  (r0v7 org.telegram.messenger.LocaleController$LocaleInfo)
  (r0v11 org.telegram.messenger.LocaleController$LocaleInfo)
 binds: [B:86:0x01d2, B:76:0x0191, B:67:0x0157] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            boolean z;
            boolean z2 = true;
            switch (viewHolder.getItemViewType()) {
                case 0:
                    if (!this.search) {
                        i -= LanguageSelectActivity.this.languagesStartsPosition;
                    }
                    TextRadioCell textRadioCell = (TextRadioCell) viewHolder.itemView;
                    textRadioCell.updateRTL();
                    LocaleController.LocaleInfo localeInfo = null;
                    if (this.search) {
                        if (i >= 0 && i < LanguageSelectActivity.this.searchResult.size()) {
                            localeInfo = (LocaleController.LocaleInfo) LanguageSelectActivity.this.searchResult.get(i);
                        }
                        z = i == LanguageSelectActivity.this.searchResult.size() - 1;
                    } else if (!LanguageSelectActivity.this.unofficialLanguages.isEmpty() && i >= 0 && i < LanguageSelectActivity.this.unofficialLanguages.size()) {
                        localeInfo = (LocaleController.LocaleInfo) LanguageSelectActivity.this.unofficialLanguages.get(i);
                        if (i == LanguageSelectActivity.this.unofficialLanguages.size() - 1) {
                        }
                    } else {
                        if (!LanguageSelectActivity.this.unofficialLanguages.isEmpty()) {
                            i -= LanguageSelectActivity.this.unofficialLanguages.size() + 1;
                        }
                        if (i >= 0 && i < LanguageSelectActivity.this.sortedLanguages.size()) {
                            localeInfo = (LocaleController.LocaleInfo) LanguageSelectActivity.this.sortedLanguages.get(i);
                        }
                        if (i == LanguageSelectActivity.this.sortedLanguages.size() - 1) {
                        }
                    }
                    if (localeInfo != null) {
                        boolean zIsLocal = localeInfo.isLocal();
                        String str = localeInfo.name;
                        if (zIsLocal) {
                            textRadioCell.setTextAndValueAndCheck(String.format("%1$s (%2$s)", str, LocaleController.getString(C2665R.string.LanguageCustom)), localeInfo.nameEnglish, false, false, !z);
                        } else {
                            textRadioCell.setTextAndValueAndCheck(str, localeInfo.nameEnglish, false, false, !z);
                        }
                    }
                    textRadioCell.setChecked(localeInfo == LocaleController.getInstance().getCurrentLocaleInfo());
                    break;
                case 1:
                    if (!this.search) {
                        i--;
                    }
                    ShadowSectionCell shadowSectionCell = (ShadowSectionCell) viewHolder.itemView;
                    if (i == 2 || (!LanguageSelectActivity.this.unofficialLanguages.isEmpty() && i == LanguageSelectActivity.this.unofficialLanguages.size())) {
                        shadowSectionCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C2665R.drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                    } else {
                        shadowSectionCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C2665R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    }
                    break;
                case 2:
                    TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                    textCheckCell.updateRTL();
                    if (i == LanguageSelectActivity.this.manualTranslationPosition) {
                        textCheckCell.setTextAndCheck(LocaleController.getString(C2665R.string.ShowTranslateButton), LanguageSelectActivity.this.getContextValue(), true);
                        textCheckCell.setCheckBoxIcon(0);
                    } else if (i == LanguageSelectActivity.this.autoTranslationPosition) {
                        String string = LocaleController.getString(C2665R.string.ShowTranslateChatButton);
                        boolean chatValue = LanguageSelectActivity.this.getChatValue();
                        if (!LanguageSelectActivity.this.getContextValue() && !LanguageSelectActivity.this.getChatValue()) {
                            z2 = false;
                        }
                        textCheckCell.setTextAndCheck(string, chatValue, z2);
                        textCheckCell.setCheckBoxIcon(LanguageSelectActivity.this.getUserConfig().isPremium() ? 0 : C2665R.drawable.permission_locked);
                    }
                    break;
                case 3:
                    ((HeaderCell) viewHolder.itemView).setText(LocaleController.getString((i == 0 && (LanguageSelectActivity.this.getMessagesController().isTranslationsManualEnabled() || LanguageSelectActivity.this.getMessagesController().isTranslationsAutoEnabled())) ? C2665R.string.TranslateMessages : C2665R.string.Language));
                    break;
                case 4:
                    TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                    textSettingsCell.updateRTL();
                    textSettingsCell.setText(LocaleController.getString(C2665R.string.Preferences), false);
                    break;
                case 5:
                    ((TextSettingsCell) viewHolder.itemView).updateRTL();
                    break;
                case 6:
                    TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    textInfoPrivacyCell.updateRTL();
                    if (i == LanguageSelectActivity.this.infoPosition1) {
                        textInfoPrivacyCell.setText(LocaleController.getString(C2665R.string.TranslateMessagesInfo1));
                        textInfoPrivacyCell.setTopPadding(11);
                        textInfoPrivacyCell.setBottomPadding(16);
                    } else {
                        textInfoPrivacyCell.setTopPadding(0);
                        textInfoPrivacyCell.setBottomPadding(16);
                    }
                    break;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (this.search) {
                return 0;
            }
            int i2 = i - 1;
            if (i == 0) {
                return 3;
            }
            int i3 = i - 2;
            if (i2 == 0) {
                return 4;
            }
            int i4 = i - 3;
            if (i3 == 0) {
                return 1;
            }
            int i5 = i - 4;
            if (i4 == 0) {
                return 3;
            }
            if ((!LanguageSelectActivity.this.unofficialLanguages.isEmpty() && (i5 == LanguageSelectActivity.this.unofficialLanguages.size() || i5 == LanguageSelectActivity.this.unofficialLanguages.size() + LanguageSelectActivity.this.sortedLanguages.size() + 1)) || (LanguageSelectActivity.this.unofficialLanguages.isEmpty() && i5 == LanguageSelectActivity.this.sortedLanguages.size())) {
                return 1;
            }
            LanguageSelectActivity.this.languagesStartsPosition = i - i5;
            return 0;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{LanguageCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCH, null, null, null, null, Theme.key_actionBarDefaultSearch));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCHPLACEHOLDER, null, null, null, null, Theme.key_actionBarDefaultSearchPlaceholder));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_emptyListPlaceholder));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LanguageCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LanguageCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LanguageCell.class}, new String[]{"checkImage"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_featuredStickers_addedIcon));
        return arrayList;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
    }
}
