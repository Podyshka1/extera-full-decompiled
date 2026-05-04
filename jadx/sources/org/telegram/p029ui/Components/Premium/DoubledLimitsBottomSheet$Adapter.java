package org.telegram.p029ui.Components.Premium;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.FixedHeightEmptyCell;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.PremiumGradient;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class DoubledLimitsBottomSheet$Adapter extends RecyclerListView.SelectionAdapter {
    ViewGroup containerView;
    boolean drawHeader;
    PremiumGradient.PremiumGradientTools gradientTools;
    int headerRow;
    int lastViewRow;
    final ArrayList limits;
    int limitsStartEnd;
    int limitsStartRow;
    private final Theme.ResourcesProvider resourcesProvider;
    int rowCount;
    private int totalGradientHeight;

    @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        return false;
    }

    public DoubledLimitsBottomSheet$Adapter(int i, boolean z, Theme.ResourcesProvider resourcesProvider) {
        ArrayList arrayList = new ArrayList();
        this.limits = arrayList;
        this.drawHeader = z;
        this.resourcesProvider = resourcesProvider;
        PremiumGradient.PremiumGradientTools premiumGradientTools = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradient1, Theme.key_premiumGradient2, Theme.key_premiumGradient3, Theme.key_premiumGradient4, -1, resourcesProvider);
        this.gradientTools = premiumGradientTools;
        premiumGradientTools.f2030x1 = 0.0f;
        premiumGradientTools.f2032y1 = 0.0f;
        premiumGradientTools.f2031x2 = 0.0f;
        premiumGradientTools.f2033y2 = 1.0f;
        MessagesController messagesController = MessagesController.getInstance(i);
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString(C2888R.string.GroupsAndChannelsLimitTitle), LocaleController.formatString(C2888R.string.GroupsAndChannelsLimitSubtitle, Integer.valueOf(messagesController.channelsLimitPremium)), messagesController.channelsLimitDefault, messagesController.channelsLimitPremium));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString(C2888R.string.PinChatsLimitTitle), LocaleController.formatString(C2888R.string.PinChatsLimitSubtitle, Integer.valueOf(messagesController.dialogFiltersPinnedLimitPremium)), messagesController.dialogFiltersPinnedLimitDefault, messagesController.dialogFiltersPinnedLimitPremium));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString(C2888R.string.PublicLinksLimitTitle), LocaleController.formatString(C2888R.string.PublicLinksLimitSubtitle, Integer.valueOf(messagesController.publicLinksLimitPremium)), messagesController.publicLinksLimitDefault, messagesController.publicLinksLimitPremium));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString(C2888R.string.SavedGifsLimitTitle), LocaleController.formatString(C2888R.string.SavedGifsLimitSubtitle, Integer.valueOf(messagesController.savedGifsLimitPremium)), messagesController.savedGifsLimitDefault, messagesController.savedGifsLimitPremium));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString(C2888R.string.FavoriteStickersLimitTitle), LocaleController.formatString(C2888R.string.FavoriteStickersLimitSubtitle, Integer.valueOf(messagesController.stickersFavedLimitPremium)), messagesController.stickersFavedLimitDefault, messagesController.stickersFavedLimitPremium));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString(C2888R.string.BioLimitTitle), LocaleController.formatString(C2888R.string.BioLimitSubtitle, Integer.valueOf(messagesController.stickersFavedLimitPremium)), messagesController.aboutLengthLimitDefault, messagesController.aboutLengthLimitPremium));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString(C2888R.string.CaptionsLimitTitle), LocaleController.formatString(C2888R.string.CaptionsLimitSubtitle, Integer.valueOf(messagesController.stickersFavedLimitPremium)), messagesController.captionLengthLimitDefault, messagesController.captionLengthLimitPremium));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString(C2888R.string.FoldersLimitTitle), LocaleController.formatString(C2888R.string.FoldersLimitSubtitle, Integer.valueOf(messagesController.dialogFiltersLimitPremium)), messagesController.dialogFiltersLimitDefault, messagesController.dialogFiltersLimitPremium));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString(C2888R.string.ChatPerFolderLimitTitle), LocaleController.formatString(C2888R.string.ChatPerFolderLimitSubtitle, Integer.valueOf(messagesController.dialogFiltersChatsLimitPremium)), messagesController.dialogFiltersChatsLimitDefault, messagesController.dialogFiltersChatsLimitPremium));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString(C2888R.string.ConnectedAccountsLimitTitle), LocaleController.formatString(C2888R.string.ConnectedAccountsLimitSubtitle, 4), 8, 16));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString(C2888R.string.SimilarChannelsLimitTitle), LocaleController.formatString(C2888R.string.SimilarChannelsLimitSubtitle, Integer.valueOf(messagesController.recommendedChannelsLimitPremium)), messagesController.recommendedChannelsLimitDefault, messagesController.recommendedChannelsLimitPremium));
        this.rowCount = 1;
        this.headerRow = 0;
        this.limitsStartRow = 1;
        int size = 1 + arrayList.size();
        this.rowCount = size;
        this.limitsStartEnd = size;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View fixedHeightEmptyCell;
        Context context = viewGroup.getContext();
        if (i != 1) {
            if (i != 2) {
                DoubledLimitsBottomSheet$LimitCell doubledLimitsBottomSheet$LimitCell = new DoubledLimitsBottomSheet$LimitCell(context, this.resourcesProvider);
                doubledLimitsBottomSheet$LimitCell.previewView.setParentViewForGradien(this.containerView);
                doubledLimitsBottomSheet$LimitCell.previewView.setStaticGradinet(this.gradientTools);
                fixedHeightEmptyCell = doubledLimitsBottomSheet$LimitCell;
            } else {
                fixedHeightEmptyCell = new FixedHeightEmptyCell(context, 16);
            }
        } else if (this.drawHeader) {
            FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.Premium.DoubledLimitsBottomSheet$Adapter.1
                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i2, int i3) {
                    super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(86.0f), TLObject.FLAG_30));
                }
            };
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            ImageView imageView = new ImageView(context);
            imageView.setImageDrawable(PremiumGradient.getInstance().createGradientDrawable(ContextCompat.getDrawable(context, C2888R.drawable.other_2x_large)));
            linearLayout.addView(imageView, LayoutHelper.createFrame(40, 28.0f, 16, 0.0f, 0.0f, 8.0f, 0.0f));
            TextView textView = new TextView(context);
            textView.setText(LocaleController.getString(C2888R.string.DoubledLimits));
            textView.setGravity(17);
            textView.setTextSize(1, 20.0f);
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            textView.setTypeface(AndroidUtilities.bold());
            linearLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 16));
            frameLayout.addView(linearLayout, LayoutHelper.createFrame(-2, -2, 17));
            fixedHeightEmptyCell = frameLayout;
        } else {
            fixedHeightEmptyCell = new FixedHeightEmptyCell(context, 64);
        }
        fixedHeightEmptyCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        return new RecyclerListView.Holder(fixedHeightEmptyCell);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder.getItemViewType() == 0) {
            DoubledLimitsBottomSheet$LimitCell doubledLimitsBottomSheet$LimitCell = (DoubledLimitsBottomSheet$LimitCell) viewHolder.itemView;
            doubledLimitsBottomSheet$LimitCell.setData((DoubledLimitsBottomSheet$Limit) this.limits.get(i - this.limitsStartRow));
            doubledLimitsBottomSheet$LimitCell.previewView.gradientYOffset = ((DoubledLimitsBottomSheet$Limit) this.limits.get(i - this.limitsStartRow)).yOffset;
            doubledLimitsBottomSheet$LimitCell.previewView.gradientTotalHeight = this.totalGradientHeight;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.rowCount;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i == this.headerRow) {
            return 1;
        }
        return i == this.lastViewRow ? 2 : 0;
    }

    public void measureGradient(Context context, int i, int i2) {
        DoubledLimitsBottomSheet$LimitCell doubledLimitsBottomSheet$LimitCell = new DoubledLimitsBottomSheet$LimitCell(context, this.resourcesProvider);
        int measuredHeight = 0;
        for (int i3 = 0; i3 < this.limits.size(); i3++) {
            doubledLimitsBottomSheet$LimitCell.setData((DoubledLimitsBottomSheet$Limit) this.limits.get(i3));
            doubledLimitsBottomSheet$LimitCell.measure(View.MeasureSpec.makeMeasureSpec(i, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE));
            ((DoubledLimitsBottomSheet$Limit) this.limits.get(i3)).yOffset = measuredHeight;
            measuredHeight += doubledLimitsBottomSheet$LimitCell.getMeasuredHeight();
        }
        this.totalGradientHeight = measuredHeight;
    }
}
