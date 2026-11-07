package org.telegram.ui.Wallet;

import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.view.WindowInsetsCompat;
import java.util.ArrayList;
import java.util.Arrays;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.EllipsizeSpanAnimator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Wallet.GramWallet;
import org.telegram.ui.Wallet.WalletActivity;

/* JADX INFO: loaded from: classes8.dex */
public class WalletImportFragment extends BaseFragment {
    private LinearLayout cellsContainer;
    private ImageView closeButton;
    private ButtonWithCounterView importButton;
    private int keyboardInset;
    private byte[] matchPublicKey;
    private LinearLayout rootView;
    private ScrollView scrollView;
    private LinkSpanDrawable.LinksTextView subtitleView;
    private WalletActivity.TabsView tabs;
    private boolean wipe;
    private int currentCount = 12;
    private final ArrayList<WalletWordCell> cells = new ArrayList<>();

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public WalletImportFragment setWipe(boolean z) {
        this.wipe = z;
        return this;
    }

    public WalletImportFragment setMatchPublicKey(byte[] bArr) {
        this.matchPublicKey = bArr;
        return this;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setAddToContainer(false);
        this.actionBar.setOccupyStatusBar(false);
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context);
        this.fragmentView = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourceProvider));
        ScrollView scrollView = new ScrollView(context);
        scrollView.setFillViewport(true);
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.setClipToPadding(false);
        scrollView.setPadding(0, AndroidUtilities.dp(96.0f), 0, 0);
        this.scrollView = scrollView;
        scrollView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.telegram.ui.Wallet.WalletImportFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.f$0.lambda$createView$0(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        ((FrameLayout) this.fragmentView).addView(scrollView, LayoutHelper.createFrame(-1, -1.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(36.0f), 0, AndroidUtilities.dp(36.0f), AndroidUtilities.dp(24.0f));
        linearLayout.setClipToPadding(false);
        this.rootView = linearLayout;
        scrollView.addView(linearLayout, LayoutHelper.createLinear(-1, -2));
        ImageView imageView = new ImageView(context);
        this.closeButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        ImageView imageView2 = this.closeButton;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i, this.resourceProvider), PorterDuff.Mode.SRC_IN));
        this.closeButton.setImageResource(C2807R.drawable.ic_ab_close);
        this.closeButton.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, this.resourceProvider), 3));
        this.closeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletImportFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$1(view);
            }
        });
        ((FrameLayout) this.fragmentView).addView(this.closeButton, LayoutHelper.createFrame(48, 48.0f, 51, 4.0f, 12.0f, 0.0f, 0.0f));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setAspectFit(true);
        backupImageView.getImageReceiver().setCurrentAccount(AndroidUtilities.getAccountInProduction());
        MediaDataController.getInstance(AndroidUtilities.getAccountInProduction()).setPlaceholderImage(backupImageView, "RestrictedEmoji", "📝", "100_100");
        backupImageView.getImageReceiver().setAutoRepeatCount(1);
        linearLayout.addView(backupImageView, LayoutHelper.createLinear(100, 100, 1, 0, 0, 0, 12));
        TextView textView = new TextView(context);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(1);
        textView.setTextColor(Theme.getColor(i, this.resourceProvider));
        textView.setText(LocaleController.getString(this.matchPublicKey != null ? C2807R.string.WalletSecretPhrase : C2807R.string.WalletImport));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 10));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        this.subtitleView = linksTextView;
        linksTextView.setTextSize(1, 14.0f);
        this.subtitleView.setGravity(1);
        this.subtitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourceProvider));
        this.subtitleView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, this.resourceProvider));
        byte[] bArr = this.matchPublicKey;
        LinkSpanDrawable.LinksTextView linksTextView2 = this.subtitleView;
        if (bArr != null) {
            linksTextView2.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.WalletEnterSecretPhrase), new Runnable() { // from class: org.telegram.ui.Wallet.WalletImportFragment$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$2();
                }
            }));
        } else {
            linksTextView2.setText(LocaleController.formatSpannable(C2807R.string.WalletImportPhraseInfo, 12));
        }
        linearLayout.addView(this.subtitleView, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 8));
        WalletActivity.TabsView tabsView = new WalletActivity.TabsView(context, new CharSequence[]{LocaleController.formatPluralString("WalletPhraseWords", 12, new Object[0]), LocaleController.formatPluralString("WalletPhraseWords", 24, new Object[0])}, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletImportFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$createView$3((Integer) obj);
            }
        }, this.resourceProvider);
        this.tabs = tabsView;
        tabsView.shadowed = true;
        tabsView.updateColors();
        this.tabs.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
        this.tabs.setClipToPadding(false);
        linearLayout.addView(this.tabs, LayoutHelper.createLinear(-1, -2, 1, 0, 0, 0, 4));
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.cellsContainer = linearLayout2;
        linearLayout2.setOrientation(1);
        this.cellsContainer.setGravity(1);
        this.cellsContainer.setClipChildren(false);
        linearLayout.addView(this.cellsContainer, LayoutHelper.createLinear(-1, -2, 1, 0, 16, 0, 0));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, this.resourceProvider);
        this.importButton = buttonWithCounterView;
        buttonWithCounterView.setRound();
        this.importButton.setText(LocaleController.getString(C2807R.string.WalletImportButton));
        this.importButton.setEnabled(false);
        this.importButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletImportFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$4(view);
            }
        });
        linearLayout.addView(this.importButton, LayoutHelper.createLinear(-1, 48, 1, 0, 24, 0, 0));
        buildCells(context);
        updateImportButton();
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i4 - i2 < i8 - i6) {
            ArrayList<WalletWordCell> arrayList = this.cells;
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                WalletWordCell walletWordCell = arrayList.get(i9);
                i9++;
                WalletWordCell walletWordCell2 = walletWordCell;
                if (walletWordCell2.hasFocus()) {
                    walletWordCell2.requestRectangleOnScreen(new Rect(0, 0, walletWordCell2.getWidth(), walletWordCell2.getHeight()), true);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2() {
        new AlertDialog.Builder(getContext(), getResourceProvider()).setMessage(LocaleController.getString(C2807R.string.WalletEnterSecretPhraseInfo)).setPositiveButton(LocaleController.getString(C2807R.string.OK), null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(Integer num) {
        setCount(num.intValue() == 0 ? 12 : 24);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        onImportPressed();
    }

    private void setCount(int i) {
        if (this.currentCount == i) {
            return;
        }
        this.currentCount = i;
        buildCells(getContext());
        updateImportButton();
        this.subtitleView.setText(this.matchPublicKey != null ? LocaleController.formatSpannable(C2807R.string.WalletImportCurrentPhraseInfo, Integer.valueOf(i)) : LocaleController.formatSpannable(C2807R.string.WalletImportPhraseInfo, Integer.valueOf(i)));
    }

    private void rebuildCells(Context context) {
        this.cellsContainer.removeAllViews();
        this.cells.clear();
        final int i = 0;
        while (i < this.currentCount) {
            final WalletWordCell walletWordCell = new WalletWordCell(context, i, i == 0, this.resourceProvider);
            walletWordCell.setOnTextChangedListener(new Runnable() { // from class: org.telegram.ui.Wallet.WalletImportFragment$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.updateImportButton();
                }
            });
            walletWordCell.setOnPasteListener(new Runnable() { // from class: org.telegram.ui.Wallet.WalletImportFragment$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$rebuildCells$5(i);
                }
            });
            walletWordCell.setOnNextListener(new Runnable() { // from class: org.telegram.ui.Wallet.WalletImportFragment$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$rebuildCells$6(i, walletWordCell);
                }
            });
            this.cellsContainer.addView(walletWordCell, LayoutHelper.createLinear(-1, 50, 1, 0, i == 0 ? 0 : 12, 0, 0));
            this.cells.add(walletWordCell);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$rebuildCells$6(int i, WalletWordCell walletWordCell) {
        int i2 = i + 1;
        if (i2 < this.cells.size()) {
            this.cells.get(i2).requestFieldFocus();
        } else {
            AndroidUtilities.hideKeyboard(walletWordCell);
        }
    }

    private void buildCells(Context context) {
        ArrayList arrayList = new ArrayList();
        ArrayList<WalletWordCell> arrayList2 = this.cells;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            WalletWordCell walletWordCell = arrayList2.get(i);
            i++;
            arrayList.add(walletWordCell.getWord());
        }
        rebuildCells(context);
        for (int i2 = 0; i2 < arrayList.size() && i2 < this.cells.size(); i2++) {
            if (!((String) arrayList.get(i2)).isEmpty()) {
                this.cells.get(i2).setText((String) arrayList.get(i2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: fillRemainingFromClipboard, reason: merged with bridge method [inline-methods] */
    public void lambda$rebuildCells$5(int i) {
        try {
            ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
            if (clipboardManager != null && clipboardManager.getPrimaryClip() != null && clipboardManager.getPrimaryClip().getItemCount() != 0) {
                CharSequence text = clipboardManager.getPrimaryClip().getItemAt(0).getText();
                if (text == null) {
                    return;
                }
                String[] strArrSplit = text.toString().trim().toLowerCase().split("\\s+");
                for (int i2 = 0; i < this.cells.size() && i2 < strArrSplit.length; i2++) {
                    this.cells.get(i).setText(strArrSplit[i2]);
                    i++;
                }
                updateImportButton();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateImportButton() {
        ArrayList<WalletWordCell> arrayList = this.cells;
        int size = arrayList.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= size) {
                z = true;
                break;
            }
            WalletWordCell walletWordCell = arrayList.get(i);
            i++;
            if (walletWordCell.isEmpty()) {
                break;
            }
        }
        this.importButton.setEnabled(z);
    }

    private void onImportPressed() {
        byte[] bArrSecretPhraseToPublicKey;
        String strSecretPhraseToAddress;
        FrameLayout frameLayout;
        if (this.importButton.isLoading()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList<WalletWordCell> arrayList2 = this.cells;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            WalletWordCell walletWordCell = arrayList2.get(i);
            i++;
            arrayList.add(walletWordCell.getWord().toLowerCase().trim());
        }
        GramWallet.SecretPhrase secretPhraseFromWords = GramWallet.SecretPhrase.fromWords(arrayList);
        try {
            this.importButton.setLoading(true);
            final BaseFragment baseFragment = null;
            if (this.matchPublicKey != null) {
                try {
                    bArrSecretPhraseToPublicKey = WalletEngine2.secretPhraseToPublicKey(secretPhraseFromWords);
                } catch (Exception e) {
                    FileLog.m1040e(e);
                    bArrSecretPhraseToPublicKey = null;
                }
                if (bArrSecretPhraseToPublicKey == null) {
                    this.importButton.setLoading(false);
                    new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.WalletInvalidRecoveryPhrase)).setMessage(LocaleController.getString(C2807R.string.WalletInvalidRecoveryPhraseInfo)).setPositiveButton(LocaleController.getString(C2807R.string.WalletOK), null).show();
                    if (secretPhraseFromWords == null) {
                        return;
                    }
                } else if (!Arrays.equals(bArrSecretPhraseToPublicKey, this.matchPublicKey)) {
                    try {
                        strSecretPhraseToAddress = WalletEngine2.secretPhraseToAddress(secretPhraseFromWords);
                    } catch (Exception e2) {
                        FileLog.m1040e(e2);
                        strSecretPhraseToAddress = null;
                    }
                    if (TextUtils.isEmpty(strSecretPhraseToAddress)) {
                        frameLayout = null;
                    } else {
                        frameLayout = new FrameLayout(getContext());
                        TextView textView = new TextView(getContext());
                        textView.setTextSize(1, 14.0f);
                        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourceProvider));
                        textView.setText(formatAddressTwoLines(strSecretPhraseToAddress));
                        textView.setPadding(AndroidUtilities.dp(10.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(12.0f));
                        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO));
                        textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), Theme.getColor(Theme.key_windowBackgroundGray, this.resourceProvider)));
                        textView.setGravity(17);
                        frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 7, 16.0f, 0.0f, 16.0f, 0.0f));
                    }
                    this.importButton.setLoading(false);
                    new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.WalletWrongSecretPhrase)).setMessage(LocaleController.getString(C2807R.string.WalletWrongSecretPhraseInfo)).setView(frameLayout).setPositiveButton(LocaleController.getString(C2807R.string.OK), null).show();
                    if (secretPhraseFromWords == null) {
                        return;
                    }
                } else {
                    final GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
                    gramWallet.storage.init(UserConfig.getInstance(this.currentAccount).getClientUserId(), bArrSecretPhraseToPublicKey, secretPhraseFromWords, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletImportFragment$$ExternalSyntheticLambda5
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$onImportPressed$7(gramWallet, (String) obj);
                        }
                    });
                    if (secretPhraseFromWords == null) {
                        return;
                    }
                }
                secretPhraseFromWords.close();
                return;
            }
            this.importButton.setLoading(true);
            final GramWallet gramWallet2 = GramWallet.getInstance(this.currentAccount);
            final String address = gramWallet2.getAddress();
            if (getParentLayout() != null && getParentLayout().getFragmentStack().size() > 1) {
                baseFragment = getParentLayout().getFragmentStack().get(getParentLayout().getFragmentStack().size() - 2);
            }
            gramWallet2.importWallet(secretPhraseFromWords, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletImportFragment$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onImportPressed$9(address, gramWallet2, baseFragment, (String) obj);
                }
            });
            if (secretPhraseFromWords != null) {
                secretPhraseFromWords.close();
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onImportPressed$7(GramWallet gramWallet, String str) {
        this.importButton.setLoading(false);
        if (str != null) {
            BulletinFactory.of(this).showForError(str);
        } else {
            finishFragment();
            gramWallet.notifyUpdate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onImportPressed$9(String str, GramWallet gramWallet, final BaseFragment baseFragment, String str2) {
        this.importButton.setLoading(false);
        if ("WRONG_CONTRACT".equalsIgnoreCase(str2) || "INVALID_PHRASE".equalsIgnoreCase(str2)) {
            new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.WalletInvalidRecoveryPhrase)).setMessage(LocaleController.getString(C2807R.string.WalletInvalidRecoveryPhraseInfo)).setPositiveButton(LocaleController.getString(C2807R.string.WalletOK), null).show();
            return;
        }
        if (str2 != null) {
            BulletinFactory.of(this).showForError(str2);
            return;
        }
        if (this.wipe && !TextUtils.isEmpty(str) && !TextUtils.equals(str, gramWallet.getAddress())) {
            new GramWalletStorage(getContext(), this.currentAccount, str).wipe();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletImportFragment$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onImportPressed$8(baseFragment);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onImportPressed$8(BaseFragment baseFragment) {
        if ((baseFragment instanceof WalletActivity) && BulletinFactory.canShowBulletin(baseFragment)) {
            BulletinFactory.of(baseFragment).createSimpleBulletin(C2807R.raw.contact_check, LocaleController.getString(C2807R.string.WalletImported), LocaleController.getString(C2807R.string.WalletImportedInfo)).show();
        }
        finishFragment();
    }

    public static CharSequence formatAddressTwoLines(String str) {
        if (str == null) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int length = 0;
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (i2 > 0 && i2 % 4 == 0) {
                int i3 = i2 % 24;
                spannableStringBuilder.append(i3 == 0 ? '\n' : ' ');
                if (i3 == 0) {
                    i++;
                }
                length = spannableStringBuilder.length();
            }
            spannableStringBuilder.append(str.charAt(i2));
            if (i2 % 4 == 3) {
                int i4 = i + 1;
                if (i % 2 == 1) {
                    spannableStringBuilder.setSpan(new EllipsizeSpanAnimator.TextAlphaSpan(0.75f), length, spannableStringBuilder.length(), 33);
                }
                length = spannableStringBuilder.length();
                i = i4;
            }
        }
        return spannableStringBuilder;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public WindowInsetsCompat onInsetsInternal(View view, WindowInsetsCompat windowInsetsCompat) {
        this.keyboardInset = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime()).bottom;
        return super.onInsetsInternal(view, windowInsetsCompat);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        FrameLayout.LayoutParams layoutParams;
        ScrollView scrollView = this.scrollView;
        if (scrollView != null) {
            scrollView.setPadding(i, AndroidUtilities.dp(96.0f) + i2, i3, 0);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.scrollView.getLayoutParams();
            int iMax = Math.max(i4, this.keyboardInset);
            if (layoutParams2.bottomMargin != iMax) {
                layoutParams2.bottomMargin = iMax;
                this.scrollView.setLayoutParams(layoutParams2);
            }
        }
        ImageView imageView = this.closeButton;
        if (imageView == null || (layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams()) == null) {
            return;
        }
        layoutParams.topMargin = i2 + AndroidUtilities.dp(12.0f);
        this.closeButton.setLayoutParams(layoutParams);
    }
}
