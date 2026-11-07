package org.telegram.ui.Wallet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.WebFile;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.IconBackgroundColors;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.UploadingDotsSpannable;

/* JADX INFO: loaded from: classes8.dex */
public class TransactionCell extends FrameLayout implements Theme.Colorable {
    private final TextView amountView;
    private final Path avatarCutout;
    private final AvatarDrawable avatarDrawable;
    private final BackupImageView avatarView;
    private TL_wallet.walletTransaction boundSource;
    private TL_wallet.walletTransaction boundTransaction;
    private long clockStart;
    private final int currentAccount;
    private final TextView dateView;
    private boolean expandedAddress;
    private boolean flightHeld;
    private final Drawable giftDrawable;
    private final Drawable gramDrawable;
    private final ImageView iconView;
    private boolean incoming;
    private float landingPress;
    private boolean liveAmountEligible;
    private boolean needDivider;
    private final BackupImageView nftImageView;
    private final LinearLayout nftLayout;
    private final TextView nftText;
    private final LinearLayout nftTextLayout;
    private final TextView nftTitle;
    private boolean pending;
    private ValueAnimator pendingAnimator;
    private final Paint pendingPaint;
    private float pendingProgress;
    private float pendingTarget;
    private SpringAnimation pressSpring;
    private final Theme.ResourcesProvider resourcesProvider;
    private final GradientDrawable rowBackground;
    private boolean sending;
    private boolean sentRipplePending;
    private boolean sentRipplePlayed;
    private final WalletSendParticles sparks;
    private final TextView subtitleView;
    private final TextView titleView;
    private final WalletTransactionAmountView transactionAmount;

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public /* bridge */ /* synthetic */ int[] getColorKeys() {
        return super.getColorKeys();
    }

    public TransactionCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.avatarDrawable = new AvatarDrawable();
        this.pendingPaint = new Paint(1);
        this.avatarCutout = new Path();
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.rowBackground = gradientDrawable;
        this.sparks = new WalletSendParticles();
        this.currentAccount = i;
        this.resourcesProvider = resourcesProvider;
        setWillNotDraw(false);
        ImageView imageView = new ImageView(context);
        this.iconView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        addView(imageView, LayoutHelper.createFrame(46, 46.0f, 51, 13.0f, 12.0f, 0.0f, 15.0f));
        BackupImageView backupImageView = new BackupImageView(context);
        this.avatarView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.dp(23.0f));
        addView(backupImageView, LayoutHelper.createFrame(46, 46.0f, 51, 13.0f, 12.0f, 0.0f, 15.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        linearLayout.setOrientation(0);
        addView(linearLayout, LayoutHelper.createFrame(-1, -1.0f, 119, 71.0f, 0.0f, 20.0f, 0.0f));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout2.setGravity(16);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(0, -2, 1.0f));
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        textView.setIncludeFontPadding(false);
        textView.setGravity(16);
        textView.setTextSize(1, 15.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setMaxWidth(AndroidUtilities.dp(120.0f));
        linearLayout2.addView(textView, LayoutHelper.createLinear(-1, 18, 0.0f, 9.0f, 0.0f, 0.0f));
        TextView textView2 = new TextView(context);
        this.subtitleView = textView2;
        textView2.setSingleLine(true);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView2.setEllipsize(truncateAt);
        textView2.setIncludeFontPadding(false);
        textView2.setGravity(16);
        textView2.setTextSize(1, 13.0f);
        linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, 16, 0.0f, 2.0f, 0.0f, 0.0f));
        TextView textView3 = new TextView(context);
        this.dateView = textView3;
        textView3.setSingleLine(true);
        textView3.setEllipsize(truncateAt);
        textView3.setIncludeFontPadding(false);
        textView3.setGravity(16);
        textView3.setTextSize(1, 13.0f);
        linearLayout2.addView(textView3, LayoutHelper.createLinear(-1, 16, 0.0f, 2.0f, 0.0f, 10.0f));
        LinearLayout linearLayout3 = new LinearLayout(context);
        this.nftLayout = linearLayout3;
        linearLayout3.setOrientation(0);
        linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-2, -2, 0.0f, -2.0f, 0.0f, 8.0f));
        BackupImageView backupImageView2 = new BackupImageView(context);
        this.nftImageView = backupImageView2;
        backupImageView2.setRoundRadius(AndroidUtilities.dp(8.0f));
        linearLayout3.addView(backupImageView2, LayoutHelper.createLinear(40, 40, 51, 2, 2, 6, 2));
        LinearLayout linearLayout4 = new LinearLayout(context);
        this.nftTextLayout = linearLayout4;
        linearLayout4.setOrientation(1);
        linearLayout3.addView(linearLayout4, LayoutHelper.createLinear(0, -1, 1.0f, 51, 0, 2, 10, 2));
        TextView textView4 = new TextView(context);
        this.nftTitle = textView4;
        textView4.setTypeface(AndroidUtilities.bold());
        textView4.setTextSize(1, 14.0f);
        linearLayout4.addView(textView4, LayoutHelper.createLinear(-1, -2, 55, 0, 0, 0, 0));
        TextView textView5 = new TextView(context);
        this.nftText = textView5;
        textView5.setTextSize(1, 14.0f);
        linearLayout4.addView(textView5, LayoutHelper.createLinear(-1, -2, 55, 0, 0, 0, 0));
        WalletTransactionAmountView walletTransactionAmountView = new WalletTransactionAmountView(context);
        this.transactionAmount = walletTransactionAmountView;
        this.amountView = walletTransactionAmountView.amount;
        Drawable drawableMutate = context.getResources().getDrawable(C2807R.drawable.wallet_gram_small).mutate();
        this.gramDrawable = drawableMutate;
        drawableMutate.setBounds(0, 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
        Drawable drawableMutate2 = context.getResources().getDrawable(C2807R.drawable.wallet_nft).mutate();
        this.giftDrawable = drawableMutate2;
        drawableMutate2.setBounds(0, 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
        linearLayout.addView(walletTransactionAmountView, LayoutHelper.createLinear(-2, -1, 0.0f, 53, 8, 0, 0, 0));
        setClipChildren(false);
        setClipToPadding(false);
        gradientDrawable.setCornerRadius(AndroidUtilities.dp(16.0f));
        setBackground(gradientDrawable);
        updateColors();
    }

    private void setIconColor(final IconBackgroundColors iconBackgroundColors) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.setShaderFactory(new ShapeDrawable.ShaderFactory() { // from class: org.telegram.ui.Wallet.TransactionCell.1
            @Override // android.graphics.drawable.ShapeDrawable.ShaderFactory
            public Shader resize(int i, int i2) {
                IconBackgroundColors iconBackgroundColors2 = iconBackgroundColors;
                return new LinearGradient(0.0f, 0.0f, 0.0f, i2, iconBackgroundColors2.top, iconBackgroundColors2.bottom, Shader.TileMode.CLAMP);
            }
        });
        this.iconView.setBackground(shapeDrawable);
    }

    public void set(TL_wallet.walletTransaction wallettransaction, SmartWalletAddressFormatter smartWalletAddressFormatter, boolean z) {
        TLRPC.WebDocument webDocument;
        TL_wallet.walletTransaction wallettransactionSourceOf = Factory.sourceOf(wallettransaction);
        TL_wallet.walletTransaction wallettransaction2 = this.boundTransaction;
        boolean z2 = wallettransaction2 != null && Factory.sameTransaction(wallettransaction2, wallettransaction);
        if (!z2) {
            this.flightHeld = false;
            this.sentRipplePlayed = false;
            this.sentRipplePending = false;
            this.clockStart = SystemClock.uptimeMillis();
            cancelLanding();
            this.sparks.clear();
        }
        this.boundSource = wallettransactionSourceOf;
        this.boundTransaction = wallettransaction;
        boolean z3 = wallettransaction.pending;
        this.sending = z3 && !wallettransaction.failed;
        boolean z4 = wallettransaction.incoming;
        this.liveAmountEligible = (z4 || wallettransaction.key_change || wallettransaction.nft != null) ? false : true;
        this.pending = z3 || wallettransaction.failed;
        this.incoming = z4;
        if (wallettransaction.key_change) {
            this.avatarView.setVisibility(8);
            setIconColor(IconBackgroundColors.GRAY);
            this.iconView.setImageResource(C2807R.drawable.wallet_transaction_key);
            this.titleView.setText(LocaleController.getString(C2807R.string.WalletKeyUpdate));
            this.subtitleView.setText(TextUtils.isEmpty(wallettransaction.peer.address) ? LocaleController.getString(C2807R.string.WalletUnknown) : smartWalletAddressFormatter.format(wallettransaction.peer.address));
        } else {
            TL_wallet.WalletTransactionPeer walletTransactionPeer = wallettransaction.peer;
            if (walletTransactionPeer instanceof TL_wallet.walletTransactionPeerUser) {
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(((TL_wallet.walletTransactionPeerUser) wallettransaction.peer).user_id));
                BackupImageView backupImageView = this.avatarView;
                if (user != null) {
                    backupImageView.setVisibility(0);
                    this.avatarDrawable.setInfo(user);
                    this.avatarView.setForUserOrChat(user, this.avatarDrawable);
                    this.titleView.setText(UserObject.getUserName(user));
                } else {
                    backupImageView.setVisibility(8);
                    setIconColor(this.incoming ? IconBackgroundColors.BLUE : IconBackgroundColors.GREEN);
                    this.iconView.setImageResource(this.incoming ? C2807R.drawable.wallet_transaction_in : C2807R.drawable.wallet_transaction_out);
                    this.titleView.setText(smartWalletAddressFormatter.format(wallettransaction.peer.address));
                }
            } else if (walletTransactionPeer instanceof TL_wallet.walletTransactionPeerChannel) {
                TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(wallettransaction.peer.channel_id));
                BackupImageView backupImageView2 = this.avatarView;
                if (chat != null) {
                    backupImageView2.setVisibility(0);
                    this.avatarDrawable.setInfo(this.currentAccount, chat);
                    this.avatarView.setForUserOrChat(chat, this.avatarDrawable);
                    this.titleView.setText(chat.title);
                } else {
                    backupImageView2.setVisibility(8);
                    setIconColor(this.incoming ? IconBackgroundColors.BLUE : IconBackgroundColors.GREEN);
                    this.iconView.setImageResource(this.incoming ? C2807R.drawable.wallet_transaction_in : C2807R.drawable.wallet_transaction_out);
                    TextView textView = this.titleView;
                    boolean zIsEmpty = TextUtils.isEmpty(wallettransaction.peer.domain);
                    TL_wallet.WalletTransactionPeer walletTransactionPeer2 = wallettransaction.peer;
                    textView.setText(!zIsEmpty ? walletTransactionPeer2.domain : smartWalletAddressFormatter.format(walletTransactionPeer2.address));
                }
            } else if (walletTransactionPeer instanceof TL_wallet.walletTransactionPeerTelegramGift) {
                this.avatarView.setVisibility(8);
                setIconColor(this.incoming ? IconBackgroundColors.GREEN : IconBackgroundColors.BLUE);
                this.iconView.setImageResource(this.incoming ? C2807R.drawable.wallet_transaction_in : C2807R.drawable.wallet_transaction_out);
                this.titleView.setText(LocaleController.getString(C2807R.string.WalletTransactionTelegram));
            } else if (walletTransactionPeer instanceof TL_wallet.walletTransactionPeerOnramp) {
                TL_wallet.walletTransactionPeerOnramp wallettransactionpeeronramp = (TL_wallet.walletTransactionPeerOnramp) walletTransactionPeer;
                this.avatarView.setVisibility(8);
                setIconColor(IconBackgroundColors.BLUE);
                if ("walt".equalsIgnoreCase(wallettransactionpeeronramp.provider_name) || "wallet".equalsIgnoreCase(wallettransactionpeeronramp.provider_name)) {
                    this.iconView.setImageResource(C2807R.drawable.wallet_transaction_walt);
                    this.titleView.setText(LocaleController.getString(C2807R.string.WalletTransactionTopUpCrypto));
                } else {
                    this.iconView.setImageResource(C2807R.drawable.wallet_transaction_topup);
                    this.titleView.setText(LocaleController.getString(C2807R.string.WalletTransactionTopUp));
                }
                this.subtitleView.setText(CurrenciesController.capitalizeFirstLetter(wallettransactionpeeronramp.provider_name, Locale.getDefault()));
            } else {
                this.avatarView.setVisibility(8);
                setIconColor(this.incoming ? IconBackgroundColors.BLUE : IconBackgroundColors.GREEN);
                this.iconView.setImageResource(this.incoming ? C2807R.drawable.wallet_transaction_in : C2807R.drawable.wallet_transaction_out);
                boolean zIsEmpty2 = TextUtils.isEmpty(wallettransaction.peer.domain);
                TextView textView2 = this.titleView;
                if (!zIsEmpty2) {
                    textView2.setText(wallettransaction.peer.domain);
                } else {
                    textView2.setText(TextUtils.isEmpty(wallettransaction.peer.address) ? LocaleController.getString(C2807R.string.WalletUnknown) : smartWalletAddressFormatter.format(wallettransaction.peer.address));
                }
            }
        }
        String str = wallettransaction.peer.address;
        boolean z5 = str != null && TextUtils.equals(this.titleView.getText(), smartWalletAddressFormatter.format(str)) && this.titleView.length() > 9;
        this.expandedAddress = z5;
        this.titleView.setSingleLine(!z5);
        this.titleView.setEllipsize(this.expandedAddress ? null : TextUtils.TruncateAt.MIDDLE);
        this.titleView.setMaxWidth(this.expandedAddress ? Integer.MAX_VALUE : AndroidUtilities.dp(120.0f));
        this.titleView.getLayoutParams().height = this.expandedAddress ? -2 : AndroidUtilities.dp(18.0f);
        this.titleView.requestLayout();
        if (wallettransaction.failed) {
            this.subtitleView.setText(LocaleController.getString(C2807R.string.WalletFailedTransfer));
        } else if (!wallettransaction.key_change) {
            TL_wallet.WalletTransactionPeer walletTransactionPeer3 = wallettransaction.peer;
            if (!(walletTransactionPeer3 instanceof TL_wallet.walletTransactionPeerOnramp)) {
                if ((walletTransactionPeer3 instanceof TL_wallet.walletTransactionPeerTelegramGift) && ((TL_wallet.walletTransactionPeerTelegramGift) walletTransactionPeer3).own_profile) {
                    this.subtitleView.setText(LocaleController.getString(this.incoming ? C2807R.string.WalletMovedFromProfile : C2807R.string.WalletMovedToProfile));
                } else {
                    TL_wallet.nftItem nftitem = wallettransaction.nft;
                    TextView textView3 = this.subtitleView;
                    if (nftitem != null) {
                        textView3.setText(LocaleController.getString(this.incoming ? C2807R.string.WalletIncomingTransferNft : C2807R.string.WalletOutgoingTransferNft));
                    } else {
                        textView3.setText(LocaleController.getString(this.incoming ? C2807R.string.WalletIncomingTransfer : C2807R.string.WalletOutgoingTransfer));
                    }
                }
            }
        }
        boolean z6 = wallettransaction.pending;
        TextView textView4 = this.dateView;
        if (z6) {
            textView4.setText(UploadingDotsSpannable.replace(LocaleController.getString(C2807R.string.WalletSending), this.dateView));
        } else {
            int i = wallettransaction.date;
            textView4.setText(i == 0 ? _UrlKt.FRAGMENT_ENCODE_SET : LocaleController.formatShortDateTime(i));
        }
        TL_wallet.nftItem nftitem2 = wallettransaction.nft;
        LinearLayout linearLayout = this.nftLayout;
        if (nftitem2 != null) {
            linearLayout.setVisibility(0);
            int color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider);
            Drawable drawableMutate = getContext().getResources().getDrawable(C2807R.drawable.wallet_nft_placeholder).mutate();
            drawableMutate.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            CombinedDrawable combinedDrawable = new CombinedDrawable(Theme.createRoundRectDrawable(AndroidUtilities.dp(8.0f), Theme.multAlpha(color, 0.1f)), drawableMutate);
            TL_wallet.nftItem nftitem3 = wallettransaction.nft;
            TLRPC.WebDocument webDocument2 = nftitem3.image_small;
            if (webDocument2 == null && (webDocument = nftitem3.image) != null) {
                webDocument2 = webDocument;
            }
            if (webDocument2 != null) {
                this.nftImageView.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(webDocument2)), "46_46", combinedDrawable, wallettransaction.nft);
            } else {
                this.nftImageView.setImageDrawable(combinedDrawable);
            }
            this.nftTitle.setText(wallettransaction.nft.name);
            this.nftText.setText(LocaleController.getString(wallettransaction.nft.isPhoneNumber() ? C2807R.string.WalletCollectibleNumber : wallettransaction.nft.isUsername() ? C2807R.string.WalletCollectibleUsername : wallettransaction.nft.isGift() ? C2807R.string.WalletCollectibleGift : C2807R.string.WalletCollectible));
        } else {
            linearLayout.setVisibility(8);
            this.nftImageView.clearImage();
        }
        if (wallettransaction.amount == 0 && wallettransaction.key_change) {
            this.amountView.setVisibility(8);
        } else {
            TL_wallet.nftItem nftitem4 = wallettransaction.nft;
            TextView textView5 = this.amountView;
            if (nftitem4 != null) {
                textView5.setVisibility(0);
                this.amountView.setCompoundDrawablesRelative(null, null, this.giftDrawable, null);
                boolean z7 = this.incoming;
                Drawable drawable = this.giftDrawable;
                if (z7) {
                    drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_color_green, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
                    this.amountView.setText(LocaleController.getString(C2807R.string.WalletIncomingCollectibleAmount));
                } else {
                    drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
                    this.amountView.setText(LocaleController.getString(C2807R.string.WalletOutgoingCollectibleAmount));
                }
            } else {
                textView5.setVisibility(0);
                this.amountView.setCompoundDrawablesRelative(null, null, this.gramDrawable, null);
                this.amountView.setText(formatAmount(this.incoming, wallettransaction.amount));
            }
        }
        this.transactionAmount.setVisibility(this.amountView.getVisibility());
        this.transactionAmount.setAmount(this.amountView.getText(), wallettransaction.nft != null ? this.giftDrawable : this.gramDrawable);
        this.transactionAmount.setFlying(this.flightHeld);
        animatePending((this.sending || this.flightHeld) ? 1.0f : 0.0f, z2);
        this.needDivider = z;
        updateColors();
        invalidate();
    }

    public static class SmartWalletAddressFormatter {
        private final HashSet<String> addresses = new HashSet<>();
        private final HashMap<String, String> formattedAddresses = new HashMap<>();

        public void add(String str) {
            if (str == null || str.isEmpty()) {
                return;
            }
            this.addresses.add(str);
        }

        public void done() {
            this.formattedAddresses.clear();
            resolve(new ArrayList(this.addresses), 4);
        }

        private void resolve(List<String> list, int i) {
            HashMap map = new HashMap();
            for (String str : list) {
                String strShorten = shorten(str, i);
                ArrayList arrayList = (ArrayList) map.get(strShorten);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    map.put(strShorten, arrayList);
                }
                arrayList.add(str);
            }
            for (ArrayList arrayList2 : map.values()) {
                if (arrayList2.size() == 1) {
                    String str2 = (String) arrayList2.get(0);
                    this.formattedAddresses.put(str2, shorten(str2, i));
                } else {
                    resolve(arrayList2, i + 1);
                }
            }
        }

        private static String shorten(String str, int i) {
            if (str.length() <= (i * 2) + 1) {
                return str;
            }
            return str.substring(0, i) + "…" + str.substring(str.length() - i);
        }

        public void clear() {
            this.addresses.clear();
            this.formattedAddresses.clear();
        }

        public String format(String str) {
            if (str == null) {
                return null;
            }
            String str2 = this.formattedAddresses.get(str);
            return str2 == null ? str : str2;
        }
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
        int color;
        updatePendingBackground();
        TextView textView = this.titleView;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i, this.resourcesProvider));
        this.subtitleView.setTextColor(Theme.getColor(i, this.resourcesProvider));
        TextView textView2 = this.dateView;
        int i2 = Theme.key_windowBackgroundWhiteGrayText2;
        textView2.setTextColor(Theme.getColor(i2, this.resourcesProvider));
        if (this.pending && !this.sending) {
            color = Theme.getColor(i2, this.resourcesProvider);
        } else if (this.incoming) {
            color = Theme.getColor(Theme.key_color_green, this.resourcesProvider);
        } else {
            color = Theme.getColor(i, this.resourcesProvider);
        }
        this.transactionAmount.setColor(color);
        this.nftLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider)));
        this.nftTitle.setTextColor(Theme.getColor(i, this.resourcesProvider));
        this.nftText.setTextColor(Theme.getColor(i2, this.resourcesProvider));
    }

    public boolean isRaised() {
        return this.pendingProgress > 0.0f || this.sparks.isActive();
    }

    private void updatePendingBackground() {
        this.rowBackground.setColor(Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider), this.pendingProgress));
    }

    public boolean matches(TL_wallet.walletTransaction wallettransaction) {
        TL_wallet.walletTransaction wallettransaction2 = this.boundTransaction;
        return wallettransaction2 != null && Factory.sameTransaction(wallettransaction2, wallettransaction);
    }

    public WalletDiamondView getPendingDiamond() {
        return this.transactionAmount.getDiamond();
    }

    public void holdForFlight(boolean z) {
        this.flightHeld = z;
        this.transactionAmount.setFlying(z);
        animatePending((this.sending || z) ? 1.0f : 0.0f, !z);
    }

    private void animatePending(float f, boolean z) {
        TL_wallet.walletTransaction wallettransaction;
        WalletDiamondView pendingDiamond;
        if (z && this.pendingAnimator != null && this.pendingTarget == f) {
            return;
        }
        this.pendingTarget = f;
        ValueAnimator valueAnimator = this.pendingAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.pendingAnimator = null;
        }
        if (!z || f != 0.0f || this.pendingProgress <= 0.0f || isAttachedToWindow()) {
            if (z) {
                float f2 = this.pendingProgress;
                if (f2 != f) {
                    if (f == 0.0f && f2 > 0.0f && (wallettransaction = this.boundTransaction) != null && !wallettransaction.failed && (pendingDiamond = getPendingDiamond()) != null) {
                        RectF rectFBounds = WalletSendTransition.bounds(pendingDiamond, this);
                        this.sparks.celebrate(rectFBounds.centerX(), rectFBounds.centerY());
                        this.sentRipplePending = !this.sentRipplePlayed && this.liveAmountEligible;
                    }
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.pendingProgress, f);
                    this.pendingAnimator = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.setDuration(260L);
                    this.pendingAnimator.setInterpolator(new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f));
                    this.pendingAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.TransactionCell$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            this.f$0.lambda$animatePending$0(valueAnimator2);
                        }
                    });
                    this.pendingAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Wallet.TransactionCell.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            TransactionCell.this.pendingAnimator = null;
                        }
                    });
                    this.pendingAnimator.start();
                    return;
                }
            }
            setPendingProgress(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animatePending$0(ValueAnimator valueAnimator) {
        setPendingProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void setPendingProgress(float f) {
        this.pendingProgress = f;
        updatePendingBackground();
        applyLandingPress();
        setElevation(AndroidUtilities.dp(8.0f) * f);
        if (Build.VERSION.SDK_INT >= 28) {
            setOutlineAmbientShadowColor(1493903946);
            setOutlineSpotShadowColor(1493903946);
        }
        WalletTransactionAmountView walletTransactionAmountView = this.transactionAmount;
        if (!this.liveAmountEligible) {
            f = 0.0f;
        }
        walletTransactionAmountView.setPendingProgress(f);
        invalidate();
    }

    public void playLanding(float f) {
        cancelLanding();
        SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder(0.0f));
        this.pressSpring = springAnimation;
        springAnimation.setSpring(new SpringForce(0.0f).setDampingRatio(0.65f).setStiffness(200.0f));
        this.pressSpring.setMinimumVisibleChange(0.001f);
        this.pressSpring.setStartVelocity(Math.max(20.0f, Math.min(36.0f, f * 0.04f)));
        this.pressSpring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Wallet.TransactionCell$$ExternalSyntheticLambda1
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                this.f$0.lambda$playLanding$1(dynamicAnimation, f2, f3);
            }
        });
        this.pressSpring.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playLanding$1(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.landingPress = f;
        applyLandingPress();
    }

    private void applyLandingPress() {
        float f = (this.pendingProgress * 0.035f) + 1.0f;
        setScaleX(((this.landingPress * 0.012f) + 1.0f) * f);
        setScaleY(f * (1.0f - (this.landingPress * 0.04f)));
        setTranslationY(AndroidUtilities.dp(4.0f) * this.landingPress);
        this.transactionAmount.setLandingPress(this.landingPress);
    }

    private void cancelLanding() {
        SpringAnimation springAnimation = this.pressSpring;
        if (springAnimation != null) {
            springAnimation.cancel();
            this.pressSpring = null;
        }
        this.landingPress = 0.0f;
        applyLandingPress();
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        if (this.pendingProgress <= 0.0f || (view != this.avatarView && view != this.iconView)) {
            return super.drawChild(canvas, view, j);
        }
        int iSave = canvas.save();
        this.avatarCutout.rewind();
        this.avatarCutout.addCircle(AndroidUtilities.dp(52.0f), AndroidUtilities.dp(51.0f), AndroidUtilities.dp(10.0f) * this.pendingProgress, Path.Direction.CW);
        canvas.clipPath(this.avatarCutout, Region.Op.DIFFERENCE);
        boolean zDrawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(iSave);
        return zDrawChild;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        WalletDiamondView pendingDiamond;
        super.dispatchDraw(canvas);
        if (this.sentRipplePending && isAttachedToWindow() && getWindowVisibility() == 0 && (getRootView() instanceof ViewGroup) && (pendingDiamond = getPendingDiamond()) != null && pendingDiamond.getWidth() > 0 && pendingDiamond.getHeight() > 0) {
            this.sentRipplePending = false;
            this.sentRipplePlayed = true;
            RectF rectFBounds = WalletSendTransition.bounds(pendingDiamond, (ViewGroup) getRootView());
            LaunchActivity.makeRipple(rectFBounds.centerX(), rectFBounds.centerY(), 1.5f);
        }
        this.sparks.draw(canvas);
        if (this.sparks.isActive()) {
            postInvalidateOnAnimation();
        }
        float f = this.pendingProgress;
        if (f <= 0.0f) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() - this.clockStart;
        int color = Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider);
        this.pendingPaint.setShader(null);
        this.pendingPaint.setStyle(Paint.Style.FILL);
        this.pendingPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
        float f2 = 255.0f * f;
        this.pendingPaint.setAlpha(Math.round(f2));
        canvas.drawCircle(AndroidUtilities.dp(52.0f), AndroidUtilities.dp(51.0f), AndroidUtilities.dp(8.0f) * f, this.pendingPaint);
        this.pendingPaint.setColor(color);
        this.pendingPaint.setAlpha(Math.round(f2));
        this.pendingPaint.setStrokeWidth(AndroidUtilities.dp(1.6f));
        this.pendingPaint.setStrokeCap(Paint.Cap.ROUND);
        this.pendingPaint.setStyle(Paint.Style.STROKE);
        canvas.drawCircle(AndroidUtilities.dp(52.0f), AndroidUtilities.dp(51.0f), AndroidUtilities.dp(7.0f) * f, this.pendingPaint);
        drawClockHand(canvas, (jUptimeMillis % 1000) * 0.36f, AndroidUtilities.dp(4.6f) * f);
        drawClockHand(canvas, ((jUptimeMillis % 6000) * 0.06f) + 120.0f, AndroidUtilities.dp(3.2f) * f);
        float f3 = (jUptimeMillis % 1600) / 1600.0f;
        float width = getWidth() * 0.5f;
        float width2 = (-width) + ((getWidth() + (width * 2.0f)) * f3);
        float f4 = width / 2.0f;
        float f5 = width2 - f4;
        float f6 = width2 + f4;
        int i = 16777215 & color;
        this.pendingPaint.setShader(new LinearGradient(f5, 0.0f, f6, 0.0f, new int[]{i, color, -7346433, i}, new float[]{0.0f, 0.45f, 0.6f, 1.0f}, Shader.TileMode.CLAMP));
        this.pendingPaint.setAlpha(Math.round(f * 150.0f * ((float) Math.sin(((double) f3) * 3.141592653589793d))));
        this.pendingPaint.setStrokeWidth(AndroidUtilities.dp(1.5f));
        canvas.drawRoundRect(AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), getWidth() - AndroidUtilities.dp(1.0f), getHeight() - AndroidUtilities.dp(1.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), this.pendingPaint);
        this.pendingPaint.setShader(null);
        if (isAttachedToWindow() && isShown() && getWindowVisibility() == 0) {
            postInvalidateOnAnimation();
        }
    }

    private void drawClockHand(Canvas canvas, float f, float f2) {
        double radians = Math.toRadians(f - 90.0f);
        canvas.drawLine(AndroidUtilities.dp(52.0f), AndroidUtilities.dp(51.0f), AndroidUtilities.dp(52.0f) + (((float) Math.cos(radians)) * f2), AndroidUtilities.dp(51.0f) + (((float) Math.sin(radians)) * f2), this.pendingPaint);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        cancelLanding();
        this.sparks.clear();
        ValueAnimator valueAnimator = this.pendingAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.pendingAnimator = null;
        }
        this.flightHeld = false;
        this.transactionAmount.setFlying(false);
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        animatePending((this.sending || this.flightHeld) ? 1.0f : 0.0f, true);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.needDivider || this.pendingProgress >= 1.0f) {
            return;
        }
        this.pendingPaint.setStyle(Paint.Style.FILL);
        this.pendingPaint.setColor(Theme.dividerPaint.getColor());
        this.pendingPaint.setAlpha(Math.round(Theme.dividerPaint.getAlpha() * (1.0f - this.pendingProgress)));
        canvas.drawRect(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(71.0f), getHeight() - 1, getWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(71.0f) : 0), getHeight(), this.pendingPaint);
    }

    private static CharSequence formatAmount(boolean z, long j) {
        long jAbs = Math.abs(j);
        SpannableStringBuilder gramsScaled = GramWallet.formatGramsScaled(jAbs, 0.78571427f);
        if (jAbs != 0 && z) {
            gramsScaled.insert(0, (CharSequence) "+");
            return gramsScaled;
        }
        if (jAbs != 0 && !z) {
            gramsScaled.insert(0, (CharSequence) "–");
        }
        return gramsScaled;
    }

    public static class Factory extends UItem.UItemFactory<TransactionCell> {
        @Override // org.telegram.ui.Components.UItem.UItemFactory
        /* JADX INFO: renamed from: isClickable */
        public boolean getIsClickableValue() {
            return true;
        }

        static {
            UItem.UItemFactory.setup(new Factory());
        }

        public static class TransactionSnapshot extends TL_wallet.walletTransaction {
            final TL_wallet.walletTransaction source;

            public TransactionSnapshot(TL_wallet.walletTransaction wallettransaction) {
                this.source = wallettransaction;
            }
        }

        public static TL_wallet.walletTransaction sourceOf(TL_wallet.walletTransaction wallettransaction) {
            return wallettransaction instanceof TransactionSnapshot ? ((TransactionSnapshot) wallettransaction).source : wallettransaction;
        }

        public static boolean sameTransaction(TL_wallet.walletTransaction wallettransaction, TL_wallet.walletTransaction wallettransaction2) {
            TL_wallet.walletTransaction wallettransactionSourceOf = sourceOf(wallettransaction);
            TL_wallet.walletTransaction wallettransactionSourceOf2 = sourceOf(wallettransaction2);
            return wallettransactionSourceOf == wallettransactionSourceOf2 || GramWallet.transactionMatches(wallettransaction, wallettransaction2) || GramWallet.transactionMatches(wallettransactionSourceOf, wallettransactionSourceOf2);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public TransactionCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            return new TransactionCell(context, i, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            ((TransactionCell) view).set((TL_wallet.walletTransaction) uItem.object, (SmartWalletAddressFormatter) uItem.object2, z);
        }

        public static UItem of(TL_wallet.walletTransaction wallettransaction, SmartWalletAddressFormatter smartWalletAddressFormatter) {
            UItem uItemOfFactory = UItem.ofFactory(Factory.class);
            TransactionSnapshot transactionSnapshot = new TransactionSnapshot(wallettransaction);
            transactionSnapshot.set(wallettransaction);
            transactionSnapshot.id = wallettransaction.id;
            transactionSnapshot.random_id = wallettransaction.random_id;
            transactionSnapshot.gasless = wallettransaction.gasless;
            transactionSnapshot.gaslessMessageBodyHash = wallettransaction.gaslessMessageBodyHash;
            transactionSnapshot.normalMessageBodyHash = wallettransaction.normalMessageBodyHash;
            transactionSnapshot.nft = wallettransaction.nft;
            uItemOfFactory.object = transactionSnapshot;
            uItemOfFactory.object2 = smartWalletAddressFormatter;
            TL_wallet.WalletTransactionPeer walletTransactionPeer = wallettransaction.peer;
            uItemOfFactory.text = walletTransactionPeer == null ? null : smartWalletAddressFormatter.format(walletTransactionPeer.address);
            return uItemOfFactory;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean equals(UItem uItem, UItem uItem2) {
            Object obj = uItem.object;
            if (!(obj instanceof TL_wallet.walletTransaction)) {
                return false;
            }
            Object obj2 = uItem2.object;
            if (obj2 instanceof TL_wallet.walletTransaction) {
                return sameTransaction((TL_wallet.walletTransaction) obj, (TL_wallet.walletTransaction) obj2);
            }
            return false;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean contentsEquals(UItem uItem, UItem uItem2) {
            Object obj = uItem.object;
            if (!(obj instanceof TL_wallet.walletTransaction)) {
                return false;
            }
            Object obj2 = uItem2.object;
            if (obj2 instanceof TL_wallet.walletTransaction) {
                return ((TL_wallet.walletTransaction) obj).equals((TL_wallet.walletTransaction) obj2);
            }
            return false;
        }
    }
}
