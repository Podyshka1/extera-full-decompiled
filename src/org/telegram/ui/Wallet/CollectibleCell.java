package org.telegram.ui.Wallet;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.WebFile;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes8.dex */
public class CollectibleCell extends FrameLayout implements Theme.Colorable {
    private boolean grid;
    private boolean needDivider;
    private final Theme.ResourcesProvider resourcesProvider;
    private final TextView subtitleView;
    private final BackupImageView thumbView;
    private final TextView titleView;

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public /* bridge */ /* synthetic */ int[] getColorKeys() {
        return super.getColorKeys();
    }

    public CollectibleCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        setWillNotDraw(false);
        BackupImageView backupImageView = new BackupImageView(context);
        this.thumbView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.dp(8.0f));
        addView(backupImageView, LayoutHelper.createFrame(46, 46.0f, 19, 15.0f, 0.0f, 0.0f, 0.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(16);
        addView(linearLayout, LayoutHelper.createFrame(-1, -1.0f, 119, 71.0f, 0.0f, 20.0f, 0.0f));
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setSingleLine(true);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setIncludeFontPadding(false);
        textView.setGravity(16);
        textView.setTextSize(1, 16.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, 20));
        TextView textView2 = new TextView(context);
        this.subtitleView = textView2;
        textView2.setSingleLine(true);
        textView2.setEllipsize(truncateAt);
        textView2.setIncludeFontPadding(false);
        textView2.setGravity(16);
        textView2.setTextSize(1, 14.0f);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, 18, 0.0f, 2.0f, 0.0f, 0.0f));
        updateColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGrid(boolean z) {
        FrameLayout.LayoutParams layoutParamsCreateFrame;
        if (this.grid == z) {
            return;
        }
        this.grid = z;
        BackupImageView backupImageView = this.thumbView;
        if (z) {
            layoutParamsCreateFrame = LayoutHelper.createFrame(-1, -1.0f, 119, 3.33f, 4.0f, 3.33f, 4.0f);
        } else {
            layoutParamsCreateFrame = LayoutHelper.createFrame(46, 46.0f, 19, 15.0f, 0.0f, 0.0f, 0.0f);
        }
        backupImageView.setLayoutParams(layoutParamsCreateFrame);
        this.thumbView.setRoundRadius(AndroidUtilities.dp(z ? 11.0f : 8.0f));
        ((View) this.titleView.getParent()).setVisibility(z ? 8 : 0);
    }

    public void set(TL_wallet.nftItem nftitem, boolean z) {
        if (TextUtils.isEmpty(nftitem.name)) {
            this.titleView.setText(LocaleController.getString(C2807R.string.WalletCollectible));
        } else {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(nftitem.name);
            int iIndexOf = nftitem.name.indexOf(35);
            if (iIndexOf >= 0) {
                spannableStringBuilder.setSpan(new CharacterStyle() { // from class: org.telegram.ui.Wallet.CollectibleCell.1
                    @Override // android.text.style.CharacterStyle
                    public void updateDrawState(TextPaint textPaint) {
                        textPaint.setAlpha((int) (textPaint.getAlpha() * 0.65f));
                    }
                }, iIndexOf, spannableStringBuilder.length(), 33);
            }
            this.titleView.setText(spannableStringBuilder);
        }
        String attribute = getAttribute(nftitem, "Model");
        String attribute2 = getAttribute(nftitem, "Backdrop");
        if (!TextUtils.isEmpty(attribute) && !TextUtils.isEmpty(attribute2)) {
            this.subtitleView.setText(LocaleController.formatSpannable(C2807R.string.WalletCollectibleModelBackdrop, attribute, attribute2));
        } else {
            this.subtitleView.setText(nftitem.description);
        }
        ImageLocation image = getImage(nftitem, !this.grid);
        int color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider);
        Drawable drawableMutate = getContext().getResources().getDrawable(C2807R.drawable.wallet_nft_placeholder).mutate();
        drawableMutate.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        CombinedDrawable combinedDrawable = new CombinedDrawable(Theme.createRoundRectDrawable(AndroidUtilities.dp(this.grid ? 11.0f : 8.0f), Theme.multAlpha(color, 0.1f)), drawableMutate);
        if (image != null && this.grid) {
            this.thumbView.setImage(image, "160_160", (nftitem.image_small == null || nftitem.image == null) ? null : getImage(nftitem, true), "100_100", combinedDrawable, (String) null, 0L, 0, nftitem);
        } else {
            BackupImageView backupImageView = this.thumbView;
            if (image != null) {
                backupImageView.setImage(image, "46_46", combinedDrawable, nftitem);
            } else {
                backupImageView.setImageDrawable(combinedDrawable);
            }
        }
        this.needDivider = z && !this.grid;
        updateColors();
        invalidate();
    }

    public static ImageLocation getImage(TL_wallet.nftItem nftitem, boolean z) {
        TLRPC.WebDocument webDocument;
        if ((!z || (webDocument = nftitem.image_small) == null) && (webDocument = nftitem.image) == null) {
            webDocument = nftitem.image_small;
        }
        if (webDocument == null) {
            return null;
        }
        return ImageLocation.getForWebFile(WebFile.createWithWebDocument(webDocument));
    }

    private static String getAttribute(TL_wallet.nftItem nftitem, String str) {
        ArrayList<TL_wallet.nftAttribute> arrayList = nftitem.attributes;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TL_wallet.nftAttribute nftattribute = arrayList.get(i);
            i++;
            TL_wallet.nftAttribute nftattribute2 = nftattribute;
            if (TextUtils.equals(nftattribute2.trait_type, str)) {
                return nftattribute2.value;
            }
        }
        return null;
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
        setBackgroundColor(0);
        this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
        this.subtitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider));
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(this.grid ? 112.0f : 58.0f), TLObject.FLAG_30));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.needDivider) {
            canvas.drawRect(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(71.0f), getHeight() - 1, getWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(71.0f) : 0), getHeight(), Theme.dividerPaint);
        }
    }

    public static class Factory extends UItem.UItemFactory<CollectibleCell> {
        @Override // org.telegram.ui.Components.UItem.UItemFactory
        /* JADX INFO: renamed from: isClickable */
        public boolean getIsClickableValue() {
            return true;
        }

        static {
            UItem.UItemFactory.setup(new Factory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public CollectibleCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            return new CollectibleCell(context, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            CollectibleCell collectibleCell = (CollectibleCell) view;
            collectibleCell.setGrid(uItem.spanCount == 1);
            collectibleCell.set((TL_wallet.nftItem) uItem.object, z);
        }

        public static UItem of(TL_wallet.nftItem nftitem) {
            UItem uItemOfFactory = UItem.ofFactory(Factory.class);
            uItemOfFactory.object = nftitem;
            return uItemOfFactory;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean equals(UItem uItem, UItem uItem2) {
            TL_wallet.nftItem nftitem = (TL_wallet.nftItem) uItem.object;
            TL_wallet.nftItem nftitem2 = (TL_wallet.nftItem) uItem2.object;
            if (nftitem == null || nftitem2 == null) {
                return nftitem == nftitem2;
            }
            return TextUtils.equals(nftitem.address, nftitem2.address);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean contentsEquals(UItem uItem, UItem uItem2) {
            if (!equals(uItem, uItem2)) {
                return false;
            }
            TL_wallet.nftItem nftitem = (TL_wallet.nftItem) uItem.object;
            TL_wallet.nftItem nftitem2 = (TL_wallet.nftItem) uItem2.object;
            if (nftitem != nftitem2) {
                return nftitem != null && nftitem2 != null && Objects.equals(nftitem.name, nftitem2.name) && Objects.equals(nftitem.image, nftitem2.image) && Objects.equals(nftitem.image_small, nftitem2.image_small) && Objects.equals(nftitem.description, nftitem2.description) && Objects.equals(nftitem.attributes, nftitem2.attributes) && Objects.equals(nftitem.extra, nftitem2.extra);
            }
            return true;
        }
    }
}
