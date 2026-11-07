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
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Wallet.GramWallet;

/* JADX INFO: loaded from: classes8.dex */
public class WalletSecretPhraseFragment extends BaseFragment {
    private ImageView closeButton;
    private LinearLayout columns;
    private ButtonWithCounterView continueButton;
    private boolean current;
    private Runnable onTested;
    private ScrollView scrollView;
    private final ArrayList<String> words = new ArrayList<>();

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public WalletSecretPhraseFragment onTested(Runnable runnable) {
        this.onTested = runnable;
        return this;
    }

    public WalletSecretPhraseFragment setPhrase(GramWallet.SecretPhrase secretPhrase) {
        this.words.clear();
        if (secretPhrase != null && !secretPhrase.isEmpty()) {
            this.words.addAll(secretPhrase.toWordsForDisplay());
        }
        updateWords();
        return this;
    }

    public WalletSecretPhraseFragment setCurrent() {
        this.current = true;
        return this;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setAddToContainer(false);
        this.actionBar.setOccupyStatusBar(false);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourceProvider));
        this.fragmentView = frameLayout;
        ScrollView scrollView = new ScrollView(context);
        this.scrollView = scrollView;
        scrollView.setFillViewport(true);
        this.scrollView.setVerticalScrollBarEnabled(false);
        this.scrollView.setClipToPadding(false);
        this.scrollView.setPadding(0, AndroidUtilities.dp(96.0f), 0, 0);
        frameLayout.addView(this.scrollView, LayoutHelper.createFrame(-1, -1.0f));
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
        this.closeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletSecretPhraseFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$0(view);
            }
        });
        frameLayout.addView(this.closeButton, LayoutHelper.createFrame(48, 48.0f, 51, 4.0f, 12.0f, 0.0f, 0.0f));
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
        textView.setText(LocaleController.getString(this.current ? C2807R.string.WalletCurrentSecretPhrase : C2807R.string.WalletNewSecretPhrase));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 10));
        TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(1);
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourceProvider));
        textView2.setText(LocaleController.getString(this.current ? C2807R.string.WalletCurrentSecretPhraseInfo : C2807R.string.WalletNewSecretPhraseInfo));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 8));
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.columns = linearLayout2;
        linearLayout2.setOrientation(0);
        this.columns.setGravity(1);
        linearLayout.addView(this.columns, LayoutHelper.createLinear(-1, -2, 1, 4, 24, 4, 0));
        linearLayout.addView(new View(context), LayoutHelper.createLinear(-1, 0, 1.0f));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, this.resourceProvider);
        this.continueButton = buttonWithCounterView;
        buttonWithCounterView.setRound();
        this.continueButton.setText(LocaleController.getString(C2807R.string.WalletContinue));
        this.continueButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletSecretPhraseFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$1(view);
            }
        });
        linearLayout.addView(this.continueButton, LayoutHelper.createLinear(-1, 48, 1, 0, 24, 0, 0));
        updateWords();
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view) {
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        onContinuePressed();
    }

    private void updateWords() {
        LinearLayout linearLayout = this.columns;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        Context context = this.columns.getContext();
        boolean z = true;
        int size = (this.words.size() + 1) / 2;
        this.columns.addView(WalletKeysBackupFragment.makeWordColumn(context, this.resourceProvider, this.words, 0, size), LayoutHelper.createLinear(0, -2, 1.0f, 48));
        this.columns.addView(new View(context), LayoutHelper.createLinear(10, 0));
        LinearLayout linearLayout2 = this.columns;
        Theme.ResourcesProvider resourcesProvider = this.resourceProvider;
        ArrayList<String> arrayList = this.words;
        linearLayout2.addView(WalletKeysBackupFragment.makeWordColumn(context, resourcesProvider, arrayList, size, arrayList.size()), LayoutHelper.createLinear(0, -2, 1.0f, 48));
        ButtonWithCounterView buttonWithCounterView = this.continueButton;
        if (buttonWithCounterView != null) {
            if (this.words.size() != 12 && this.words.size() != 24) {
                z = false;
            }
            buttonWithCounterView.setEnabled(z);
        }
    }

    public void onContinuePressed() {
        if (this.words.size() == 12 || this.words.size() == 24) {
            WalletTestPhraseFragment walletTestPhraseFragment = new WalletTestPhraseFragment(this.words, new Runnable() { // from class: org.telegram.ui.Wallet.WalletSecretPhraseFragment$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onContinuePressed$2();
                }
            });
            walletTestPhraseFragment.setCurrentAccount(this.currentAccount);
            presentFragment(walletTestPhraseFragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onContinuePressed$2() {
        removeSelfFromStack();
        Runnable runnable = this.onTested;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        ScrollView scrollView = this.scrollView;
        if (scrollView != null) {
            scrollView.setPadding(i, AndroidUtilities.dp(96.0f) + i2, i3, i4);
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
