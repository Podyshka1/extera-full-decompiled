package org.telegram.ui.Wallet;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.mediarouter.media.PlatformMediaRouter1RouteProvider;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.CheckBoxCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LoadingSpan;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.TopViewCell;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalFragment;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Wallet.GramWallet;

/* JADX INFO: loaded from: classes8.dex */
public class WalletKeysBackupFragment extends UniversalFragment implements NotificationCenter.NotificationCenterDelegate {
    private boolean destroyed;
    private final ArrayList<GramWallet.PreparedDisableBackup> preparedBackups = new ArrayList<>();
    private final int BTN_RECOVERY_PHRASE = 1;
    private final int BTN_ENABLE_BACKUP = 2;
    private final int BTN_DISABLE_BACKUP = 3;
    private final int BTN_DELETE = 4;

    public static /* synthetic */ void $r8$lambda$zSFiZyxEUN5_YfNHmeKs5QL8AdE(AlertDialog alertDialog, int i) {
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        return false;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public CharSequence getTitle() {
        return LocaleController.getString(C2807R.string.WalletKeysAndBackup);
    }

    @Override // org.telegram.ui.Components.UniversalFragment, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.fragmentView = super.createView(context);
        this.actionBar.setAdaptiveBackground(this.listView);
        this.listView.setSections();
        this.listView.setClipToPadding(false);
        return this.fragmentView;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.walletUpdate);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.walletUpdate);
        this.destroyed = true;
        ArrayList<GramWallet.PreparedDisableBackup> arrayList = this.preparedBackups;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            GramWallet.PreparedDisableBackup preparedDisableBackup = arrayList.get(i);
            i++;
            preparedDisableBackup.close();
        }
        this.preparedBackups.clear();
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalRecyclerView universalRecyclerView;
        if (i != NotificationCenter.walletUpdate || (universalRecyclerView = this.listView) == null) {
            return;
        }
        universalRecyclerView.adapter.update(true);
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        boolean z = true;
        if (gramWallet.canExportPhrase() || gramWallet.cantAccessWallet()) {
            arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.WalletRecoveryPhraseLearnTitle)));
            arrayList.add(UItem.asButton(1, LocaleController.getString(C2807R.string.WalletRecoveryPhraseLearnButton)).accent());
            arrayList.add(UItem.asShadow(LocaleController.getString(C2807R.string.WalletRecoveryPhraseTransferInfo)));
        }
        if (gramWallet.isBackupEnabled() || gramWallet.canEnableBackup()) {
            arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.WalletEncryptedBackup)));
            if (gramWallet.isBackupEnabled()) {
                arrayList.add(UItem.asButton(3, LocaleController.getString(C2807R.string.WalletDisableBackup)).red());
                arrayList.add(UItem.asShadow(LocaleController.getString(C2807R.string.WalletBackupEnabledDescription)));
            } else {
                arrayList.add(UItem.asButton(2, LocaleController.getString(C2807R.string.WalletEnableBackup)).accent());
                arrayList.add(UItem.asShadow(LocaleController.getString(C2807R.string.WalletBackupDisabledDescription)));
            }
        }
        arrayList.add(UItem.asButton(4, LocaleController.getString(C2807R.string.WalletDeleteWallet)).red());
        List<GramWallet.PreviousWallet> previousWallets = gramWallet.getPreviousWallets();
        if (previousWallets.isEmpty()) {
            return;
        }
        for (GramWallet.PreviousWallet previousWallet : previousWallets) {
            if (!previousWallet.outdated || BuildVars.DEBUG_PRIVATE_VERSION) {
                if (z) {
                    arrayList.add(UItem.asShadow(null));
                    arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.WalletPreviousWallets)));
                    z = false;
                }
                arrayList.add(LocalWalletCell.Factory.of(previousWallet.address, previousWallet.balance, previousWallet.lastUsage, previousWallet.outdated));
            }
        }
        if (z) {
            return;
        }
        arrayList.add(UItem.asShadow(LocaleController.getString(C2807R.string.WalletPreviousWalletsInfo)));
    }

    public static void showRecoveryPhraseLearnAlert(Context context, final Theme.ResourcesProvider resourcesProvider, final Utilities.Callback<Utilities.Callback<String>> callback) {
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, 0, 0, AndroidUtilities.dp(8.0f));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(AndroidUtilities.dp(36.0f), 0, AndroidUtilities.dp(36.0f), 0);
        TopViewCell topViewCell = new TopViewCell(context, resourcesProvider);
        topViewCell.setPadding(AndroidUtilities.dp(0.0f), AndroidUtilities.dp(24.0f), AndroidUtilities.dp(0.0f), AndroidUtilities.dp(4.0f));
        topViewCell.setEmojiSize(100);
        topViewCell.imageView.getImageReceiver().setCurrentAccount(AndroidUtilities.getAccountInProduction());
        MediaDataController.getInstance(AndroidUtilities.getAccountInProduction()).setPlaceholderImage(topViewCell.imageView, "RestrictedEmoji", "📝", "100_100");
        linearLayout2.addView(topViewCell, LayoutHelper.createLinear(-1, -2, 7));
        topViewCell.setText(Emoji.replaceEmoji(LocaleController.getString(C2807R.string.WalletRecoveryPhraseLearnTitle), topViewCell.titleView.getPaint().getFontMetricsInt(), false), Emoji.replaceEmoji(LocaleController.getString(C2807R.string.WalletRecoveryPhraseLearnInfo), topViewCell.textView.getPaint().getFontMetricsInt(), false));
        topViewCell.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        topViewCell.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        NotificationCenter.listenEmojiLoading(topViewCell.titleView);
        NotificationCenter.listenEmojiLoading(topViewCell.textView);
        linearLayout2.addView(makeLearnBullet(context, resourcesProvider, C2807R.drawable.wallet_learn_hidden, LocaleController.getString(C2807R.string.WalletRecoveryPhraseNeverShare)));
        linearLayout2.addView(makeLearnBullet(context, resourcesProvider, C2807R.drawable.wallet_learn_warn, LocaleController.getString(C2807R.string.WalletRecoveryPhraseFundsWarning)));
        linearLayout2.addView(makeLearnBullet(context, resourcesProvider, C2807R.drawable.wallet_learn_protected, LocaleController.getString(C2807R.string.WalletRecoveryPhraseSupportWarning)));
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2));
        final ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        round.setText(LocaleController.getString(C2807R.string.WalletRecoveryPhraseLearnButton), false);
        linearLayout.addView(round, LayoutHelper.createFrame(-1, 48.0f, 7, 14.0f, 14.0f, 14.0f, 0.0f));
        builder.setCustomView(linearLayout);
        final BottomSheet bottomSheetCreate = builder.create();
        bottomSheetCreate.fixNavigationBar();
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletKeysBackupFragment.$r8$lambda$r38vwXtkkpuZWT77wFSht_nz2vw(round, callback, bottomSheetCreate, resourcesProvider, view);
            }
        });
        bottomSheetCreate.show();
    }

    public static /* synthetic */ void $r8$lambda$r38vwXtkkpuZWT77wFSht_nz2vw(final ButtonWithCounterView buttonWithCounterView, Utilities.Callback callback, final BottomSheet bottomSheet, final Theme.ResourcesProvider resourcesProvider, View view) {
        buttonWithCounterView.setLoading(true);
        callback.run(new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda22
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                WalletKeysBackupFragment.$r8$lambda$ikTdfRM4Adsik6SZDF_9nsGzEcQ(buttonWithCounterView, bottomSheet, resourcesProvider, (String) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$ikTdfRM4Adsik6SZDF_9nsGzEcQ(ButtonWithCounterView buttonWithCounterView, BottomSheet bottomSheet, Theme.ResourcesProvider resourcesProvider, String str) {
        buttonWithCounterView.setLoading(false);
        if (str != null) {
            BulletinFactory.of(bottomSheet.topBulletinContainer, resourcesProvider).showForError(str);
        } else {
            bottomSheet.lambda$new$0();
        }
    }

    public static void showRecoveryPhraseAlert(final Context context, ArrayList<String> arrayList, final Theme.ResourcesProvider resourcesProvider, final Utilities.Callback<Utilities.Callback<String>> callback, final Runnable runnable) {
        final ButtonWithCounterView round;
        if (arrayList == null) {
            return;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout2.setGravity(1);
        linearLayout2.setPadding(0, AndroidUtilities.dp(24.0f), 0, 0);
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setAspectFit(true);
        backupImageView.getImageReceiver().setCurrentAccount(AndroidUtilities.getAccountInProduction());
        MediaDataController.getInstance(AndroidUtilities.getAccountInProduction()).setPlaceholderImage(backupImageView, "RestrictedEmoji", "📝", "100_100");
        linearLayout2.addView(backupImageView, LayoutHelper.createLinear(100, 100, 1, 0, 0, 0, 12));
        TextView textView = new TextView(context);
        textView.setTextSize(1, 17.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(1);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        textView.setText(LocaleController.getString(C2807R.string.WalletYourRecoveryPhrase));
        linearLayout2.addView(textView, LayoutHelper.createLinear(-2, -2, 1, 0, 0, 0, 0));
        TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(1);
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        textView2.setText(LocaleController.getString(C2807R.string.WalletRecoveryPhraseInfo));
        textView2.setMaxWidth(AndroidUtilities.dp(330.0f));
        textView2.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(12.0f), 0);
        textView2.setGravity(1);
        linearLayout2.addView(textView2, LayoutHelper.createLinear(-2, -2, 1));
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(1);
        linearLayout3.setGravity(1);
        LinearLayout linearLayout4 = new LinearLayout(context);
        linearLayout4.setOrientation(0);
        linearLayout4.setGravity(1);
        int size = (arrayList.size() + 1) / 2;
        LinearLayout linearLayoutMakeWordColumn = makeWordColumn(context, resourcesProvider, arrayList, 0, size);
        LinearLayout linearLayoutMakeWordColumn2 = makeWordColumn(context, resourcesProvider, arrayList, size, arrayList.size());
        linearLayout4.addView(linearLayoutMakeWordColumn, LayoutHelper.createLinear(0, -2, 1.0f, 48));
        linearLayout4.addView(new View(context), LayoutHelper.createLinear(10, 0));
        linearLayout4.addView(linearLayoutMakeWordColumn2, LayoutHelper.createLinear(0, -2, 1.0f, 48));
        linearLayout3.addView(linearLayout4, LayoutHelper.createLinear(-1, -2, 1));
        linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, 40.0f, 32.0f, 40.0f, 28.0f));
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2));
        if (callback != null) {
            round = new ButtonWithCounterView(context, resourcesProvider).setRound();
            linearLayout.addView(round, LayoutHelper.createFrame(-1, 48.0f, 1, 14.0f, 14.0f, 14.0f, 4.0f));
        } else {
            round = null;
        }
        ButtonWithCounterView round2 = new ButtonWithCounterView(context, resourcesProvider).setRound();
        linearLayout.addView(round2, LayoutHelper.createFrame(-1, 48.0f, 1, 14.0f, round != null ? 4.0f : 14.0f, 14.0f, 14.0f));
        builder.setCustomView(linearLayout);
        final BottomSheet bottomSheetCreate = builder.create();
        bottomSheetCreate.fixNavigationBar();
        if (round != null && callback != null) {
            round2.setFilled(false);
            round.setText(LocaleController.getString(C2807R.string.WalletImportThisWallet));
            round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda16
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WalletKeysBackupFragment.m23478$r8$lambda$Zxa21OfYVdOppSJ4RxKAG476S8(round, callback, bottomSheetCreate, resourcesProvider, view);
                }
            });
        }
        if (runnable != null) {
            round2.setColor(Theme.getColor(Theme.key_text_RedBold, resourcesProvider));
            round2.setText(LocaleController.getString(C2807R.string.WalletDelete));
            round2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    new AlertDialog.Builder(context, resourcesProvider).setTitle(LocaleController.getString(C2807R.string.WalletDeleteWalletTitle)).setMessage(LocaleController.getString(C2807R.string.WalletDeleteWalletInfo)).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).setPositiveButton(LocaleController.getString(C2807R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda27
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i) {
                            WalletKeysBackupFragment.$r8$lambda$Rri4z8bNuS0nsVw0jtM8wCuyn7o(runnable, bottomSheet, alertDialog, i);
                        }
                    }).makeRed(-1).show();
                }
            });
        } else {
            round2.setText(LocaleController.getString(C2807R.string.WalletDone));
            round2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda18
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    bottomSheetCreate.lambda$new$0();
                }
            });
        }
        bottomSheetCreate.show();
    }

    /* JADX INFO: renamed from: $r8$lambda$Z-xa21OfYVdOppSJ4RxKAG476S8, reason: not valid java name */
    public static /* synthetic */ void m23478$r8$lambda$Zxa21OfYVdOppSJ4RxKAG476S8(final ButtonWithCounterView buttonWithCounterView, Utilities.Callback callback, final BottomSheet bottomSheet, final Theme.ResourcesProvider resourcesProvider, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        buttonWithCounterView.setLoading(true);
        callback.run(new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda26
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                WalletKeysBackupFragment.$r8$lambda$2JTnwinPWw0ENgYn_IkxVz9TBX0(bottomSheet, resourcesProvider, buttonWithCounterView, (String) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$2JTnwinPWw0ENgYn_IkxVz9TBX0(BottomSheet bottomSheet, Theme.ResourcesProvider resourcesProvider, ButtonWithCounterView buttonWithCounterView, String str) {
        if (str != null) {
            BulletinFactory.of(bottomSheet.topBulletinContainer, resourcesProvider).showForError(str);
        } else {
            buttonWithCounterView.setLoading(false);
            bottomSheet.lambda$new$0();
        }
    }

    public static /* synthetic */ void $r8$lambda$Rri4z8bNuS0nsVw0jtM8wCuyn7o(Runnable runnable, BottomSheet bottomSheet, AlertDialog alertDialog, int i) {
        runnable.run();
        bottomSheet.lambda$new$0();
    }

    public static LinearLayout makeWordColumn(Context context, Theme.ResourcesProvider resourcesProvider, ArrayList<String> arrayList, int i, int i2) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        int i3 = i;
        while (i3 < i2) {
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(16);
            TextView textView = new TextView(context);
            textView.setTextSize(1, 15.0f);
            textView.setGravity(8388613);
            textView.setIncludeFontPadding(false);
            textView.setLineSpacing(0.0f, 1.0f);
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
            StringBuilder sb = new StringBuilder();
            int i4 = i3 + 1;
            sb.append(i4);
            sb.append(".");
            textView.setText(sb.toString());
            linearLayout2.addView(textView, LayoutHelper.createLinear(26, -2, 8388613, 0, 0, 6, 0));
            TextView textView2 = new TextView(context);
            textView2.setTextSize(1, 15.0f);
            textView2.setTypeface(AndroidUtilities.bold());
            textView2.setIncludeFontPadding(false);
            textView2.setLineSpacing(0.0f, 1.0f);
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            textView2.setText(arrayList.get(i3));
            linearLayout2.addView(textView2, LayoutHelper.createLinear(-2, -2));
            linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-2, -2, PlatformMediaRouter1RouteProvider.ALL_ROUTE_TYPES, 0, i3 != i ? 10 : 0, 0, 0));
            i3 = i4;
        }
        return linearLayout;
    }

    private static LinearLayout makeLearnBullet(Context context, Theme.ResourcesProvider resourcesProvider, int i, String str) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f));
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2, resourcesProvider), PorterDuff.Mode.SRC_IN));
        imageView.setImageResource(i);
        linearLayout.addView(imageView, LayoutHelper.createLinear(28, 28, 16, 0, 0, 14, 0));
        TextView textView = new TextView(context);
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView.setText(AndroidUtilities.replaceTags(str));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1.0f, 16));
        return linearLayout;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.id;
        if (i2 == 1) {
            GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
            if (gramWallet.cantAccessWallet()) {
                presentFragment(new WalletImportFragment().setMatchPublicKey(gramWallet.getPublicKey()));
                return;
            } else {
                showRecoveryPhraseLearnAlert(getContext(), getResourceProvider(), new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$onClick$8((Utilities.Callback) obj);
                    }
                });
                return;
            }
        }
        if (i2 == 3) {
            final GramWallet gramWallet2 = GramWallet.getInstance(this.currentAccount);
            final AlertDialog alertDialog = new AlertDialog(getContext(), 3);
            alertDialog.showDelayed(500L);
            gramWallet2.emulateDisableBackup(new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$onClick$22(alertDialog, gramWallet2, (Long) obj, (String) obj2);
                }
            });
            return;
        }
        if (i2 == 2) {
            GramWallet.getInstance(this.currentAccount).enableBackup(new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$23((String) obj);
                }
            });
            return;
        }
        if (i2 == 4) {
            AlertsCreator.showAlertWithCheckbox(getContext(), LocaleController.getString(C2807R.string.WalletDeleteWalletTitle), LocaleController.getString(C2807R.string.WalletDeleteWalletInfo), BuildVars.DEBUG_PRIVATE_VERSION ? LocaleController.getString(C2807R.string.WalletSaveOnDevice) : null, LocaleController.getString(C2807R.string.WalletDeleteAnyway), new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$30((Boolean) obj);
                }
            }, getResourceProvider()).makeRed(-1);
        } else if (uItem.instanceOf(LocalWalletCell.Factory.class)) {
            final String string = uItem.text.toString();
            final GramWallet gramWallet3 = GramWallet.getInstance(this.currentAccount);
            final GramWalletStorage gramWalletStorage = new GramWalletStorage(getContext(), this.currentAccount, string);
            showRecoveryPhraseLearnAlert(getContext(), getResourceProvider(), new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda4
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$37(gramWallet3, string, gramWalletStorage, (Utilities.Callback) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$8(final Utilities.Callback callback) {
        GramWallet.getInstance(this.currentAccount).getSecretPhrase(true, false, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$onClick$7(callback, (GramWallet.SecretPhrase) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$7(Utilities.Callback callback, GramWallet.SecretPhrase secretPhrase, String str) {
        if (str != null) {
            callback.run(str);
        } else if (secretPhrase == null) {
            callback.run("WORDS_NULL");
        } else {
            callback.run(null);
            showRecoveryPhraseAlert(getContext(), secretPhrase.toWordsForDisplay(), this.resourceProvider, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$22(AlertDialog alertDialog, final GramWallet gramWallet, final Long l, String str) {
        CharSequence string;
        alertDialog.dismiss();
        if (l == null) {
            BulletinFactory bulletinFactoryOf = BulletinFactory.of(this);
            if (str == null) {
                str = "NULL_ERROR";
            }
            bulletinFactoryOf.showForError(str);
            return;
        }
        Context context = getContext();
        if (context == null) {
            return;
        }
        final CheckBoxCell checkBoxCell = new CheckBoxCell(context, 1, getResourceProvider());
        checkBoxCell.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 7, AndroidUtilities.dp(12.0f)));
        checkBoxCell.setText(LocaleController.getString(C2807R.string.WalletUpdateSecretPhrase), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
        checkBoxCell.setMultiline(true);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) checkBoxCell.getCheckBoxView().getLayoutParams();
        layoutParams.topMargin = 0;
        layoutParams.gravity = (LocaleController.isRTL ? 5 : 3) | 16;
        checkBoxCell.getCheckBoxView().setLayoutParams(layoutParams);
        checkBoxCell.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(4.0f) : 0, AndroidUtilities.dp(12.0f), LocaleController.isRTL ? 0 : AndroidUtilities.dp(4.0f), AndroidUtilities.dp(12.0f));
        final TextView textView = new TextView(context);
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
        textView.setGravity(17);
        textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), getThemedColor(Theme.key_windowBackgroundGray)));
        textView.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(12.0f));
        if (l.longValue() > 0) {
            string = LocaleController.formatSpannable(C2807R.string.WalletUpdateSecretPhraseInfoWithFee, GramWallet.formatGramCapital(l.longValue()), gramWallet.formatCurrency(l.longValue(), true));
        } else {
            string = LocaleController.getString(C2807R.string.WalletUpdateSecretPhraseInfo);
        }
        textView.setText(string);
        textView.setVisibility(8);
        checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletKeysBackupFragment.$r8$lambda$KNGQc1eh6PxM_d9X0sNAf0DzmV0(checkBoxCell, textView, view);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.addView(checkBoxCell, LayoutHelper.createLinear(-1, -2, 83, 8, 0, 8, 0));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 16.0f, 8.0f, 16.0f, 16.0f));
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context, getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.WalletDisableBackupTitle)).setMessage(LocaleController.getString(C2807R.string.WalletDisableBackupInfo)).setCustomViewOffset(6).setView(linearLayout).setWidth(AndroidUtilities.dp(312.0f)).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).setPositiveButton(LocaleController.getString(C2807R.string.WalletDisable), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog2, int i) {
                this.f$0.lambda$onClick$21(checkBoxCell, gramWallet, l, alertDialog2, i);
            }
        }).create();
        showDialog(alertDialogCreate);
        alertDialogCreate.makeRed(-1);
    }

    public static /* synthetic */ void $r8$lambda$KNGQc1eh6PxM_d9X0sNAf0DzmV0(CheckBoxCell checkBoxCell, TextView textView, View view) {
        checkBoxCell.setChecked(!checkBoxCell.isChecked(), true);
        textView.setVisibility(checkBoxCell.isChecked() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$21(CheckBoxCell checkBoxCell, final GramWallet gramWallet, Long l, AlertDialog alertDialog, int i) {
        if (checkBoxCell.isEnabled()) {
            boolean zIsChecked = checkBoxCell.isChecked();
            checkBoxCell.setEnabled(false);
            final Browser.Progress progressMakeButtonLoading = alertDialog.makeButtonLoading(i);
            progressMakeButtonLoading.init();
            if (!zIsChecked) {
                gramWallet.getSecretPhrase(new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda12
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$onClick$13(progressMakeButtonLoading, gramWallet, (GramWallet.SecretPhrase) obj, (String) obj2);
                    }
                });
            } else if (gramWallet.getBalance() < l.longValue()) {
                new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.WalletNotEnoughGram)).setMessage(LocaleController.formatSpannable(C2807R.string.WalletUpdateSecretPhraseInsufficientFunds, GramWallet.formatGramCapital(l.longValue()), gramWallet.formatCurrency(l.longValue(), true))).setNegativeButton(LocaleController.getString(C2807R.string.WalletNotNow), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda13
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog2, int i2) {
                        WalletKeysBackupFragment.$r8$lambda$zSFiZyxEUN5_YfNHmeKs5QL8AdE(alertDialog2, i2);
                    }
                }).setPositiveButton(LocaleController.getString(C2807R.string.WalletTopUp), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda14
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog2, int i2) {
                        this.f$0.lambda$onClick$16(alertDialog2, i2);
                    }
                }).show();
            } else {
                gramWallet.prepareDisableBackup(new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda15
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$onClick$20(progressMakeButtonLoading, gramWallet, (GramWallet.PreparedDisableBackup) obj, (String) obj2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$13(Browser.Progress progress, final GramWallet gramWallet, GramWallet.SecretPhrase secretPhrase, String str) {
        progress.end();
        if (secretPhrase == null) {
            BulletinFactory bulletinFactoryOf = BulletinFactory.of(this);
            if (str == null) {
                str = "NULL_ERROR";
            }
            bulletinFactoryOf.showForError(str);
            return;
        }
        presentFragment(new WalletSecretPhraseFragment().setCurrent().setPhrase(secretPhrase).onTested(new Runnable() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onClick$12(gramWallet);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$12(final GramWallet gramWallet) {
        new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.WalletDisableBackupTitle)).setMessage(LocaleController.getString(C2807R.string.WalletDisableBackupExistingPhraseInfo)).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).setPositiveButton(LocaleController.getString(C2807R.string.WalletDisable), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda31
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$onClick$11(gramWallet, alertDialog, i);
            }
        }).makeRed(-1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$11(GramWallet gramWallet, AlertDialog alertDialog, int i) {
        final Browser.Progress progressMakeButtonLoading = alertDialog.makeButtonLoading(i);
        progressMakeButtonLoading.init();
        gramWallet.disableBackupWithoutUpdatingPhrase(new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda36
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$onClick$10(progressMakeButtonLoading, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$10(Browser.Progress progress, String str) {
        progress.end();
        returnToWalletKeys();
        if (str != null) {
            BulletinFactory.of(this).showForError(str);
        } else {
            BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.contact_check, LocaleController.getString(C2807R.string.WalletBackupDisabled), LocaleController.getString(C2807R.string.WalletBackupDisabledInfo)).setDuration(5000).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$16(AlertDialog alertDialog, int i) {
        final Browser.Progress progressMakeButtonLoading = alertDialog.makeButtonLoading(i);
        progressMakeButtonLoading.init();
        WalletActivity.openOnramp(this.currentAccount, 0L, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda28
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$onClick$15(progressMakeButtonLoading, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$15(Browser.Progress progress, String str) {
        progress.end();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        BulletinFactory.of(this).showForError(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$20(Browser.Progress progress, final GramWallet gramWallet, final GramWallet.PreparedDisableBackup preparedDisableBackup, String str) {
        progress.end();
        if (preparedDisableBackup == null) {
            BulletinFactory bulletinFactoryOf = BulletinFactory.of(this);
            if (str == null) {
                str = "NULL_ERROR";
            }
            bulletinFactoryOf.showForError(str);
            return;
        }
        if (this.destroyed) {
            preparedDisableBackup.close();
        } else {
            this.preparedBackups.add(preparedDisableBackup);
            presentFragment(new WalletSecretPhraseFragment().setPhrase(preparedDisableBackup.newSecretPhrase).onTested(new Runnable() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onClick$19(gramWallet, preparedDisableBackup);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$19(final GramWallet gramWallet, final GramWallet.PreparedDisableBackup preparedDisableBackup) {
        new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.WalletDisableBackupTitle)).setMessage(LocaleController.getString(C2807R.string.WalletDisableBackupConfirmInfo)).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).setPositiveButton(LocaleController.getString(C2807R.string.WalletDisable), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda33
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$onClick$18(gramWallet, preparedDisableBackup, alertDialog, i);
            }
        }).makeRed(-1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$18(GramWallet gramWallet, GramWallet.PreparedDisableBackup preparedDisableBackup, AlertDialog alertDialog, int i) {
        final Browser.Progress progressMakeButtonLoading = alertDialog.makeButtonLoading(i);
        progressMakeButtonLoading.init();
        gramWallet.disableBackup(preparedDisableBackup, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda37
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$onClick$17(progressMakeButtonLoading, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$17(Browser.Progress progress, String str) {
        progress.end();
        if (str != null) {
            BulletinFactory.of(this).showForError(str);
        } else {
            returnToWallet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$23(String str) {
        if (str != null) {
            BulletinFactory.of(this).showForError(str);
        } else {
            BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.contact_check, LocaleController.getString(C2807R.string.WalletBackupEnabled), LocaleController.getString(C2807R.string.WalletBackupEnabledInfo)).setDuration(5000).show();
            this.listView.adapter.update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$30(final Boolean bool) {
        final GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onClick$28(bool, gramWallet);
            }
        };
        if (bool.booleanValue() && BuildVars.DEBUG_PRIVATE_VERSION) {
            gramWallet.makeSureSecretPhraseBackedUpLocally(new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$29(runnable, (String) obj);
                }
            });
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$28(final Boolean bool, final GramWallet gramWallet) {
        new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.WalletReplaceWalletTitle)).setPositiveButton(LocaleController.getString(C2807R.string.WalletCreateNew), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda19
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$onClick$26(bool, gramWallet, alertDialog, i);
            }
        }).setNegativeButton(LocaleController.getString(C2807R.string.WalletImportExisting), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda20
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$onClick$27(bool, alertDialog, i);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$26(Boolean bool, GramWallet gramWallet, AlertDialog alertDialog, int i) {
        if (!bool.booleanValue()) {
            gramWallet.storage.wipe();
        }
        final BaseFragment baseFragment = (getParentLayout() == null || getParentLayout().getFragmentStack().size() <= 1) ? null : getParentLayout().getFragmentStack().get(getParentLayout().getFragmentStack().size() - 2);
        gramWallet.createNewWallet(new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda23
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$onClick$25(baseFragment, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$25(final BaseFragment baseFragment, String str) {
        if (str != null) {
            BulletinFactory.of(this).showForError(str);
            return;
        }
        finishFragment();
        if (baseFragment instanceof WalletActivity) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    WalletKeysBackupFragment.$r8$lambda$OAJ2sJp3w6X_MoDaWhnMI68IVaU(baseFragment);
                }
            }, 300L);
        }
    }

    public static /* synthetic */ void $r8$lambda$OAJ2sJp3w6X_MoDaWhnMI68IVaU(BaseFragment baseFragment) {
        if (BulletinFactory.canShowBulletin(baseFragment)) {
            BulletinFactory.of(baseFragment).createSimpleBulletin(C2807R.raw.contact_check, LocaleController.getString(C2807R.string.WalletCreated), LocaleController.getString(C2807R.string.WalletCreatedInfo)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$27(Boolean bool, AlertDialog alertDialog, int i) {
        alertDialog.dismiss();
        presentFragment(new WalletImportFragment().setWipe(!bool.booleanValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$29(Runnable runnable, String str) {
        if (str != null) {
            BulletinFactory.of(this).showForError(str);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$37(final GramWallet gramWallet, String str, final GramWalletStorage gramWalletStorage, final Utilities.Callback callback) {
        gramWallet.getAddressBalanceAndPublicKey(str, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$onClick$36(callback, gramWalletStorage, gramWallet, (GramWallet.AddressInfo) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$36(final Utilities.Callback callback, final GramWalletStorage gramWalletStorage, final GramWallet gramWallet, GramWallet.AddressInfo addressInfo) {
        if (addressInfo == null) {
            callback.run("ADDRESS_NO_INFO");
            return;
        }
        byte[] bArr = addressInfo.publicKey;
        if (bArr == null) {
            byte[][] publicKeys = gramWalletStorage.getPublicKeys();
            if (publicKeys.length <= 0) {
                callback.run("STORAGE_NO_PUBLIC_KEY");
                return;
            }
            bArr = publicKeys[0];
        }
        if (!gramWalletStorage.containsSecretPhrase(bArr)) {
            callback.run("STORAGE_OLD_PUBLIC_KEY");
        } else {
            gramWalletStorage.getSecretPhrase(bArr, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda21
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$35(callback, gramWallet, gramWalletStorage, (GramWallet.SecretPhrase) obj);
                }
            }, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$35(Utilities.Callback callback, final GramWallet gramWallet, final GramWalletStorage gramWalletStorage, GramWallet.SecretPhrase secretPhrase) {
        if (secretPhrase == null) {
            callback.run("STORAGE_FAILED");
            return;
        }
        Utilities.Callback callback2 = null;
        callback.run(null);
        final ArrayList<String> wordsForDisplay = secretPhrase.toWordsForDisplay();
        Context context = getContext();
        Theme.ResourcesProvider resourcesProvider = this.resourceProvider;
        if (BuildVars.DEBUG_PRIVATE_VERSION && gramWallet.canSend()) {
            callback2 = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda24
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$33(gramWallet, wordsForDisplay, (Utilities.Callback) obj);
                }
            };
        }
        showRecoveryPhraseAlert(context, wordsForDisplay, resourcesProvider, callback2, new Runnable() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onClick$34(gramWalletStorage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$33(final GramWallet gramWallet, final ArrayList arrayList, final Utilities.Callback callback) {
        gramWallet.makeSureSecretPhraseBackedUpLocally(true, false, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda32
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$onClick$32(callback, arrayList, gramWallet, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$32(final Utilities.Callback callback, ArrayList arrayList, GramWallet gramWallet, String str) {
        if (str != null) {
            callback.run(str);
            return;
        }
        GramWallet.SecretPhrase secretPhraseFromWords = GramWallet.SecretPhrase.fromWords(arrayList);
        try {
            gramWallet.importWallet(true, false, secretPhraseFromWords, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletKeysBackupFragment$$ExternalSyntheticLambda35
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$31(callback, (String) obj);
                }
            });
            if (secretPhraseFromWords != null) {
                secretPhraseFromWords.close();
            }
        } catch (Throwable th) {
            if (secretPhraseFromWords != null) {
                try {
                    secretPhraseFromWords.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$31(Utilities.Callback callback, String str) {
        this.listView.adapter.update(true);
        callback.run(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$34(GramWalletStorage gramWalletStorage) {
        gramWalletStorage.wipe();
        this.listView.adapter.update(true);
    }

    private void returnToWallet() {
        INavigationLayout parentLayout = getParentLayout();
        if (parentLayout == null) {
            finishFragment();
            return;
        }
        ArrayList arrayList = new ArrayList(parentLayout.getFragmentStack());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            BaseFragment baseFragment = (BaseFragment) obj;
            if ((baseFragment instanceof WalletSendSelectSender) || (baseFragment instanceof WalletSecretPhraseFragment) || (baseFragment instanceof WalletTestPhraseFragment) || (baseFragment instanceof WalletKeysBackupFragment)) {
                parentLayout.removeFragmentFromStack(baseFragment);
            }
        }
        finishFragment();
    }

    private void returnToWalletKeys() {
        INavigationLayout parentLayout = getParentLayout();
        if (parentLayout == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(parentLayout.getFragmentStack());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            BaseFragment baseFragment = (BaseFragment) obj;
            if ((baseFragment instanceof WalletSendSelectSender) || (baseFragment instanceof WalletSecretPhraseFragment) || (baseFragment instanceof WalletTestPhraseFragment)) {
                parentLayout.removeFragmentFromStack(baseFragment);
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
    }

    public static class LocalWalletCell extends LinearLayout implements Theme.Colorable {
        private final TextView addressView;
        private final ImageView arrowView;
        private final LinearLayout layout;
        private final Theme.ResourcesProvider resourcesProvider;
        private final TextView statusView;

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public /* bridge */ /* synthetic */ int[] getColorKeys() {
            return super.getColorKeys();
        }

        public LocalWalletCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            setOrientation(0);
            this.resourcesProvider = resourcesProvider;
            setPadding(AndroidUtilities.dp(20.0f), 0, AndroidUtilities.dp(13.0f), 0);
            LinearLayout linearLayout = new LinearLayout(context);
            this.layout = linearLayout;
            linearLayout.setOrientation(1);
            linearLayout.setPadding(0, AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f));
            addView(linearLayout, LayoutHelper.createLinear(0, -2, 1.0f, 19, 0, 0, 0, 0));
            TextView textView = new TextView(context);
            this.addressView = textView;
            textView.setTextSize(1, 15.0f);
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO));
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 55, 0, 0, 0, 2));
            TextView textView2 = new TextView(context);
            this.statusView = textView2;
            textView2.setTextSize(1, 14.0f);
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 55, 0, 0, 0, 0));
            ImageView imageView = new ImageView(context);
            this.arrowView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(C2807R.drawable.attach_arrow_right);
            addView(imageView, LayoutHelper.createLinear(21, 21, 21, 9, 0, 0, 0));
            updateColors();
        }

        public void set(String str, long j, int i, boolean z) {
            this.addressView.setText(WalletImportFragment.formatAddressTwoLines(str));
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            if (j < 0) {
                spannableStringBuilder.append((CharSequence) LocaleController.getString(C2807R.string.Loading));
                spannableStringBuilder.setSpan(new LoadingSpan(this.statusView, AndroidUtilities.dp(35.0f)), 0, spannableStringBuilder.length(), 33);
            } else {
                spannableStringBuilder.append(GramWallet.formatGramsWithUnit(j));
            }
            if (i > 0) {
                spannableStringBuilder = new SpannableStringBuilder(LocaleController.formatSpannable(C2807R.string.WalletPreviousWalletLastUsed, spannableStringBuilder, LocaleController.formatShortDateTime(i)));
            }
            this.statusView.setText(spannableStringBuilder);
            this.addressView.setAlpha(z ? 0.5f : 1.0f);
            this.statusView.setAlpha(z ? 0.5f : 1.0f);
            this.arrowView.setAlpha(z ? 0.5f : 1.0f);
        }

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public void updateColors() {
            this.addressView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            TextView textView = this.statusView;
            int i = Theme.key_windowBackgroundWhiteGrayText2;
            textView.setTextColor(Theme.getColor(i, this.resourcesProvider));
            this.arrowView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
        }

        public static class Factory extends UItem.UItemFactory<LocalWalletCell> {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public LocalWalletCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new LocalWalletCell(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((LocalWalletCell) view).set(uItem.text.toString(), uItem.longValue, uItem.intValue, uItem.accent);
            }

            public static UItem of(String str, long j, int i, boolean z) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.text = str;
                uItemOfFactory.longValue = j;
                uItemOfFactory.intValue = i;
                uItemOfFactory.accent = z;
                return uItemOfFactory;
            }
        }
    }
}
