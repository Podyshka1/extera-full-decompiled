package org.telegram.ui.web;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.RadioColorCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalFragment;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.web.BrowserHistory;

/* JADX INFO: loaded from: classes7.dex */
public class WebBrowserSettings extends UniversalFragment implements NotificationCenter.NotificationCenterDelegate {
    private Drawable addIcon;
    private long cacheSize;
    public int clearCacheRow;
    public int clearCookiesRow;
    public int clearHistoryRow;
    public int clearListRow;
    private long cookiesSize;
    public int enableRow;
    public int historyRow;
    private long historySize;
    public int neverOpenRow;
    public int searchRow;
    private Utilities.Callback<BrowserHistory.Entry> whenHistoryClicked;

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        return false;
    }

    public WebBrowserSettings(Utilities.Callback<BrowserHistory.Entry> callback) {
        this.whenHistoryClicked = callback;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        loadSizes();
        getNotificationCenter().addObserver(this, NotificationCenter.webBrowserSettingsUpdate);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.webBrowserSettingsUpdate);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalRecyclerView universalRecyclerView;
        if (i != NotificationCenter.webBrowserSettingsUpdate || (universalRecyclerView = this.listView) == null) {
            return;
        }
        universalRecyclerView.adapter.update(true);
    }

    private void loadSizes() {
        if (BrowserHistory.getHistory(new Utilities.Callback() { // from class: org.telegram.ui.web.WebBrowserSettings$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$loadSizes$0((ArrayList) obj);
            }
        }) != null) {
            this.historySize = r0.size();
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (universalRecyclerView != null && universalRecyclerView.adapter != null && universalRecyclerView.isAttachedToWindow()) {
                this.listView.adapter.update(true);
            }
        }
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.web.WebBrowserSettings$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSizes$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSizes$0(ArrayList arrayList) {
        this.historySize = arrayList.size();
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || universalRecyclerView.adapter == null || !universalRecyclerView.isAttachedToWindow()) {
            return;
        }
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSizes$2() {
        File databasePath = ApplicationLoader.applicationContext.getDatabasePath("webview.db");
        long length = (databasePath == null || !databasePath.exists()) ? 0L : databasePath.length();
        File databasePath2 = ApplicationLoader.applicationContext.getDatabasePath("webviewCache.db");
        if (databasePath2 != null && databasePath2.exists()) {
            length += databasePath2.length();
        }
        File file = new File(ApplicationLoader.applicationContext.getApplicationInfo().dataDir, "app_webview");
        if (file.exists()) {
            length += getDirectorySize(file, Boolean.FALSE);
        }
        File file2 = new File(ApplicationLoader.applicationContext.getApplicationInfo().dataDir, "cache/WebView");
        if (file2.exists()) {
            length += getDirectorySize(file2, null);
        }
        final long j = length;
        File file3 = new File(ApplicationLoader.applicationContext.getApplicationInfo().dataDir, "app_webview");
        final long directorySize = file3.exists() ? getDirectorySize(file3, Boolean.TRUE) : 0L;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.WebBrowserSettings$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSizes$1(j, directorySize);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSizes$1(long j, long j2) {
        this.cacheSize = j;
        this.cookiesSize = j2;
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || universalRecyclerView.adapter == null || !universalRecyclerView.isAttachedToWindow()) {
            return;
        }
        this.listView.adapter.update(true);
    }

    @Override // org.telegram.ui.Components.UniversalFragment, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        Drawable drawableMutate = context.getResources().getDrawable(C2573R.drawable.poll_add_circle).mutate();
        Drawable drawableMutate2 = context.getResources().getDrawable(C2573R.drawable.poll_add_plus).mutate();
        int themedColor = getThemedColor(Theme.key_switchTrackChecked);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
        drawableMutate2.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_checkboxCheck), mode));
        this.addIcon = new CombinedDrawable(drawableMutate, drawableMutate2) { // from class: org.telegram.ui.web.WebBrowserSettings.1
            @Override // org.telegram.ui.Components.CombinedDrawable, android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            {
                this.translateX = AndroidUtilities.dp(2.0f);
            }
        };
        this.fragmentView = super.createView(context);
        this.listView.setSections();
        this.actionBar.setAdaptiveBackground(this.listView);
        return this.fragmentView;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return super.isLightStatusBar();
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public CharSequence getTitle() {
        return LocaleController.getString(C2573R.string.BrowserSettingsTitle);
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        this.enableRow = -1;
        this.clearCookiesRow = -1;
        this.clearCacheRow = -1;
        this.historyRow = -1;
        this.clearHistoryRow = -1;
        this.clearListRow = -1;
        this.searchRow = -1;
        boolean zIsWebBrowserInAppEnabled = getMessagesController().isWebBrowserInAppEnabled();
        this.enableRow = arrayList.size();
        arrayList.add(UItem.asRippleCheck(1, LocaleController.getString(C2573R.string.BrowserSettingsEnable)).setChecked(zIsWebBrowserInAppEnabled));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.BrowserSettingsEnableInfo)));
        if (!zIsWebBrowserInAppEnabled) {
            getMessagesController().isWebBrowserUseCustomTabs();
            arrayList.add(UItem.asCheck(17, LocaleController.getString(C2573R.string.WebBrowserShowCloseButton)).setChecked(getMessagesController().isWebBrowserUseCustomTabs()));
            arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.WebBrowserShowCloseButtonInfo)));
            arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.BrowserSettingsAlwaysOpenInTitle2)));
            this.neverOpenRow = arrayList.size();
            arrayList.add(UItem.asButton(16, this.addIcon, LocaleController.getString(C2573R.string.BrowserSettingsNeverOpenInAdd)).accent());
            List<TL_account.WebDomainException> webBrowserExceptionsList = getMessagesController().getWebBrowserExceptionsList(false);
            for (TL_account.WebDomainException webDomainException : webBrowserExceptionsList) {
                arrayList.add(WebsiteView.Factory.as(webDomainException.domain, webDomainException.title, webDomainException.favicon));
            }
            arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.BrowserSettingsAlwaysOpenInInfo2)));
            if (webBrowserExceptionsList.isEmpty()) {
                return;
            }
            this.clearListRow = arrayList.size();
            arrayList.add(UItem.asButton(5, LocaleController.getString(C2573R.string.BrowserSettingsNeverOpenInClearList2)).red());
            arrayList.add(UItem.asShadow(null));
            return;
        }
        this.clearCookiesRow = arrayList.size();
        int i = C2573R.drawable.menu_clear_cookies;
        String string = LocaleController.getString(C2573R.string.BrowserSettingsCookiesClear);
        long j = this.cookiesSize;
        String fileSize = _UrlKt.FRAGMENT_ENCODE_SET;
        arrayList.add(UItem.asButton(3, i, string, j > 0 ? AndroidUtilities.formatFileSize(j) : _UrlKt.FRAGMENT_ENCODE_SET));
        this.clearCacheRow = arrayList.size();
        int i2 = C2573R.drawable.menu_clear_cache;
        String string2 = LocaleController.getString(C2573R.string.BrowserSettingsCacheClear);
        long j2 = this.cacheSize;
        if (j2 > 0) {
            fileSize = AndroidUtilities.formatFileSize(j2);
        }
        arrayList.add(UItem.asButton(2, i2, string2, fileSize));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.BrowserSettingsCookiesInfo)));
        if (this.historySize > 0) {
            this.historyRow = arrayList.size();
            arrayList.add(UItem.asButton(9, C2573R.drawable.menu_clear_recent, LocaleController.getString(C2573R.string.BrowserSettingsHistoryShow)));
            this.clearHistoryRow = arrayList.size();
            arrayList.add(UItem.asButton(7, C2573R.drawable.menu_clear_cache, LocaleController.getString(C2573R.string.BrowserSettingsHistoryClear), LocaleController.formatPluralStringComma("BrowserSettingsHistoryPages", (int) this.historySize, ',')));
            arrayList.add(UItem.asShadow(null));
        }
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.BrowserSettingsNeverOpenInTitle2)));
        this.neverOpenRow = arrayList.size();
        arrayList.add(UItem.asButton(15, this.addIcon, LocaleController.getString(C2573R.string.BrowserSettingsNeverOpenInAdd)).accent());
        List<TL_account.WebDomainException> webBrowserExceptionsList2 = getMessagesController().getWebBrowserExceptionsList(true);
        for (TL_account.WebDomainException webDomainException2 : webBrowserExceptionsList2) {
            arrayList.add(WebsiteView.Factory.as(webDomainException2.domain, webDomainException2.title, webDomainException2.favicon));
        }
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.BrowserSettingsNeverOpenInInfo2)));
        if (!webBrowserExceptionsList2.isEmpty()) {
            this.clearListRow = arrayList.size();
            arrayList.add(UItem.asButton(5, LocaleController.getString(C2573R.string.BrowserSettingsNeverOpenInClearList2)).red());
            arrayList.add(UItem.asShadow(null));
        }
        this.searchRow = arrayList.size();
        arrayList.add(UItem.asButton(6, C2573R.drawable.msg_search, LocaleController.getString(C2573R.string.SearchEngine), SearchEngine.getCurrent().name));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.BrowserSettingsSearchEngineInfo)));
        if (BuildVars.DEBUG_PRIVATE_VERSION) {
            arrayList.add(UItem.asCheck(12, "adaptable colors").setChecked(SharedConfig.adaptableColorInBrowser));
            arrayList.add(UItem.asCheck(13, "only local IV").setChecked(SharedConfig.onlyLocalInstantView));
        }
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void onClick(UItem uItem, final View view, int i, float f, float f2) {
        int i2 = uItem.id;
        if (i2 == 12) {
            SharedConfig.toggleBrowserAdaptableColors();
            ((TextCheckCell) view).setChecked(SharedConfig.adaptableColorInBrowser);
            return;
        }
        if (i2 == 13) {
            SharedConfig.toggleLocalInstantView();
            ((TextCheckCell) view).setChecked(SharedConfig.onlyLocalInstantView);
            return;
        }
        if (i2 == 17) {
            boolean z = !getMessagesController().isWebBrowserUseCustomTabs();
            getMessagesController().toggleWebBrowserUseCustomTabs(z);
            ((TextCheckCell) view).setChecked(z);
            this.listView.adapter.update(true);
            return;
        }
        if (i2 == 1) {
            getMessagesController().toggleWebBrowserInAppEnabled();
            boolean zIsWebBrowserInAppEnabled = getMessagesController().isWebBrowserInAppEnabled();
            TextCheckCell textCheckCell = (TextCheckCell) view;
            textCheckCell.setChecked(zIsWebBrowserInAppEnabled);
            textCheckCell.setBackgroundColorAnimated(zIsWebBrowserInAppEnabled, Theme.getColor(zIsWebBrowserInAppEnabled ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
            this.listView.adapter.update(true);
            return;
        }
        if (i2 == 10) {
            getMessagesController().toggleWebBrowserUseCustomTabs(true);
            this.listView.adapter.update(true);
            return;
        }
        int i3 = 0;
        if (i2 == 11) {
            getMessagesController().toggleWebBrowserUseCustomTabs(false);
            this.listView.adapter.update(true);
            return;
        }
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        if (i2 == 2) {
            AlertDialog.Builder title = new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(C2573R.string.BrowserSettingsCacheClear));
            int i4 = C2573R.string.BrowserSettingsCacheClearText;
            if (this.cacheSize != 0) {
                str = " (" + AndroidUtilities.formatFileSize(this.cacheSize) + ")";
            }
            title.setMessage(LocaleController.formatString(i4, str)).setPositiveButton(LocaleController.getString(C2573R.string.Clear), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.WebBrowserSettings$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i5) {
                    this.f$0.lambda$onClick$3(alertDialog, i5);
                }
            }).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).makeRed(-1).show();
            return;
        }
        if (i2 == 3) {
            AlertDialog.Builder title2 = new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(C2573R.string.BrowserSettingsCookiesClear));
            int i5 = C2573R.string.BrowserSettingsCookiesClearText;
            if (this.cookiesSize != 0) {
                str = " (" + AndroidUtilities.formatFileSize(this.cookiesSize) + ")";
            }
            title2.setMessage(LocaleController.formatString(i5, str)).setPositiveButton(LocaleController.getString(C2573R.string.Clear), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.WebBrowserSettings$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i6) {
                    this.f$0.lambda$onClick$4(alertDialog, i6);
                }
            }).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).makeRed(-1).show();
            return;
        }
        if (i2 == 7) {
            ArrayList<BrowserHistory.Entry> history = BrowserHistory.getHistory();
            int size = history.size();
            long jMin = LongCompanionObject.MAX_VALUE;
            while (i3 < size) {
                BrowserHistory.Entry entry = history.get(i3);
                i3++;
                jMin = Math.min(jMin, entry.time);
            }
            new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(C2573R.string.BrowserSettingsHistoryClear)).setMessage(LocaleController.formatString(C2573R.string.BrowserSettingsHistoryClearText, LocaleController.formatDateChat(jMin / 1000))).setPositiveButton(LocaleController.getString(C2573R.string.Clear), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.WebBrowserSettings$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i6) {
                    this.f$0.lambda$onClick$5(alertDialog, i6);
                }
            }).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).makeRed(-1).show();
            return;
        }
        if (i2 == 9) {
            final HistoryFragment[] historyFragmentArr = {null};
            HistoryFragment historyFragment = new HistoryFragment(null, new Utilities.Callback() { // from class: org.telegram.ui.web.WebBrowserSettings$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$6(historyFragmentArr, (BrowserHistory.Entry) obj);
                }
            });
            historyFragmentArr[0] = historyFragment;
            presentFragment(historyFragment);
            return;
        }
        if (i2 == 5) {
            new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(C2573R.string.WebBrowserDeleteAllExceptionsTitle)).setMessage(LocaleController.getString(C2573R.string.WebBrowserDeleteAllExceptionsMessage)).setPositiveButton(LocaleController.getString(C2573R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.WebBrowserSettings$$ExternalSyntheticLambda4
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i6) {
                    this.f$0.lambda$onClick$7(alertDialog, i6);
                }
            }).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).makeRed(-1).show();
            return;
        }
        if (uItem.instanceOf(WebsiteView.Factory.class)) {
            WebsiteView websiteView = (WebsiteView) view;
            final String str2 = websiteView.domain;
            ItemOptions.makeOptions((ViewGroup) this.fragmentView, websiteView).setDimAlpha(40).add(C2573R.drawable.menu_delete_old, LocaleController.getString(C2573R.string.Remove), new Runnable() { // from class: org.telegram.ui.web.WebBrowserSettings$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onClick$8(str2);
                }
            }).show();
            return;
        }
        int i6 = uItem.id;
        if (i6 != 6) {
            if (i6 == 15 || i6 == 16) {
                final boolean zIsWebBrowserInAppEnabled2 = getMessagesController().isWebBrowserInAppEnabled();
                if (getMessagesController().isWebBrowserExceptionsLimitReached(zIsWebBrowserInAppEnabled2)) {
                    AlertsCreator.showSimpleAlert(this, LocaleController.getString(C2573R.string.WebBrowserExceptionsLimitTitle), LocaleController.getString(C2573R.string.WebBrowserExceptionsLimitMessage));
                    return;
                } else {
                    AlertsCreator.showAddBrowserException(getContext(), getResourceProvider(), zIsWebBrowserInAppEnabled2, new Utilities.Callback() { // from class: org.telegram.ui.web.WebBrowserSettings$$ExternalSyntheticLambda7
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$onClick$10(zIsWebBrowserInAppEnabled2, (String) obj);
                        }
                    });
                    return;
                }
            }
            return;
        }
        if (getParentActivity() == null) {
            return;
        }
        final AtomicReference atomicReference = new AtomicReference();
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        ArrayList<SearchEngine> searchEngines = SearchEngine.getSearchEngines();
        int size2 = searchEngines.size();
        CharSequence[] charSequenceArr = new CharSequence[size2];
        final int i7 = 0;
        while (i7 < size2) {
            charSequenceArr[i7] = searchEngines.get(i7).name;
            RadioColorCell radioColorCell = new RadioColorCell(getParentActivity());
            radioColorCell.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
            radioColorCell.setTextAndValue(charSequenceArr[i7], i7 == SharedConfig.searchEngineType);
            radioColorCell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.web.WebBrowserSettings$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    WebBrowserSettings.m22996$r8$lambda$gflDPD9fbUbhkMttbL08jP0MXU(i7, view, atomicReference, view2);
                }
            });
            i7++;
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(getParentActivity()).setTitle(LocaleController.getString(C2573R.string.SearchEngine)).setView(linearLayout).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).create();
        atomicReference.set(alertDialogCreate);
        showDialog(alertDialogCreate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$3(AlertDialog alertDialog, int i) {
        ApplicationLoader.applicationContext.deleteDatabase("webview.db");
        ApplicationLoader.applicationContext.deleteDatabase("webviewCache.db");
        WebStorage.getInstance().deleteAllData();
        try {
            WebView webView = new WebView(getContext());
            webView.clearCache(true);
            webView.clearHistory();
            webView.destroy();
        } catch (Exception unused) {
        }
        try {
            File file = new File(ApplicationLoader.applicationContext.getApplicationInfo().dataDir, "app_webview");
            if (file.exists()) {
                deleteDirectory(file, Boolean.FALSE);
            }
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        try {
            File file2 = new File(ApplicationLoader.applicationContext.getApplicationInfo().dataDir, "cache/WebView");
            if (file2.exists()) {
                deleteDirectory(file2, null);
            }
        } catch (Exception e2) {
            FileLog.m898e(e2);
        }
        WebMetadataCache.getInstance().clear();
        loadSizes();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$4(AlertDialog alertDialog, int i) {
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.removeAllCookies(null);
        cookieManager.flush();
        try {
            File file = new File(ApplicationLoader.applicationContext.getApplicationInfo().dataDir, "app_webview");
            if (file.exists()) {
                deleteDirectory(file, Boolean.TRUE);
            }
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        loadSizes();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$5(AlertDialog alertDialog, int i) {
        BrowserHistory.clearHistory();
        this.historySize = 0L;
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$6(HistoryFragment[] historyFragmentArr, BrowserHistory.Entry entry) {
        historyFragmentArr[0].finishFragment();
        if (this.whenHistoryClicked != null) {
            finishFragment();
            this.whenHistoryClicked.run(entry);
        } else {
            Browser.openUrl(getContext(), entry.url);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$7(AlertDialog alertDialog, int i) {
        getMessagesController().clearAllWebBrowserExceptions();
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$8(String str) {
        getMessagesController().removeWebBrowserException(str);
        this.listView.adapter.update(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$gflDPD9fbUbhkMtt-bL08jP0MXU, reason: not valid java name */
    public static /* synthetic */ void m22996$r8$lambda$gflDPD9fbUbhkMttbL08jP0MXU(int i, View view, AtomicReference atomicReference, View view2) {
        SharedConfig.setSearchEngineType(i);
        ((TextCell) view).setValue(SearchEngine.getCurrent().name, true);
        ((Dialog) atomicReference.get()).dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$10(boolean z, String str) {
        getMessagesController().addWebBrowserException(str, z);
        this.listView.adapter.update(true);
    }

    public static class WebsiteView extends FrameLayout {
        private AnimatedEmojiDrawable animatedEmojiDrawable;
        private String domain;
        public final ImageView imageView;
        private boolean needDivider;
        public final ImageView optionsView;
        public final TextView subtitleView;
        public final TextView titleView;

        public WebsiteView(Context context) {
            super(context);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            addView(imageView, LayoutHelper.createFrame(32, 32.0f, 19, 16.0f, 0.0f, 0.0f, 0.0f));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            textView.setTextSize(1, 16.0f);
            textView.setMaxLines(1);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView.setEllipsize(truncateAt);
            addView(textView, LayoutHelper.createFrame(-1, -2.0f, 55, 68.0f, 7.0f, 54.0f, 0.0f));
            TextView textView2 = new TextView(context) { // from class: org.telegram.ui.web.WebBrowserSettings.WebsiteView.1
                @Override // android.widget.TextView, android.view.View
                public void onMeasure(int i, int i2) {
                    super.onMeasure(i, i2);
                    WebsiteView.this.subtitleView.setPivotY(getMeasuredHeight() / 2.0f);
                }
            };
            this.subtitleView = textView2;
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
            textView2.setTextSize(1, 13.0f);
            textView2.setMaxLines(1);
            textView2.setEllipsize(truncateAt);
            textView2.setPivotX(0.0f);
            addView(textView2, LayoutHelper.createFrame(-1, -2.0f, 55, 68.0f, 30.0f, 54.0f, 0.0f));
            ImageView imageView2 = new ImageView(context);
            this.optionsView = imageView2;
            imageView2.setScaleType(ImageView.ScaleType.CENTER);
            imageView2.setImageResource(C2573R.drawable.ic_ab_other);
            imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3), PorterDuff.Mode.SRC_IN));
            addView(imageView2, LayoutHelper.createFrame(32, 32.0f, 21, 0.0f, 0.0f, 18.0f, 0.0f));
        }

        public void set(CharSequence charSequence, String str, long j, boolean z) {
            this.titleView.setText(charSequence);
            this.subtitleView.setText(str);
            boolean zIsEmpty = TextUtils.isEmpty(charSequence);
            TextView textView = this.subtitleView;
            if (zIsEmpty) {
                textView.setTranslationY(-AndroidUtilities.dp(14.0f));
                this.subtitleView.setScaleX(1.3f);
                this.subtitleView.setScaleY(1.3f);
            } else {
                textView.setTranslationY(0.0f);
                this.subtitleView.setScaleX(1.0f);
                this.subtitleView.setScaleY(1.0f);
            }
            this.domain = str;
            if (TextUtils.isEmpty(charSequence)) {
                charSequence = (str.isEmpty() || TextUtils.isEmpty(str)) ? _UrlKt.FRAGMENT_ENCODE_SET : str;
            }
            String string = charSequence.toString();
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this.imageView);
                this.animatedEmojiDrawable = null;
            }
            if (j != 0) {
                AnimatedEmojiDrawable animatedEmojiDrawableMake = AnimatedEmojiDrawable.make(UserConfig.selectedAccount, 1, j);
                this.animatedEmojiDrawable = animatedEmojiDrawableMake;
                animatedEmojiDrawableMake.addView(this.imageView);
                this.imageView.setImageDrawable(this.animatedEmojiDrawable);
            } else {
                CombinedDrawable combinedDrawable = new CombinedDrawable(Theme.createRoundRectDrawable(AndroidUtilities.dp(6.0f), Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText), 0.1f)), new Drawable(string) { // from class: org.telegram.ui.web.WebBrowserSettings.WebsiteView.2
                    private final Text text;
                    final /* synthetic */ String val$s;

                    @Override // android.graphics.drawable.Drawable
                    public int getOpacity() {
                        return -2;
                    }

                    @Override // android.graphics.drawable.Drawable
                    public void setAlpha(int i) {
                    }

                    @Override // android.graphics.drawable.Drawable
                    public void setColorFilter(ColorFilter colorFilter) {
                    }

                    {
                        this.val$s = string;
                        this.text = new Text(string.substring(0, !string.isEmpty() ? 1 : 0), 14.0f, AndroidUtilities.bold());
                    }

                    @Override // android.graphics.drawable.Drawable
                    public void draw(Canvas canvas) {
                        this.text.draw(canvas, getBounds().centerX() - (this.text.getCurrentWidth() / 2.0f), getBounds().centerY(), Theme.getColor(Theme.key_windowBackgroundWhiteBlackText), 1.0f);
                    }
                });
                combinedDrawable.setCustomSize(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(28.0f));
                this.imageView.setImageDrawable(combinedDrawable);
            }
            this.needDivider = z;
            invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (this.needDivider) {
                canvas.drawRect(AndroidUtilities.dp(64.0f), getHeight() - 1, getWidth(), getHeight(), Theme.dividerPaint);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(56.0f), TLObject.FLAG_30));
        }

        public static class Factory extends UItem.UItemFactory<WebsiteView> {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public WebsiteView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new WebsiteView(context);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((WebsiteView) view).set(uItem.textValue, (String) uItem.text, uItem.longValue, z);
            }

            public static UItem as(String str, String str2, long j) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.text = str;
                uItemOfFactory.textValue = str2;
                uItemOfFactory.longValue = j;
                return uItemOfFactory;
            }
        }
    }

    private static long getDirectorySize(File file, Boolean bool) {
        long directorySize = 0;
        if (file == null || !file.exists()) {
            return 0L;
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    directorySize += getDirectorySize(file2, bool);
                }
                return directorySize;
            }
        } else if (bool == null || bool.booleanValue() == file.getName().startsWith("Cookies")) {
            return file.length();
        }
        return 0L;
    }

    private static boolean deleteDirectory(File file, Boolean bool) {
        boolean z;
        if (file == null || !file.exists()) {
            return false;
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                z = true;
                for (File file2 : fileArrListFiles) {
                    if ((bool == null || bool.booleanValue() == file2.getName().startsWith("Cookies")) && !deleteDirectory(file2, bool)) {
                        z = false;
                    }
                }
            } else {
                z = true;
            }
            if (z) {
                file.delete();
            }
        } else {
            if (bool != null && bool.booleanValue() != file.getName().startsWith("Cookies")) {
                return false;
            }
            file.delete();
        }
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        super.onInsets(i, i2, i3, i4);
        UniversalRecyclerView universalRecyclerView = this.listView;
        universalRecyclerView.setPadding(0, universalRecyclerView.getPaddingTop(), 0, i4);
        this.listView.setClipToPadding(false);
    }
}
