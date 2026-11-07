package org.telegram.ui.Wallet;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Adapters.DialogsSearchAdapter;
import org.telegram.ui.Adapters.SearchAdapterHelper;
import org.telegram.ui.Cells.ProfileSearchCell;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ChatAttachAlertAudioLayout;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalFragment;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.GradientClip;
import org.telegram.ui.QrShare.QrScanOverlay;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes8.dex */
public class WalletSendSelectSender extends UniversalFragment {
    private FrameLayout addressResult;
    private TextView addressResultSubtitle;
    private TextView addressResultTitle;
    private int bottomInset;
    private FrameLayout buttonContainer;
    private Runnable cancelEmulation;
    private boolean clipboardHasData;
    private final ClipboardManager.OnPrimaryClipChangedListener clipboardListener;
    private ClipboardManager clipboardManager;
    private TL_wallet.nftItem collectible;
    private ButtonWithCounterView continueButton;
    private boolean destroyed;
    private int dnsRequestId;
    private final NotificationCenter.NotificationCenterDelegate hintsObserver;
    private final String initialRecipient;
    private int keyboardInset;
    private int lastBottom;
    private TextView pasteButton;
    private boolean pasteButtonVisible;
    private final ArrayList<TLRPC.User> recentUsers;
    private String recipientDomain;
    private EditTextBoldCursor recipientEdit;
    private FrameLayout recipientRow;
    private ImageView scanButton;
    private boolean scanButtonVisible;
    private QrScanOverlay scanOverlay;
    private SearchAdapterHelper searchAdapterHelper;
    private int searchId;
    private boolean searchLoading;
    private Runnable searchRunnable;
    private final ArrayList<TLRPC.User> searchUsers;
    private boolean selectingRecipient;
    private String sourceAddress;
    private String validAddress;

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        return false;
    }

    public WalletSendSelectSender setCollectible(TL_wallet.nftItem nftitem) {
        this.collectible = nftitem;
        this.sourceAddress = GramWallet.getInstance(this.currentAccount).getAddress();
        return this;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        this.destroyed = true;
        destroyScanOverlay();
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null) {
            clipboardManager.removePrimaryClipChangedListener(this.clipboardListener);
        }
        TextView textView = this.pasteButton;
        if (textView != null) {
            textView.animate().cancel();
        }
        ImageView imageView = this.scanButton;
        if (imageView != null) {
            imageView.animate().cancel();
        }
        if (this.dnsRequestId != 0) {
            getConnectionsManager().cancelRequest(this.dnsRequestId, true);
        }
        FrameLayout frameLayout = this.buttonContainer;
        if (frameLayout != null) {
            frameLayout.animate().cancel();
        }
        getNotificationCenter().removeObserver(this.hintsObserver, NotificationCenter.reloadHints);
        Runnable runnable = this.searchRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        Runnable runnable2 = this.cancelEmulation;
        if (runnable2 != null) {
            runnable2.run();
        }
        super.onFragmentDestroy();
    }

    private void selectRecipient(final TLRPC.User user, String str) {
        WalletSendEnterAmount recipientDomain;
        if (this.collectible == null) {
            if (user != null) {
                recipientDomain = new WalletSendEnterAmount(user);
            } else {
                recipientDomain = new WalletSendEnterAmount(str).setRecipientDomain(TextUtils.equals(str, this.validAddress) ? this.recipientDomain : null);
            }
            presentFragment(recipientDomain);
            return;
        }
        if (this.selectingRecipient) {
            return;
        }
        this.selectingRecipient = true;
        this.continueButton.setLoading(true);
        final GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$selectRecipient$4(gramWallet, user, (String) obj);
            }
        };
        if (user != null) {
            gramWallet.resolveWallet(user, true, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$selectRecipient$5(callback, (TL_wallet.walletUserAddress) obj, (String) obj2);
                }
            });
        } else {
            callback.run(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectRecipient$4(final GramWallet gramWallet, final TLRPC.User user, final String str) {
        if (this.destroyed) {
            return;
        }
        if (TextUtils.isEmpty(str) || !GramWallet.addressEquals(this.sourceAddress, gramWallet.getAddress())) {
            this.selectingRecipient = false;
            this.continueButton.setLoading(false);
            BulletinFactory.of(this).showForError(TextUtils.isEmpty(str) ? LocaleController.getString(C2807R.string.WalletRecipientUnavailable) : "WALLET_CHANGED");
            return;
        }
        this.cancelEmulation = gramWallet.emulateSendNFT(str, this.collectible, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda10
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$selectRecipient$3(gramWallet, user, str, (TL_wallet.walletTransaction) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectRecipient$3(final GramWallet gramWallet, final TLRPC.User user, final String str, TL_wallet.walletTransaction wallettransaction, String str2) {
        this.cancelEmulation = null;
        if (this.destroyed) {
            return;
        }
        this.continueButton.setLoading(false);
        if (wallettransaction == null || !GramWallet.addressEquals(this.sourceAddress, gramWallet.getAddress())) {
            this.selectingRecipient = false;
            BulletinFactory bulletinFactoryOf = BulletinFactory.of(this);
            if (str2 == null) {
                str2 = LocaleController.getString(C2807R.string.WalletCollectibleTransferPrepareFailed);
            }
            bulletinFactoryOf.showForError(str2);
            return;
        }
        if (user != null) {
            TL_wallet.walletTransactionPeerUser wallettransactionpeeruser = new TL_wallet.walletTransactionPeerUser();
            wallettransactionpeeruser.user_id = user.id;
            wallettransactionpeeruser.address = str;
            wallettransaction.peer = wallettransactionpeeruser;
        }
        WalletActivity.openTransactionSheet(getContext(), this.currentAccount, wallettransaction, new Utilities.Callback3() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda16
            @Override // org.telegram.messenger.Utilities.Callback3
            public final void run(Object obj, Object obj2, Object obj3) {
                this.f$0.lambda$selectRecipient$1(gramWallet, user, str, (String) obj, (Boolean) obj2, (Utilities.Callback) obj3);
            }
        }, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda17
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$selectRecipient$2((String) obj, (Boolean) obj2);
            }
        }, getResourceProvider());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectRecipient$1(GramWallet gramWallet, TLRPC.User user, String str, String str2, Boolean bool, final Utilities.Callback callback) {
        if (!GramWallet.addressEquals(this.sourceAddress, gramWallet.getAddress())) {
            callback.run("WALLET_CHANGED");
        } else {
            gramWallet.sendNFT(user, str, this.collectible, str2, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda21
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$selectRecipient$0(callback, (String) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectRecipient$0(Utilities.Callback callback, String str) {
        callback.run(str);
        if (str != null || this.destroyed) {
            return;
        }
        if (getParentLayout() != null) {
            for (BaseFragment baseFragment : getParentLayout().getFragmentStack()) {
                if (baseFragment instanceof WalletActivity) {
                    ((WalletActivity) baseFragment).showTransactions();
                }
            }
        }
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectRecipient$2(String str, Boolean bool) {
        this.selectingRecipient = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectRecipient$5(Utilities.Callback callback, TL_wallet.walletUserAddress walletuseraddress, String str) {
        if (str != null) {
            this.continueButton.setLoading(false);
        } else {
            callback.run(walletuseraddress == null ? null : walletuseraddress.address);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(int i, int i2, Object[] objArr) {
        UniversalRecyclerView universalRecyclerView;
        if (this.destroyed || (universalRecyclerView = this.listView) == null) {
            return;
        }
        universalRecyclerView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7() {
        refreshClipboard(true);
    }

    public WalletSendSelectSender() {
        this(null);
    }

    public WalletSendSelectSender(String str) {
        this.recentUsers = new ArrayList<>();
        this.searchUsers = new ArrayList<>();
        this.hintsObserver = new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i, int i2, Object[] objArr) {
                this.f$0.lambda$new$6(i, i2, objArr);
            }
        };
        this.pasteButtonVisible = true;
        this.scanButtonVisible = true;
        this.clipboardHasData = true;
        this.clipboardListener = new ClipboardManager.OnPrimaryClipChangedListener() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda7
            @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
            public final void onPrimaryClipChanged() {
                this.f$0.lambda$new$7();
            }
        };
        this.initialRecipient = str;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public CharSequence getTitle() {
        return LocaleController.getString(this.collectible == null ? C2807R.string.WalletSendGrams : C2807R.string.WalletTransferCollectible);
    }

    @Override // org.telegram.ui.Components.UniversalFragment, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.fragmentView = super.createView(context);
        this.actionBar.setAdaptiveBackground(this.listView);
        this.listView.setSections();
        this.listView.setPadding(0, 0, 0, AndroidUtilities.dp(68.0f));
        this.listView.setClipToPadding(false);
        this.listView.adapter.setApplyBackground(false);
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                WalletSendSelectSender walletSendSelectSender = WalletSendSelectSender.this;
                if (walletSendSelectSender.listView.scrollingByUser) {
                    AndroidUtilities.hideKeyboard(walletSendSelectSender.recipientEdit);
                }
            }
        });
        this.recipientRow = createRecipientRow(context);
        SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(true);
        this.searchAdapterHelper = searchAdapterHelper;
        searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender.2
            @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public void onDataSetChanged(int i) {
                if (WalletSendSelectSender.this.destroyed || i != WalletSendSelectSender.this.searchId) {
                    return;
                }
                WalletSendSelectSender walletSendSelectSender = WalletSendSelectSender.this;
                walletSendSelectSender.rebuildSearchUsers(walletSendSelectSender.recipientEdit.getText().toString().trim());
            }
        });
        getNotificationCenter().addObserver(this.hintsObserver, NotificationCenter.reloadHints);
        MediaDataController.getInstance(this.currentAccount).loadHints(true);
        loadRecentUsers();
        if (!TextUtils.isEmpty(this.initialRecipient)) {
            this.recipientEdit.setText(this.initialRecipient);
            EditTextBoldCursor editTextBoldCursor = this.recipientEdit;
            editTextBoldCursor.setSelection(editTextBoldCursor.length());
        }
        FrameLayout frameLayout = new FrameLayout(context);
        this.buttonContainer = frameLayout;
        frameLayout.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(10.0f));
        int themedColor = getThemedColor(Theme.key_windowBackgroundGray);
        this.buttonContainer.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Theme.multAlpha(themedColor, 0.0f), themedColor, themedColor}));
        ButtonWithCounterView round = new ButtonWithCounterView(context, getResourceProvider()).setRound();
        this.continueButton = round;
        round.setText(LocaleController.getString(C2807R.string.WalletContinue));
        this.continueButton.setEnabled(false);
        this.continueButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$8(view);
            }
        });
        updateContinueButton();
        this.buttonContainer.addView(this.continueButton, LayoutHelper.createFrame(-1, 48, 119));
        ((FrameLayout) this.fragmentView).addView(this.buttonContainer, LayoutHelper.createFrame(-1, 68, 87));
        updateBottomLayout();
        this.listView.adapter.update(false);
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(View view) {
        if (this.validAddress != null) {
            AndroidUtilities.hideKeyboard(this.recipientEdit);
            selectRecipient(null, this.validAddress);
        }
    }

    private FrameLayout createRecipientRow(Context context) {
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Wallet.WalletSendSelectSender.3
            @Override // android.view.View
            public void onWindowFocusChanged(boolean z) {
                super.onWindowFocusChanged(z);
                if (z) {
                    WalletSendSelectSender.this.refreshClipboard(true);
                }
            }
        };
        this.clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Wallet.WalletSendSelectSender.4
            private final GradientClip gradientClip = new GradientClip();

            @Override // org.telegram.ui.Components.EditTextBoldCursor, org.telegram.ui.Components.EditTextEffects, android.widget.TextView, android.view.View
            public void onDraw(Canvas canvas) {
                if (length() == 0) {
                    super.onDraw(canvas);
                    return;
                }
                canvas.saveLayerAlpha(getScrollX(), 0.0f, getScrollX() + getWidth(), getHeight(), 255, 31);
                super.onDraw(canvas);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(getScrollX(), 0.0f, getScrollX() + AndroidUtilities.dp(12.0f), getHeight());
                this.gradientClip.draw(canvas, rectF, 0, 1.0f);
                rectF.set((getScrollX() + getWidth()) - AndroidUtilities.dp(12.0f), 0.0f, getScrollX() + getWidth(), getHeight());
                this.gradientClip.draw(canvas, rectF, 2, 1.0f);
                canvas.restore();
            }
        };
        this.recipientEdit = editTextBoldCursor;
        editTextBoldCursor.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        this.recipientEdit.setHintTextColor(Theme.multAlpha(getThemedColor(Theme.key_windowBackgroundWhiteHintText), 0.72f));
        this.recipientEdit.setTextSize(1, 16.0f);
        this.recipientEdit.setHint(LocaleController.getString(C2807R.string.WalletAddressOrName));
        this.recipientEdit.setSingleLine(true);
        this.recipientEdit.setBackground(null);
        this.recipientEdit.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
        this.recipientEdit.setClipToPadding(true);
        this.recipientEdit.setCursorWidth(1.5f);
        this.recipientEdit.setGravity(16);
        this.recipientEdit.setInputType(524289);
        this.recipientEdit.setImeOptions(33554437);
        frameLayout.addView(this.recipientEdit, LayoutHelper.createFrame(-1, -1.0f, 119, 8.0f, 0.0f, 52.0f, 0.0f));
        TextView textView = new TextView(context);
        this.pasteButton = textView;
        textView.setText(LocaleController.getString(C2807R.string.WalletPaste));
        TextView textView2 = this.pasteButton;
        int i = Theme.key_windowBackgroundWhiteBlueText;
        textView2.setTextColor(getThemedColor(i));
        this.pasteButton.setTextSize(1, 14.0f);
        this.pasteButton.setTypeface(AndroidUtilities.bold());
        this.pasteButton.setGravity(17);
        this.pasteButton.setSingleLine(true);
        this.pasteButton.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
        this.pasteButton.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(16.0f), Theme.multAlpha(getThemedColor(i), 0.1f), Theme.multAlpha(getThemedColor(i), 0.18f)));
        this.pasteButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createRecipientRow$9(view);
            }
        });
        ScaleStateListAnimator.apply(this.pasteButton, 0.04f, 1.2f);
        frameLayout.addView(this.pasteButton, LayoutHelper.createFrame(-2, 32.0f, 21, 0.0f, 0.0f, 62.0f, 0.0f));
        this.recipientEdit.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WalletSendSelectSender.this.searchUsers.clear();
                WalletSendSelectSender.this.scheduleSearch(editable.toString().trim());
                WalletSendSelectSender.this.updateRecipientButtons(true);
            }
        });
        ImageView imageView = new ImageView(context);
        this.scanButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.scanButton.setImageResource(C2807R.drawable.scan_qr);
        this.scanButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(i), PorterDuff.Mode.SRC_IN));
        this.scanButton.setBackground(Theme.createSelectorDrawable(Theme.multAlpha(getThemedColor(i), 0.12f)));
        this.scanButton.setContentDescription(LocaleController.getString(C2807R.string.WalletScanQRCode));
        this.scanButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createRecipientRow$10(view);
            }
        });
        frameLayout.addView(this.scanButton, LayoutHelper.createFrame(32, 40.0f, 21, 0.0f, 0.0f, 20.0f, 0.0f));
        refreshClipboard(false);
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createRecipientRow$9(View view) {
        pasteRecipient();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createRecipientRow$10(View view) {
        openWalletQrScanner();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null) {
            clipboardManager.removePrimaryClipChangedListener(this.clipboardListener);
            this.clipboardManager.addPrimaryClipChangedListener(this.clipboardListener);
        }
        refreshClipboard(true);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null) {
            clipboardManager.removePrimaryClipChangedListener(this.clipboardListener);
        }
        destroyScanOverlay();
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshClipboard(boolean z) {
        if (this.destroyed || this.recipientEdit == null || this.scanButton == null) {
            return;
        }
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null) {
            this.clipboardHasData = clipboardManager.hasPrimaryClip();
        } else {
            this.clipboardHasData = false;
        }
        updateRecipientButtons(z);
    }

    private void setPasteButtonVisible(boolean z, boolean z2) {
        if (this.pasteButtonVisible == z && z2) {
            return;
        }
        this.pasteButtonVisible = z;
        animateRecipientButton(this.pasteButton, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRecipientButtons(boolean z) {
        int iDp;
        if (this.scanButton == null) {
            return;
        }
        boolean z2 = false;
        boolean z3 = this.recipientEdit.length() == 0;
        if (z3 && this.clipboardHasData) {
            z2 = true;
        }
        setPasteButtonVisible(z2, z);
        if (this.scanButtonVisible != z3 || !z) {
            this.scanButtonVisible = z3;
            animateRecipientButton(this.scanButton, z3, z);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.recipientEdit.getLayoutParams();
        if (this.pasteButtonVisible) {
            iDp = AndroidUtilities.dp(70.0f) + getPasteButtonWidth();
        } else {
            iDp = AndroidUtilities.dp(this.scanButtonVisible ? 60.0f : 8.0f);
        }
        if (layoutParams.rightMargin != iDp) {
            layoutParams.rightMargin = iDp;
            this.recipientEdit.setLayoutParams(layoutParams);
        }
    }

    private int getPasteButtonWidth() {
        return ((int) Math.ceil(this.pasteButton.getPaint().measureText(this.pasteButton.getText().toString()))) + this.pasteButton.getPaddingLeft() + this.pasteButton.getPaddingRight();
    }

    private void animateRecipientButton(final View view, final boolean z, boolean z2) {
        view.animate().cancel();
        view.setEnabled(z);
        float f = z ? 1.0f : 0.0f;
        float f2 = z ? 1.0f : 0.5f;
        if (!z2) {
            view.setAlpha(f);
            view.setScaleX(f2);
            view.setScaleY(f2);
            view.setVisibility(z ? 0 : 8);
            return;
        }
        view.setVisibility(0);
        view.animate().alpha(f).scaleX(f2).scaleY(f2).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).withEndAction(new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                view.setVisibility(z ? 0 : 8);
            }
        }).start();
    }

    private void openWalletQrScanner() {
        if (getParentActivity() == null || this.scanOverlay != null || this.scanButton == null) {
            return;
        }
        AndroidUtilities.hideKeyboard(this.recipientEdit);
        if (getParentActivity().checkSelfPermission("android.permission.CAMERA") != 0) {
            getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 44);
        } else {
            this.scanOverlay = QrScanOverlay.open(this, this.scanButton, new Utilities.CallbackReturn() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda12
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return Boolean.valueOf(WalletSendSelectSender.scannedRecipient((String) obj) != null);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda13
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$openWalletQrScanner$14((String) obj);
                }
            }, new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openWalletQrScanner$15();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWalletQrScanner$14(String str) {
        String strScannedRecipient = scannedRecipient(str);
        if (this.isFinished || this.recipientEdit == null || strScannedRecipient == null) {
            return;
        }
        if (strScannedRecipient.startsWith("@")) {
            WalletActivity.resolveWalletQrUser(this.currentAccount, strScannedRecipient.substring(1), new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda18
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$openWalletQrScanner$13((TLRPC.User) obj);
                }
            });
            return;
        }
        this.recipientEdit.setText(strScannedRecipient);
        EditTextBoldCursor editTextBoldCursor = this.recipientEdit;
        editTextBoldCursor.setSelection(editTextBoldCursor.length());
        AndroidUtilities.hideKeyboard(this.recipientEdit);
        selectRecipient(null, strScannedRecipient);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWalletQrScanner$13(TLRPC.User user) {
        EditTextBoldCursor editTextBoldCursor;
        if (this.isFinished || (editTextBoldCursor = this.recipientEdit) == null) {
            return;
        }
        if (user == null) {
            showInvalidWalletQr();
        } else {
            AndroidUtilities.hideKeyboard(editTextBoldCursor);
            selectRecipient(user, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWalletQrScanner$15() {
        this.scanOverlay = null;
    }

    private static String scannedRecipient(String str) {
        Uri uriWalletQrUri = WalletActivity.walletQrUri(str);
        if ("ton".equalsIgnoreCase(uriWalletQrUri.getScheme())) {
            if ("transfer".equalsIgnoreCase(uriWalletQrUri.getAuthority()) && uriWalletQrUri.getPathSegments().size() == 1) {
                String str2 = uriWalletQrUri.getPathSegments().get(0);
                if (WalletEngine2.isValidRecipientAddress(str2)) {
                    return str2;
                }
            }
            return null;
        }
        if (!WalletActivity.isWalletQrLink(uriWalletQrUri)) {
            return null;
        }
        String strWalletQrUsername = WalletActivity.walletQrUsername(uriWalletQrUri);
        if (strWalletQrUsername != null) {
            return "@".concat(strWalletQrUsername);
        }
        String queryParameter = uriWalletQrUri.getQueryParameter("to");
        if (TextUtils.isEmpty(queryParameter)) {
            return null;
        }
        if (queryParameter.startsWith("@") || queryParameter.matches("[a-zA-Z0-9_]{1,32}")) {
            if (queryParameter.startsWith("@")) {
                queryParameter = queryParameter.substring(1);
            }
            if (TextUtils.isEmpty(queryParameter)) {
                return null;
            }
            return "@".concat(queryParameter);
        }
        if (WalletEngine2.isValidRecipientAddress(queryParameter)) {
            return queryParameter;
        }
        return null;
    }

    private void destroyScanOverlay() {
        QrScanOverlay qrScanOverlay = this.scanOverlay;
        if (qrScanOverlay != null) {
            qrScanOverlay.destroy();
            AndroidUtilities.removeFromParent(this.scanOverlay);
            this.scanOverlay = null;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        QrScanOverlay qrScanOverlay = this.scanOverlay;
        if (qrScanOverlay == null) {
            return super.onBackPressed(z);
        }
        if (!z) {
            return false;
        }
        qrScanOverlay.close();
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResultFragment(i, strArr, iArr);
        if (i != 44 || getParentActivity() == null) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            openWalletQrScanner();
        } else {
            new AlertDialog.Builder(getParentActivity()).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.QRCodePermissionNoCameraWithHint))).setPositiveButton(LocaleController.getString(C2807R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$onRequestPermissionsResultFragment$16(alertDialog, i2);
                }
            }).setNegativeButton(LocaleController.getString(C2807R.string.ContactsPermissionAlertNotNow), null).setTopAnimation(C2807R.raw.permission_request_camera, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultFragment$16(AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            getParentActivity().startActivity(intent);
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showInvalidWalletQr$17() {
        BulletinFactory.of(this).createSimpleBulletin(LocaleController.getString(C2807R.string.ScanQrCode), LocaleController.getString(C2807R.string.ErrorOccurred)).show();
    }

    private void showInvalidWalletQr() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showInvalidWalletQr$17();
            }
        });
    }

    private void loadRecentUsers() {
        this.recentUsers.clear();
        DialogsSearchAdapter.loadRecentSearch(this.currentAccount, 0, new DialogsSearchAdapter.OnRecentSearchLoaded() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda15
            @Override // org.telegram.ui.Adapters.DialogsSearchAdapter.OnRecentSearchLoaded
            public final void setRecentSearch(ArrayList arrayList, LongSparseArray longSparseArray) {
                this.f$0.lambda$loadRecentUsers$18(arrayList, longSparseArray);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRecentUsers$18(ArrayList arrayList, LongSparseArray longSparseArray) {
        if (this.destroyed) {
            return;
        }
        this.recentUsers.clear();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            DialogsSearchAdapter.RecentSearchObject recentSearchObject = (DialogsSearchAdapter.RecentSearchObject) obj;
            TLObject tLObject = recentSearchObject.object;
            if ((tLObject instanceof TLRPC.User) && isSelectableUser((TLRPC.User) tLObject)) {
                this.recentUsers.add((TLRPC.User) recentSearchObject.object);
            }
        }
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.adapter.update(true);
        }
    }

    private boolean isSelectableUser(TLRPC.User user) {
        return (user == null || user.bot || user.self || UserObject.isDeleted(user) || UserObject.isService(user.id)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleSearch(final String str) {
        Runnable runnable = this.searchRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.searchRunnable = null;
        }
        boolean z = false;
        if (this.dnsRequestId != 0) {
            getConnectionsManager().cancelRequest(this.dnsRequestId, true);
            this.dnsRequestId = 0;
        }
        String str2 = isValidAddress(str) ? str : null;
        this.validAddress = str2;
        this.recipientDomain = str2 == null ? GramWalletDns.normalizeDomain(str) : null;
        final int i = this.searchId + 1;
        this.searchId = i;
        if (!TextUtils.isEmpty(str) && this.validAddress == null) {
            z = true;
        }
        this.searchLoading = z;
        this.searchAdapterHelper.queryServerSearch(null, true, false, false, false, false, 0L, false, 0, i);
        updateContinueButton();
        if (TextUtils.isEmpty(str) || this.validAddress != null || this.recipientDomain != null) {
            this.searchUsers.clear();
            this.listView.adapter.update(true);
            final String str3 = this.recipientDomain;
            if (str3 != null) {
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda19
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$scheduleSearch$20(str3, i);
                    }
                };
                this.searchRunnable = runnable2;
                AndroidUtilities.runOnUIThread(runnable2, 300L);
                return;
            }
            return;
        }
        rebuildSearchUsers(str);
        Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scheduleSearch$22(str, i);
            }
        };
        this.searchRunnable = runnable3;
        AndroidUtilities.runOnUIThread(runnable3, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scheduleSearch$20(String str, final int i) {
        this.searchRunnable = null;
        this.dnsRequestId = GramWalletDns.resolve(this.currentAccount, str, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda23
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$scheduleSearch$19(i, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scheduleSearch$19(int i, String str) {
        if (this.destroyed || i != this.searchId) {
            return;
        }
        this.dnsRequestId = 0;
        this.searchLoading = false;
        this.validAddress = isValidAddress(str) ? WalletEngine2.toUserFriendlyAddress(str) : null;
        updateContinueButton();
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scheduleSearch$22(String str, final int i) {
        this.searchRunnable = null;
        this.searchAdapterHelper.queryServerSearch(str, true, false, false, false, false, 0L, false, 0, i, 0L, new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scheduleSearch$21(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scheduleSearch$21(int i) {
        if (this.destroyed || i != this.searchId) {
            return;
        }
        this.searchLoading = false;
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rebuildSearchUsers(String str) {
        this.searchUsers.clear();
        if (TextUtils.isEmpty(str) || this.validAddress != null || this.recipientDomain != null) {
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (universalRecyclerView != null) {
                universalRecyclerView.adapter.update(true);
                return;
            }
            return;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        HashSet hashSet = new HashSet();
        ArrayList<TLRPC.Dialog> arrayList = getMessagesController().dialogsUsersOnly;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            TLRPC.Dialog dialog = arrayList.get(i2);
            i2++;
            TLRPC.Dialog dialog2 = dialog;
            if (dialog2 != null && dialog2.id > 0) {
                TLRPC.User user = getMessagesController().getUser(Long.valueOf(dialog2.id));
                if (isSelectableUser(user) && matches(user, lowerCase) && hashSet.add(Long.valueOf(user.id))) {
                    this.searchUsers.add(user);
                }
            }
        }
        ArrayList<TLObject> globalSearch = this.searchAdapterHelper.getGlobalSearch();
        int size2 = globalSearch.size();
        while (i < size2) {
            TLObject tLObject = globalSearch.get(i);
            i++;
            TLObject tLObject2 = tLObject;
            if (tLObject2 instanceof TLRPC.User) {
                TLRPC.User user2 = (TLRPC.User) tLObject2;
                if (isSelectableUser(user2) && hashSet.add(Long.valueOf(user2.id))) {
                    this.searchUsers.add(user2);
                }
            }
        }
        UniversalRecyclerView universalRecyclerView2 = this.listView;
        if (universalRecyclerView2 != null) {
            universalRecyclerView2.adapter.update(true);
        }
    }

    private boolean matches(TLRPC.User user, String str) {
        String userName = UserObject.getUserName(user);
        if (userName != null && userName.toLowerCase(Locale.ROOT).contains(str)) {
            return true;
        }
        String publicUsername = UserObject.getPublicUsername(user);
        return publicUsername != null && publicUsername.toLowerCase(Locale.ROOT).contains(str);
    }

    private void pasteRecipient() {
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        if (clipboardManager == null || !clipboardManager.hasPrimaryClip()) {
            this.clipboardHasData = false;
            updateRecipientButtons(true);
            return;
        }
        ClipData primaryClip = clipboardManager.getPrimaryClip();
        if (primaryClip == null || primaryClip.getItemCount() == 0) {
            this.clipboardHasData = false;
            updateRecipientButtons(true);
            return;
        }
        CharSequence charSequenceCoerceToText = primaryClip.getItemAt(0).coerceToText(getContext());
        if (!TextUtils.isEmpty(charSequenceCoerceToText)) {
            this.recipientEdit.setText(charSequenceCoerceToText.toString().trim());
            EditTextBoldCursor editTextBoldCursor = this.recipientEdit;
            editTextBoldCursor.setSelection(editTextBoldCursor.length());
        } else {
            this.clipboardHasData = false;
            updateRecipientButtons(true);
        }
    }

    private void updateContinueButton() {
        ButtonWithCounterView buttonWithCounterView = this.continueButton;
        if (buttonWithCounterView != null) {
            buttonWithCounterView.setEnabled(this.validAddress != null);
        }
    }

    private boolean isValidAddress(String str) {
        return WalletEngine2.isValidRecipientAddress(str);
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        ArrayList<TLRPC.User> arrayList2;
        if (this.recipientRow == null) {
            return;
        }
        arrayList.add(UItem.asSpace(AndroidUtilities.dp(4.0f)));
        universalAdapter.whiteSectionStart();
        arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.WalletRecipient)));
        arrayList.add(UItem.asCustom(this.recipientRow, 50));
        universalAdapter.whiteSectionEnd();
        String strTrim = this.recipientEdit.getText().toString().trim();
        String lowerCase = strTrim.toLowerCase(Locale.ROOT);
        if (this.validAddress != null) {
            if (this.addressResult == null) {
                this.addressResult = createAddressResult();
            }
            TextView textView = this.addressResultTitle;
            String string = this.recipientDomain;
            if (string == null) {
                string = LocaleController.getString(C2807R.string.WalletGramWalletAddress);
            }
            textView.setText(string);
            this.addressResultSubtitle.setText(this.validAddress);
            arrayList.add(UItem.asSpace(AndroidUtilities.dp(12.0f)));
            universalAdapter.whiteSectionStart();
            arrayList.add(UItem.asCustom(this.addressResult, 60));
            universalAdapter.whiteSectionEnd();
            return;
        }
        if (TextUtils.isEmpty(lowerCase)) {
            arrayList2 = new ArrayList<>();
            HashSet hashSet = new HashSet();
            ArrayList<TLRPC.TL_topPeer> arrayList3 = MediaDataController.getInstance(this.currentAccount).hints;
            int size = arrayList3.size();
            int i = 0;
            while (i < size) {
                TLRPC.TL_topPeer tL_topPeer = arrayList3.get(i);
                i++;
                TLRPC.User user = getMessagesController().getUser(Long.valueOf(tL_topPeer.peer.user_id));
                if (isSelectableUser(user) && hashSet.add(Long.valueOf(user.id))) {
                    arrayList2.add(user);
                }
            }
            ArrayList<TLRPC.User> arrayList4 = this.recentUsers;
            int size2 = arrayList4.size();
            int i2 = 0;
            while (i2 < size2) {
                TLRPC.User user2 = arrayList4.get(i2);
                i2++;
                TLRPC.User user3 = user2;
                if (hashSet.add(Long.valueOf(user3.id))) {
                    arrayList2.add(user3);
                }
            }
        } else {
            arrayList2 = this.searchUsers;
        }
        int size3 = arrayList2.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size3) {
            TLRPC.User user4 = arrayList2.get(i4);
            i4++;
            final TLRPC.User user5 = user4;
            if (i3 == 0) {
                arrayList.add(UItem.asSpace(AndroidUtilities.dp(12.0f)));
                universalAdapter.whiteSectionStart();
                if (TextUtils.isEmpty(lowerCase)) {
                    arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.Recent)));
                }
            }
            UItem uItemAsProfileCell = UItem.asProfileCell(user5);
            if (!TextUtils.isEmpty(lowerCase)) {
                uItemAsProfileCell.text = AndroidUtilities.generateSearchName(user5.first_name, user5.last_name, strTrim);
                String publicUsername = UserObject.getPublicUsername(user5);
                if (!TextUtils.isEmpty(publicUsername)) {
                    uItemAsProfileCell.subtext = AndroidUtilities.generateSearchName("@" + publicUsername, null, "@".concat(strTrim));
                }
                final CharSequence charSequence = uItemAsProfileCell.text;
                final CharSequence charSequence2 = uItemAsProfileCell.subtext;
                uItemAsProfileCell.bind = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda4
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        ((ProfileSearchCell) ((View) obj)).setData(user5, null, charSequence, charSequence2, false, false);
                    }
                };
            }
            arrayList.add(uItemAsProfileCell);
            i3++;
        }
        if (this.searchLoading) {
            if (i3 == 0) {
                arrayList.add(UItem.asSpace(AndroidUtilities.dp(12.0f)));
                universalAdapter.whiteSectionStart();
            }
            int i5 = this.recipientDomain != null ? 1 : 3;
            for (int i6 = 0; i6 < i5; i6++) {
                arrayList.add(UItem.asFlicker((-1) - i6, 18));
            }
        }
        if (i3 > 0 || this.searchLoading) {
            universalAdapter.whiteSectionEnd();
        }
        if (this.searchLoading || i3 > 0 || TextUtils.isEmpty(lowerCase)) {
            return;
        }
        arrayList.add(ChatAttachAlertAudioLayout.EmptyView.Factory.as(LocaleController.getString(C2807R.string.SearchEmptyViewTitle), LocaleController.formatString(C2807R.string.WalletSearchNoResults, lowerCase)));
    }

    private FrameLayout createAddressResult() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 2));
        boolean z = LocaleController.isRTL;
        int i = z ? 5 : 3;
        ImageView imageView = new ImageView(getContext());
        imageView.setImageDrawable(WalletRecipientView.createGramAvatar(getContext(), 46, getResourceProvider()));
        frameLayout.addView(imageView, LayoutHelper.createFrame(46, 46.0f, i | 16, z ? 0.0f : 11.0f, 0.0f, z ? 11.0f : 0.0f, 0.0f));
        TextView textView = new TextView(getContext());
        this.addressResultTitle = textView;
        textView.setText(LocaleController.getString(C2807R.string.WalletGramWalletAddress));
        textView.setTextSize(1, 16.0f);
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setTypeface(AndroidUtilities.bold());
        textView.setSingleLine();
        textView.setGravity(i);
        frameLayout.addView(textView, LayoutHelper.createFrame(-1, 24.0f, 48, z ? 16.0f : 72.0f, 8.0f, z ? 72.0f : 16.0f, 0.0f));
        TextView textView2 = new TextView(getContext());
        this.addressResultSubtitle = textView2;
        textView2.setTextSize(1, 14.0f);
        this.addressResultSubtitle.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        this.addressResultSubtitle.setSingleLine();
        this.addressResultSubtitle.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        this.addressResultSubtitle.setGravity(i);
        frameLayout.addView(this.addressResultSubtitle, LayoutHelper.createFrame(-1, 22.0f, 48, z ? 16.0f : 72.0f, 32.0f, z ? 72.0f : 16.0f, 0.0f));
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletSendSelectSender$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createAddressResult$24(view);
            }
        });
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createAddressResult$24(View view) {
        if (this.validAddress == null) {
            return;
        }
        AndroidUtilities.hideKeyboard(this.recipientEdit);
        selectRecipient(null, this.validAddress);
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        Object obj = uItem.object;
        if (obj instanceof TLRPC.User) {
            TLRPC.User user = (TLRPC.User) obj;
            DialogsSearchAdapter.putRecentSearch(this.currentAccount, user.id);
            AndroidUtilities.hideKeyboard(this.recipientEdit);
            selectRecipient(user, null);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public WindowInsetsCompat onInsetsInternal(View view, WindowInsetsCompat windowInsetsCompat) {
        this.keyboardInset = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime()).bottom;
        return super.onInsetsInternal(view, windowInsetsCompat);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.bottomInset = i4;
        updateBottomLayout();
    }

    private void updateBottomLayout() {
        int iMax = Math.max(0, this.keyboardInset - this.bottomInset);
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.setPadding(0, 0, 0, AndroidUtilities.dp(68.0f) + this.bottomInset + iMax);
            this.listView.setClipToPadding(false);
        }
        FrameLayout frameLayout = this.buttonContainer;
        if (frameLayout != null) {
            frameLayout.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(10.0f) + this.bottomInset);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.buttonContainer.getLayoutParams();
            layoutParams.height = AndroidUtilities.dp(68.0f) + this.bottomInset;
            this.buttonContainer.setLayoutParams(layoutParams);
            if (this.lastBottom != iMax) {
                this.buttonContainer.animate().cancel();
                this.buttonContainer.animate().translationY(-iMax).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                this.lastBottom = iMax;
            }
        }
    }
}
