package org.telegram.ui.Wallet;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes8.dex */
public class WalletTestPhraseFragment extends BaseFragment {
    private ImageView closeButton;
    private ButtonWithCounterView continueButton;
    private int keyboardInset;
    private int lastBottomInset;
    private int lastLeftInset;
    private int lastRightInset;
    private int lastTopInset;
    private final Runnable onTested;
    private ScrollView scrollView;
    private boolean tested;
    private final String[] words;
    private final int[] indices = new int[3];
    private final ArrayList<WalletWordCell> cells = new ArrayList<>();

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public WalletTestPhraseFragment(List<String> list, Runnable runnable) {
        int i = 0;
        String[] strArr = (String[]) list.toArray(new String[0]);
        this.words = strArr;
        if (strArr.length != 12 && strArr.length != 24) {
            f$$ExternalSyntheticBUOutline1.m215m("Expected a 12- or 24-word recovery phrase");
            throw null;
        }
        this.onTested = runnable;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.words.length; i2++) {
            arrayList.add(Integer.valueOf(i2));
        }
        Collections.shuffle(arrayList);
        while (true) {
            int[] iArr = this.indices;
            if (i < iArr.length) {
                iArr[i] = ((Integer) arrayList.get(i)).intValue();
                i++;
            } else {
                Arrays.sort(iArr);
                return;
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setAddToContainer(false);
        this.actionBar.setOccupyStatusBar(false);
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context);
        sizeNotifierFrameLayout.setDelegate(new SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate() { // from class: org.telegram.ui.Wallet.WalletTestPhraseFragment$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate
            public final void onSizeChanged(int i, boolean z) {
                this.f$0.lambda$createView$0(i, z);
            }
        });
        sizeNotifierFrameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourceProvider));
        this.fragmentView = sizeNotifierFrameLayout;
        ScrollView scrollView = new ScrollView(context);
        this.scrollView = scrollView;
        scrollView.setFillViewport(true);
        this.scrollView.setVerticalScrollBarEnabled(false);
        this.scrollView.setClipToPadding(false);
        this.scrollView.setPadding(0, AndroidUtilities.dp(96.0f), 0, 0);
        sizeNotifierFrameLayout.addView(this.scrollView, LayoutHelper.createFrame(-1, -1.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(36.0f), 0, AndroidUtilities.dp(36.0f), AndroidUtilities.dp(24.0f));
        linearLayout.setClipToPadding(false);
        this.scrollView.addView(linearLayout, new FrameLayout.LayoutParams(-1, -2));
        ImageView imageView = new ImageView(context);
        this.closeButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        ImageView imageView2 = this.closeButton;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i, this.resourceProvider), PorterDuff.Mode.SRC_IN));
        this.closeButton.setImageResource(C2807R.drawable.ic_ab_close);
        this.closeButton.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, this.resourceProvider), 3));
        this.closeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletTestPhraseFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$1(view);
            }
        });
        sizeNotifierFrameLayout.addView(this.closeButton, LayoutHelper.createFrame(48, 48.0f, 51, 4.0f, 12.0f, 0.0f, 0.0f));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setAspectFit(true);
        backupImageView.getImageReceiver().setCurrentAccount(AndroidUtilities.getAccountInProduction());
        MediaDataController.getInstance(AndroidUtilities.getAccountInProduction()).setPlaceholderImage(backupImageView, "RestrictedEmoji", "👨\u200d🏫", "100_100");
        backupImageView.getImageReceiver().setAutoRepeatCount(1);
        linearLayout.addView(backupImageView, LayoutHelper.createLinear(100, 100, 1, 0, 0, 0, 12));
        TextView textView = new TextView(context);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(1);
        textView.setTextColor(Theme.getColor(i, this.resourceProvider));
        textView.setText(LocaleController.getString(C2807R.string.WalletTestPhrase));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 10));
        TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(1);
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourceProvider));
        textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.WalletTestPhraseInfo, Integer.valueOf(this.indices[0] + 1), Integer.valueOf(this.indices[1] + 1), Integer.valueOf(this.indices[2] + 1))));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 8));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout2.setGravity(1);
        linearLayout2.setClipChildren(false);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1, 0, 16, 0, 0));
        ArrayList arrayList = new ArrayList();
        ArrayList<WalletWordCell> arrayList2 = this.cells;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            WalletWordCell walletWordCell = arrayList2.get(i2);
            i2++;
            arrayList.add(walletWordCell.getWord());
        }
        this.cells.clear();
        final int i3 = 0;
        while (i3 < this.indices.length) {
            final WalletWordCell walletWordCell2 = new WalletWordCell(context, this.indices[i3], false, this.resourceProvider);
            if (i3 < arrayList.size()) {
                walletWordCell2.setText((String) arrayList.get(i3));
            }
            walletWordCell2.setOnTextChangedListener(new Runnable() { // from class: org.telegram.ui.Wallet.WalletTestPhraseFragment$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.updateContinueButton();
                }
            });
            walletWordCell2.setOnNextListener(new Runnable() { // from class: org.telegram.ui.Wallet.WalletTestPhraseFragment$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$2(i3, walletWordCell2);
                }
            });
            linearLayout2.addView(walletWordCell2, LayoutHelper.createLinear(-1, 50, 1, 0, i3 == 0 ? 0 : 12, 0, 0));
            this.cells.add(walletWordCell2);
            i3++;
        }
        linearLayout.addView(new View(context), LayoutHelper.createLinear(-1, 0, 1.0f));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, this.resourceProvider);
        this.continueButton = buttonWithCounterView;
        buttonWithCounterView.setRound();
        this.continueButton.setText(LocaleController.getString(C2807R.string.WalletContinue));
        this.continueButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletTestPhraseFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$3(view);
            }
        });
        linearLayout.addView(this.continueButton, LayoutHelper.createLinear(-1, 48, 1, 0, 24, 0, 0));
        updateContinueButton();
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(int i, boolean z) {
        if (i <= AndroidUtilities.dp(20.0f)) {
            i = 0;
        }
        this.keyboardInset = i;
        onInsets(this.lastLeftInset, this.lastTopInset, this.lastRightInset, this.lastBottomInset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(int i, WalletWordCell walletWordCell) {
        int i2 = i + 1;
        if (i2 < this.cells.size()) {
            this.cells.get(i2).requestFieldFocus();
        } else {
            AndroidUtilities.hideKeyboard(walletWordCell);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        onContinuePressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContinueButton() {
        if (this.continueButton == null) {
            return;
        }
        boolean z = false;
        boolean z2 = this.cells.size() == this.indices.length;
        ArrayList<WalletWordCell> arrayList = this.cells;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            WalletWordCell walletWordCell = arrayList.get(i);
            i++;
            z2 &= !walletWordCell.isEmpty();
        }
        this.continueButton.setVisibility(z2 ? 0 : 4);
        ButtonWithCounterView buttonWithCounterView = this.continueButton;
        if (z2 && !this.tested) {
            z = true;
        }
        buttonWithCounterView.setEnabled(z);
    }

    private void onContinuePressed() {
        if (this.tested || this.cells.size() != this.indices.length) {
            return;
        }
        if (!BuildVars.DEBUG_PRIVATE_VERSION) {
            ArrayList<WalletWordCell> arrayList = this.cells;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                WalletWordCell walletWordCell = arrayList.get(i);
                i++;
                if (walletWordCell.isEmpty()) {
                    return;
                }
            }
            boolean z = true;
            for (int i2 = 0; i2 < this.indices.length; i2++) {
                WalletWordCell walletWordCell2 = this.cells.get(i2);
                boolean zEqualsIgnoreCase = this.words[this.indices[i2]].equalsIgnoreCase(walletWordCell2.getWord());
                if (!zEqualsIgnoreCase && walletWordCell2.hasError()) {
                    AndroidUtilities.shakeViewSpring(walletWordCell2);
                }
                walletWordCell2.setError(!zEqualsIgnoreCase);
                z &= zEqualsIgnoreCase;
            }
            if (!z) {
                return;
            }
        }
        this.tested = true;
        updateContinueButton();
        AndroidUtilities.hideKeyboard(this.fragmentView);
        Runnable runnable = this.onTested;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.lastLeftInset = i;
        this.lastTopInset = i2;
        this.lastRightInset = i3;
        this.lastBottomInset = i4;
        ScrollView scrollView = this.scrollView;
        if (scrollView != null) {
            scrollView.setPadding(i, AndroidUtilities.dp(96.0f) + i2, i3, i4 + this.keyboardInset);
        }
        ImageView imageView = this.closeButton;
        if (imageView != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams();
            layoutParams.leftMargin = i + AndroidUtilities.dp(4.0f);
            layoutParams.topMargin = i2 + AndroidUtilities.dp(12.0f);
            this.closeButton.setLayoutParams(layoutParams);
        }
    }
}
