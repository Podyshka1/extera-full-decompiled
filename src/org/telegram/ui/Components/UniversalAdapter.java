package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.mediarouter.media.PlatformMediaRouter1RouteProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.android.dx.dex.file.DebugInfoConstants;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.models.SettingItem;
import com.exteragram.messenger.plugins.models.TextSetting;
import java.util.ArrayList;
import me.vkryl.core.BitwiseUtils;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stats;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Business.BusinessLinksActivity;
import org.telegram.ui.Business.QuickRepliesActivity;
import org.telegram.ui.Business.QuickRepliesController;
import org.telegram.ui.Cells.CheckBoxCell;
import org.telegram.ui.Cells.CollapseTextCell;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.Cells.DialogRadioCell;
import org.telegram.ui.Cells.EditTextCell;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.NotificationsCheckCell;
import org.telegram.ui.Cells.ProfileSearchCell;
import org.telegram.ui.Cells.RadioButtonCell;
import org.telegram.ui.Cells.SlideIntChooseView;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Cells.TextCheckCell2;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Cells.TextRightIconCell;
import org.telegram.ui.Cells.TextSettingsCell;
import org.telegram.ui.Cells.UserCell;
import org.telegram.ui.ChannelMonetizationLayout;
import org.telegram.ui.Charts.BaseChartView;
import org.telegram.ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SlideChooseView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.StatisticActivity;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalAdapter extends AdapterWithDiffUtils {
    private boolean allowReorder;
    private boolean applyBackground;
    private BaseChartView.SharedUiComponents chartSharedUI;
    private final int classGuid;
    private final Context context;
    public final int currentAccount;
    private Section currentReorderSection;
    private Section currentWhiteSection;
    private final boolean dialog;
    protected Utilities.Callback2<ArrayList<UItem>, UniversalAdapter> fillItems;
    private final ArrayList<UItem> items;
    public int itemsOffset;
    protected final RecyclerListView listView;
    private final ArrayList<UItem> oldItems;
    private Utilities.Callback2<Integer, ArrayList<UItem>> onReordered;
    private boolean orderChanged;
    private int orderChangedId;
    private final ArrayList<Section> reorderSections;
    private final Theme.ResourcesProvider resourcesProvider;
    private final ArrayList<Section> whiteSections;

    public static boolean isHeader(int i) {
        return i == 0 || i == 42 || i == 1 || i == 26;
    }

    public UniversalAdapter(RecyclerListView recyclerListView, Context context, int i, int i2, Utilities.Callback2<ArrayList<UItem>, UniversalAdapter> callback2, Theme.ResourcesProvider resourcesProvider) {
        this(recyclerListView, context, i, i2, false, callback2, resourcesProvider);
    }

    public UniversalAdapter(RecyclerListView recyclerListView, Context context, int i, int i2, boolean z, Utilities.Callback2<ArrayList<UItem>, UniversalAdapter> callback2, Theme.ResourcesProvider resourcesProvider) {
        this.applyBackground = true;
        this.oldItems = new ArrayList<>();
        this.items = new ArrayList<>();
        this.itemsOffset = 0;
        this.whiteSections = new ArrayList<>();
        this.reorderSections = new ArrayList<>();
        this.listView = recyclerListView;
        this.context = context;
        this.currentAccount = i;
        this.classGuid = i2;
        this.dialog = z;
        this.fillItems = callback2;
        this.resourcesProvider = resourcesProvider;
        update(false);
    }

    public void setApplyBackground(boolean z) {
        this.applyBackground = z;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class Section {
        public int end;
        public int start;

        private Section() {
        }

        public boolean contains(int i) {
            return i >= this.start && i <= this.end;
        }
    }

    public void whiteSectionStart() {
        Section section = new Section();
        this.currentWhiteSection = section;
        section.start = this.itemsOffset + this.items.size();
        Section section2 = this.currentWhiteSection;
        section2.end = -1;
        this.whiteSections.add(section2);
    }

    public void whiteSectionEnd() {
        Section section = this.currentWhiteSection;
        if (section != null) {
            int i = section.start;
            int iMax = Math.max(0, (this.itemsOffset + this.items.size()) - 1);
            if (ExteraConfig.getSectionsSeparatedHeaders()) {
                while (i <= iMax && isHeader(getItemViewType(i))) {
                    i++;
                }
            }
            Section section2 = this.currentWhiteSection;
            section2.start = i;
            section2.end = iMax;
            if (i >= iMax) {
                this.whiteSections.remove(section2);
            }
            this.currentWhiteSection = null;
        }
    }

    public int reorderSectionStart() {
        Section section = new Section();
        this.currentReorderSection = section;
        section.start = this.items.size();
        Section section2 = this.currentReorderSection;
        section2.end = -1;
        this.reorderSections.add(section2);
        return this.reorderSections.size() - 1;
    }

    public void reorderSectionEnd() {
        Section section = this.currentReorderSection;
        if (section != null) {
            int i = section.start;
            int iMax = Math.max(0, this.items.size() - 1);
            if (ExteraConfig.getSectionsSeparatedHeaders()) {
                while (i <= iMax && isHeader(getItemViewType(i))) {
                    i++;
                }
            }
            Section section2 = this.currentReorderSection;
            section2.start = i;
            section2.end = iMax;
        }
    }

    private void updateReorderSections() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView == null) {
            return;
        }
        ArrayList<Long> arrayList = recyclerListView.forcedSections;
        if (arrayList == null) {
            recyclerListView.forcedSections = new ArrayList<>();
        } else {
            arrayList.clear();
        }
        ArrayList<Section> arrayList2 = this.whiteSections;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Section section = arrayList2.get(i);
            i++;
            Section section2 = section;
            this.listView.forcedSections.add(Long.valueOf(AndroidUtilities.pack(section2.start, section2.end)));
        }
    }

    public boolean isReorderItem(int i) {
        return getReorderSectionId(i) >= 0;
    }

    public int getReorderSectionId(int i) {
        for (int i2 = 0; i2 < this.reorderSections.size(); i2++) {
            if (this.reorderSections.get(i2).contains(i)) {
                return i2;
            }
        }
        return -1;
    }

    public void swapElements(int i, int i2) {
        int i3;
        if (this.onReordered == null) {
            return;
        }
        int reorderSectionId = getReorderSectionId(i);
        int reorderSectionId2 = getReorderSectionId(i2);
        if (reorderSectionId < 0 || reorderSectionId != reorderSectionId2) {
            return;
        }
        boolean zHasDivider = hasDivider(i);
        boolean zHasDivider2 = hasDivider(i2);
        this.items.add(i2, this.items.remove(i));
        notifyItemMoved(i, i2);
        if (hasDivider(i2) != zHasDivider) {
            notifyItemChanged(i2, 3);
        }
        if (hasDivider(i) != zHasDivider2) {
            notifyItemChanged(i, 3);
        }
        if (this.orderChanged && (i3 = this.orderChangedId) != reorderSectionId) {
            callReorder(i3);
        }
        this.orderChanged = true;
        this.orderChangedId = reorderSectionId;
    }

    private void callReorder(int i) {
        if (i < 0 || i >= this.reorderSections.size()) {
            return;
        }
        Section section = this.reorderSections.get(i);
        this.onReordered.run(Integer.valueOf(i), new ArrayList<>(this.items.subList(section.start, section.end + 1)));
        this.orderChanged = false;
    }

    public void reorderDone() {
        if (this.orderChanged) {
            callReorder(this.orderChangedId);
        }
    }

    public void listenReorder(Utilities.Callback2<Integer, ArrayList<UItem>> callback2) {
        this.onReordered = callback2;
    }

    public void updateReorder(boolean z) {
        this.allowReorder = z;
    }

    public void drawWhiteSections(Canvas canvas, RecyclerListView recyclerListView) {
        for (int i = 0; i < this.whiteSections.size(); i++) {
            Section section = this.whiteSections.get(i);
            int i2 = section.end;
            if (i2 >= 0) {
                recyclerListView.drawSectionBackground(canvas, section.start, i2, getThemedColor(this.dialog ? Theme.key_dialogBackground : Theme.key_windowBackgroundWhite));
            }
        }
    }

    public void update(final boolean z) {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null && recyclerListView.isComputingLayout()) {
            this.listView.post(new Runnable() { // from class: org.telegram.ui.Components.UniversalAdapter$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$update$0(z);
                }
            });
        } else {
            lambda$update$0(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updateInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$update$0(boolean z) {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView == null || !recyclerListView.isComputingLayout()) {
            this.oldItems.clear();
            this.oldItems.addAll(this.items);
            this.items.clear();
            this.currentWhiteSection = null;
            this.whiteSections.clear();
            this.reorderSections.clear();
            Utilities.Callback2<ArrayList<UItem>, UniversalAdapter> callback2 = this.fillItems;
            if (callback2 != null) {
                callback2.run(this.items, this);
                updateReorderSections();
                if (z) {
                    setItems(this.oldItems, this.items);
                } else {
                    notifyDataSetChanged();
                }
            }
        }
    }

    public void updateWithoutNotify() {
        this.oldItems.clear();
        this.oldItems.addAll(this.items);
        this.items.clear();
        this.whiteSections.clear();
        this.reorderSections.clear();
        Utilities.Callback2<ArrayList<UItem>, UniversalAdapter> callback2 = this.fillItems;
        if (callback2 != null) {
            callback2.run(this.items, this);
        }
        updateReorderSections();
    }

    public boolean shouldApplyBackground(int i) {
        if (!this.applyBackground) {
            return false;
        }
        if (i >= UItem.factoryViewTypeStartsWith) {
            return true;
        }
        switch (i) {
            case -3:
            case 0:
            case 1:
            case 3:
            case 4:
            case 5:
            case 6:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 27:
            case 28:
            case 29:
            case 30:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
                return true;
            case -2:
            case -1:
            case 2:
            case 7:
            case 8:
            case 26:
            case 31:
            case 38:
            default:
                return false;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        HeaderCell headerCell;
        View universalChartCell;
        View notificationsCheckCell;
        int i2;
        View headerCell2;
        boolean z = this.dialog;
        int i3 = z ? Theme.key_dialogBackground : Theme.key_windowBackgroundWhite;
        if (i >= UItem.factoryViewTypeStartsWith) {
            UItem.UItemFactory<?> uItemFactoryFindFactory = UItem.findFactory(i);
            if (uItemFactoryFindFactory != null) {
                universalChartCell = uItemFactoryFindFactory.createView(this.context, this.listView, this.currentAccount, this.classGuid, this.resourcesProvider);
            } else {
                universalChartCell = new View(this.context);
            }
        } else {
            int i4 = 6;
            switch (i) {
                case DebugInfoConstants.DBG_LINE_BASE /* -4 */:
                case -1:
                    FrameLayout frameLayout = new FrameLayout(this.context) { // from class: org.telegram.ui.Components.UniversalAdapter.1
                        @Override // android.widget.FrameLayout, android.view.View
                        public void onMeasure(int i5, int i6) {
                            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i5), TLObject.FLAG_30), i6);
                        }
                    };
                    universalChartCell = frameLayout;
                    if (i == -4) {
                        frameLayout.setTag(-33024);
                        universalChartCell = frameLayout;
                    }
                    break;
                case -3:
                    universalChartCell = new FullscreenCustomFrameLayout(this.context);
                    break;
                case -2:
                    universalChartCell = new FrameLayout(this.context) { // from class: org.telegram.ui.Components.UniversalAdapter.2
                        @Override // android.widget.FrameLayout, android.view.View
                        public void onMeasure(int i5, int i6) {
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i5), TLObject.FLAG_30);
                            measureChildren(iMakeMeasureSpec, i6);
                            int iMax = 0;
                            for (int i7 = 0; i7 < getChildCount(); i7++) {
                                iMax = Math.max(iMax, getChildAt(i7).getMeasuredHeight());
                            }
                            super.onMeasure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(iMax, TLObject.FLAG_30));
                        }
                    };
                    break;
                case 0:
                    if (z) {
                        headerCell = new HeaderCell(this.context, Theme.key_windowBackgroundWhiteBlueHeader, 21, 15, 0, false, this.resourcesProvider);
                        universalChartCell = headerCell;
                    } else {
                        universalChartCell = new HeaderCell(this.context, this.resourcesProvider);
                    }
                    break;
                case 1:
                    headerCell2 = new HeaderCell(this.context, Theme.key_windowBackgroundWhiteBlackText, 17, 15, false, this.resourcesProvider);
                    universalChartCell = headerCell2;
                    break;
                case 2:
                    universalChartCell = new TopViewCell(this.context, this.resourcesProvider);
                    break;
                case 3:
                    universalChartCell = new TextCell(this.context, this.resourcesProvider);
                    break;
                case 4:
                case 9:
                    TextCheckCell textCheckCell = new TextCheckCell(this.context, this.resourcesProvider);
                    headerCell2 = textCheckCell;
                    if (i == 9) {
                        textCheckCell.setDrawCheckRipple(true);
                        textCheckCell.setColors(Theme.key_windowBackgroundCheckText, Theme.key_switchTrackBlue, Theme.key_switchTrackBlueChecked, Theme.key_switchTrackBlueThumb, Theme.key_switchTrackBlueThumbChecked);
                        textCheckCell.setTypeface(AndroidUtilities.bold());
                        textCheckCell.setHeight(56);
                        headerCell2 = textCheckCell;
                    }
                    universalChartCell = headerCell2;
                    break;
                case 5:
                case 6:
                    notificationsCheckCell = new NotificationsCheckCell(this.context, 21, 60, 71, i == 6, this.resourcesProvider);
                    universalChartCell = notificationsCheckCell;
                    break;
                case 7:
                case 8:
                default:
                    universalChartCell = new TextInfoPrivacyCell(this.context, this.resourcesProvider);
                    break;
                case 10:
                    universalChartCell = new DialogRadioCell(this.context);
                    break;
                case 11:
                case 12:
                    UserCell userCell = new UserCell(this.context, 6, i == 12 ? 3 : 0, false);
                    userCell.setSelfAsSavedMessages(true);
                    universalChartCell = userCell;
                    break;
                case 13:
                    headerCell2 = new UserCell(this.context, 6, 0, false, true);
                    universalChartCell = headerCell2;
                    break;
                case 14:
                    universalChartCell = new SlideChooseView(this.context, this.resourcesProvider);
                    break;
                case 15:
                    universalChartCell = new SlideIntChooseView(this.context, this.resourcesProvider);
                    break;
                case 16:
                    universalChartCell = new QuickRepliesActivity.QuickReplyView(this.context, this.onReordered != null, this.resourcesProvider);
                    break;
                case 17:
                    universalChartCell = new QuickRepliesActivity.LargeQuickReplyView(this.context, this.resourcesProvider);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    if (this.chartSharedUI == null) {
                        this.chartSharedUI = new BaseChartView.SharedUiComponents();
                    }
                    universalChartCell = new StatisticActivity.UniversalChartCell(this.context, this.currentAccount, i - 18, this.chartSharedUI, this.classGuid);
                    break;
                case 24:
                    universalChartCell = new ChannelMonetizationLayout.ProceedOverviewCell(this.context, this.resourcesProvider);
                    break;
                case 25:
                    universalChartCell = new ChannelMonetizationLayout.TransactionCell(this.context, this.resourcesProvider);
                    break;
                case 26:
                    headerCell = new HeaderCell(this.context, Theme.key_windowBackgroundWhiteBlackText, 23, 20, 0, false, this.resourcesProvider);
                    headerCell.setTextSize(20.0f);
                    universalChartCell = headerCell;
                    break;
                case 27:
                    StoryPrivacyBottomSheet.UserCell userCell2 = new StoryPrivacyBottomSheet.UserCell(this.context, this.resourcesProvider);
                    userCell2.setIsSendAs(false, false);
                    universalChartCell = userCell2;
                    break;
                case 28:
                    universalChartCell = new SpaceView(this.context);
                    break;
                case 29:
                    universalChartCell = new BusinessLinksActivity.BusinessLinkView(this.context, this.resourcesProvider);
                    break;
                case 30:
                    universalChartCell = new TextRightIconCell(this.context, this.resourcesProvider);
                    break;
                case 31:
                    RecyclerListView recyclerListView = this.listView;
                    if (recyclerListView != null && recyclerListView.hasSections()) {
                        GraySectionCell graySectionCell = new GraySectionCell(this.context, 28, this.resourcesProvider);
                        graySectionCell.setNoBackground(true);
                        universalChartCell = graySectionCell;
                    } else {
                        universalChartCell = new GraySectionCell(this.context, this.resourcesProvider);
                    }
                    break;
                case 32:
                    universalChartCell = new ProfileSearchCell(this.context);
                    break;
                case 33:
                    universalChartCell = new DialogCell(null, this.context, false, true);
                    break;
                case 34:
                    FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this.context, this.resourcesProvider);
                    flickerLoadingView.setIsSingleCell(true);
                    universalChartCell = flickerLoadingView;
                    break;
                case 35:
                case 36:
                case 37:
                case 41:
                    if (i == 35) {
                        i4 = 4;
                    } else if (i != 36) {
                        if (i == 37) {
                            i4 = 7;
                        } else if (i != 41) {
                            i2 = 0;
                            CheckBoxCell checkBoxCell = new CheckBoxCell(this.context, i2, 21, true, this.resourcesProvider);
                            checkBoxCell.getCheckBoxRound().setColor(Theme.key_switch2TrackChecked, Theme.key_radioBackground, Theme.key_checkboxCheck);
                            notificationsCheckCell = checkBoxCell;
                            universalChartCell = notificationsCheckCell;
                        } else {
                            i4 = 8;
                        }
                    }
                    i2 = i4;
                    CheckBoxCell checkBoxCell2 = new CheckBoxCell(this.context, i2, 21, true, this.resourcesProvider);
                    checkBoxCell2.getCheckBoxRound().setColor(Theme.key_switch2TrackChecked, Theme.key_radioBackground, Theme.key_checkboxCheck);
                    notificationsCheckCell = checkBoxCell2;
                    universalChartCell = notificationsCheckCell;
                    break;
                case 38:
                    universalChartCell = new CollapseTextCell(this.context, this.resourcesProvider);
                    break;
                case 39:
                case 40:
                    universalChartCell = new TextCheckCell2(this.context);
                    break;
                case 42:
                    headerCell2 = new HeaderCell(this.context, Theme.key_windowBackgroundWhiteBlueHeader, 21, 15, 0, false, true, this.resourcesProvider);
                    universalChartCell = headerCell2;
                    break;
                case 43:
                    universalChartCell = new TextSettingsCell(this.context, this.resourcesProvider);
                    break;
                case 44:
                    universalChartCell = new RadioButtonCell(this.context);
                    break;
            }
        }
        if (shouldApplyBackground(i)) {
            universalChartCell.setBackgroundColor(getThemedColor(i3));
        }
        return new RecyclerListView.Holder(universalChartCell);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        UItem item = getItem(i);
        if (item == null) {
            return 0;
        }
        return item.viewType;
    }

    private boolean hasDivider(int i) {
        UItem item = getItem(i);
        UItem item2 = getItem(i + 1);
        return (item == null || item2 == null || item.hideDivider || (ExteraConfig.getSectionsSeparatedHeaders() && isHeader(item2.viewType)) || isShadow(item2.viewType) != isShadow(item.viewType)) ? false : true;
    }

    public static boolean isShadow(int i) {
        if (i < UItem.factoryViewTypeStartsWith) {
            return i == 7 || i == 8 || i == 38 || i == 31 || i == -4 || i == 28 || i == 2 || i == -2;
        }
        UItem.UItemFactory<?> uItemFactoryFindFactory = UItem.findFactory(i);
        return uItemFactoryFindFactory != null && uItemFactoryFindFactory.getIsShadowValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02ac  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        FrameLayout.LayoutParams layoutParamsCreateFrame;
        SettingItem settingItem;
        View view;
        int i2;
        String publicUsername;
        CharSequence charSequenceConcat;
        String pluralStringSpaced;
        int i3;
        Runnable runnable;
        final UItem item = getItem(i);
        UItem item2 = getItem(i + 1);
        UItem item3 = getItem(i - 1);
        if (item == null) {
            return;
        }
        int itemViewType = viewHolder.getItemViewType();
        boolean zHasDivider = hasDivider(i);
        updateColors(viewHolder, item);
        Drawable drawableMutate = null;
        if (itemViewType >= UItem.factoryViewTypeStartsWith) {
            UItem.UItemFactory<?> uItemFactoryFindFactory = UItem.findFactory(itemViewType);
            if (uItemFactoryFindFactory != null) {
                View view2 = viewHolder.itemView;
                RecyclerListView recyclerListView = this.listView;
                uItemFactoryFindFactory.bindView(view2, item, zHasDivider, this, recyclerListView instanceof UniversalRecyclerView ? (UniversalRecyclerView) recyclerListView : null);
            }
        } else {
            String userName = _UrlKt.FRAGMENT_ENCODE_SET;
            boolean z = false;
            z = false;
            switch (itemViewType) {
                case DebugInfoConstants.DBG_LINE_BASE /* -4 */:
                case -2:
                case -1:
                    FrameLayout frameLayout = (FrameLayout) viewHolder.itemView;
                    frameLayout.setClipChildren(!item.checked);
                    frameLayout.setClipToPadding(!item.checked);
                    if (frameLayout.getChildCount() != (item.view != null) || frameLayout.getChildAt(0) != item.view) {
                        frameLayout.removeAllViews();
                        View view3 = item.view;
                        if (view3 != null) {
                            if (view3 instanceof EditTextCell) {
                                ((EditTextCell) view3).setDivider(zHasDivider);
                            }
                            AndroidUtilities.removeFromParent(item.view);
                            if (!item.transparent) {
                                item.view.setBackground(null);
                            }
                            if (itemViewType == -1 || itemViewType == -4) {
                                layoutParamsCreateFrame = LayoutHelper.createFrame(-1, item.intValue);
                            } else {
                                layoutParamsCreateFrame = LayoutHelper.createFrame(-2, -2.0f);
                            }
                            frameLayout.addView(item.view, layoutParamsCreateFrame);
                        }
                    }
                    break;
                case -3:
                    FullscreenCustomFrameLayout fullscreenCustomFrameLayout = (FullscreenCustomFrameLayout) viewHolder.itemView;
                    fullscreenCustomFrameLayout.setMinusHeight(item.intValue);
                    fullscreenCustomFrameLayout.setMinusPadding(BitwiseUtils.hasFlag(item.flags, 1));
                    viewHolder.itemView.setTag(C2665R.id.parent_tag, Boolean.valueOf(item.transparent));
                    if (item.transparent) {
                        fullscreenCustomFrameLayout.setBackgroundColor(0);
                    } else {
                        fullscreenCustomFrameLayout.setBackgroundColor(getThemedColor(this.dialog ? Theme.key_dialogBackground : Theme.key_windowBackgroundWhite));
                    }
                    if (fullscreenCustomFrameLayout.getChildCount() != (item.view != null) || fullscreenCustomFrameLayout.getChildAt(0) != item.view) {
                        fullscreenCustomFrameLayout.removeAllViews();
                        View view4 = item.view;
                        if (view4 != null) {
                            AndroidUtilities.removeFromParent(view4);
                            fullscreenCustomFrameLayout.addView(item.view, LayoutHelper.createFrame(-1, -1.0f));
                        }
                    }
                    break;
                case 0:
                case 1:
                case 26:
                    ((HeaderCell) viewHolder.itemView).setText(item.text);
                    ((HeaderCell) viewHolder.itemView).setEnabled(item.enabled, true);
                    break;
                case 2:
                    TopViewCell topViewCell = (TopViewCell) viewHolder.itemView;
                    int i4 = item.iconResId;
                    if (i4 != 0) {
                        if (item.accent) {
                            topViewCell.setEmojiStatic(i4);
                        } else {
                            topViewCell.setEmoji(i4);
                        }
                    } else {
                        int i5 = item.intValue;
                        if (i5 != 0) {
                            topViewCell.setEmojiSize(i5);
                        }
                        topViewCell.setEmoji(item.subtext.toString(), item.textValue.toString());
                    }
                    boolean zIsEmpty = TextUtils.isEmpty(item.animatedText);
                    CharSequence charSequence = item.text;
                    if (zIsEmpty) {
                        topViewCell.setText(charSequence);
                    } else {
                        topViewCell.setText(charSequence, item.animatedText);
                    }
                    break;
                case 3:
                    TextCell textCell = (TextCell) viewHolder.itemView;
                    textCell.reset();
                    Object obj = item.object;
                    if (obj instanceof TLRPC.Document) {
                        textCell.setTextAndSticker(item.text, (TLRPC.Document) obj, zHasDivider);
                    } else if (obj instanceof String) {
                        textCell.setTextAndSticker(item.text, (String) obj, zHasDivider);
                    } else {
                        Object obj2 = item.object2;
                        if (obj2 instanceof Drawable) {
                            Drawable drawableMutate2 = ((Drawable) obj2).mutate();
                            Integer num = item.iconColor;
                            int iIntValue = num != null ? num.intValue() : Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon, this.resourcesProvider);
                            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
                            drawableMutate2.setColorFilter(new PorterDuffColorFilter(iIntValue, mode));
                            Object obj3 = item.object;
                            if (obj3 instanceof Drawable) {
                                drawableMutate = (Drawable) obj3;
                            } else {
                                int i6 = item.iconResId;
                                if (i6 != 0) {
                                    drawableMutate = ContextCompat.getDrawable(this.context, i6).mutate();
                                    drawableMutate.setColorFilter(new PorterDuffColorFilter(iIntValue, mode));
                                }
                            }
                            CharSequence charSequence2 = item.text;
                            if (drawableMutate != null) {
                                textCell.setTextAndIconAndValueDrawable(charSequence2, drawableMutate, drawableMutate2, zHasDivider);
                            } else {
                                textCell.setTextAndValueDrawable(charSequence2, drawableMutate2, zHasDivider);
                            }
                        } else {
                            boolean zIsEmpty2 = TextUtils.isEmpty(item.textValue);
                            Object obj4 = item.object;
                            if (zIsEmpty2) {
                                if (obj4 instanceof Drawable) {
                                    textCell.setTextAndIcon(item.text, (Drawable) obj4, zHasDivider);
                                } else {
                                    int i7 = item.iconResId;
                                    CharSequence charSequence3 = item.text;
                                    if (i7 == 0) {
                                        textCell.setText(charSequence3, zHasDivider);
                                    } else {
                                        textCell.setTextAndIcon(charSequence3, i7, zHasDivider);
                                    }
                                }
                            } else if (obj4 instanceof Drawable) {
                                textCell.setTextAndValueAndIcon(item.text, item.textValue, (Drawable) obj4, zHasDivider);
                            } else {
                                int i8 = item.iconResId;
                                CharSequence charSequence4 = item.text;
                                if (i8 == 0) {
                                    textCell.setTextAndValue(charSequence4, item.textValue, zHasDivider);
                                } else {
                                    textCell.setTextAndValueAndIcon(charSequence4, item.textValue, i8, zHasDivider);
                                }
                            }
                        }
                    }
                    if (item.accent) {
                        int i9 = Theme.key_windowBackgroundWhiteBlueText4;
                        textCell.setColors(i9, i9);
                    } else if (item.red) {
                        textCell.setColors(Theme.key_text_RedBold, Theme.key_text_RedRegular);
                    } else {
                        textCell.setColors(Theme.key_windowBackgroundWhiteGrayIcon, Theme.key_windowBackgroundWhiteBlackText);
                    }
                    Integer num2 = item.iconColor;
                    if (num2 != null) {
                        textCell.setColorfulIcon(num2.intValue(), item.iconColor.intValue(), item.iconResId, false);
                    }
                    int i10 = item.pad;
                    if (i10 > 0) {
                        textCell.setOffsetFromImage(i10);
                    }
                    int i11 = item.intValue;
                    if (i11 > 0 && ((settingItem = item.settingItem) == null || (settingItem instanceof TextSetting))) {
                        textCell.heightDp = i11;
                    }
                    if (!TextUtils.isEmpty(item.subtext)) {
                        textCell.setSubtitle(item.subtext);
                        if (textCell.getImageView() != null) {
                            textCell.getImageView().setTranslationY(AndroidUtilities.dp(2.0f));
                        }
                    }
                    textCell.setPrioritizeTitleOverValue(item.prioritizeTitleOverValue);
                    textCell.setEnabled(item.enabled, true);
                    break;
                case 4:
                case 9:
                    TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                    textCheckCell.reset();
                    if (textCheckCell.itemId == item.id) {
                        textCheckCell.setChecked(item.checked);
                    }
                    boolean zIsEmpty3 = TextUtils.isEmpty(item.textValue);
                    CharSequence charSequence5 = item.text;
                    if (zIsEmpty3) {
                        boolean z2 = item.checked;
                        if (itemViewType == 4 && zHasDivider) {
                            z = true;
                        }
                        textCheckCell.setTextAndCheck(charSequence5, z2, z);
                    } else {
                        textCheckCell.setTextAndValueAndCheck(charSequence5, item.textValue.toString(), item.checked, item.multiline, itemViewType == 4 && zHasDivider);
                        textCheckCell = textCheckCell;
                    }
                    textCheckCell.setEnabled(item.enabled, null);
                    int i12 = item.iconResId;
                    if (i12 != 0) {
                        textCheckCell.setIcon(i12);
                    }
                    int i13 = item.checkBoxIconResId;
                    if (i13 != 0) {
                        textCheckCell.setCheckBoxIcon(i13);
                    }
                    textCheckCell.itemId = item.id;
                    if (itemViewType == 9) {
                        viewHolder.itemView.setBackgroundColor(Theme.getColor(item.checked ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
                    }
                    break;
                case 5:
                case 6:
                    NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) viewHolder.itemView;
                    CharSequence charSequence6 = item.subtext;
                    boolean z3 = charSequence6 != null;
                    int i14 = item.iconResId;
                    CharSequence charSequence7 = item.text;
                    if (i14 != 0) {
                        notificationsCheckCell.setTextAndValueAndIconAndCheck(charSequence7, charSequence6, i14, item.checked, 0, z3, zHasDivider);
                    } else {
                        notificationsCheckCell.setTextAndValueAndCheck(charSequence7, charSequence6, item.checked, 0, z3, zHasDivider);
                    }
                    notificationsCheckCell.setAnimationsEnabled(true);
                    if (itemViewType == 6) {
                        notificationsCheckCell.getImageView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
                    }
                    notificationsCheckCell.setDrawLine(item.drawLine);
                    break;
                case 7:
                case 8:
                case 38:
                    if (itemViewType == 7 || itemViewType == 8) {
                        TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                        if (TextUtils.isEmpty(item.text)) {
                            textInfoPrivacyCell.setFixedSize(itemViewType == 8 ? Opcodes.REM_INT_LIT8 : 12);
                            textInfoPrivacyCell.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                        } else {
                            textInfoPrivacyCell.setFixedSize(0);
                            textInfoPrivacyCell.setText(item.text);
                        }
                        if (item.accent) {
                            textInfoPrivacyCell.setTextGravity(17);
                            textInfoPrivacyCell.getTextView().setWidth(Math.min(HintView2.cutInFancyHalf(textInfoPrivacyCell.getText(), textInfoPrivacyCell.getTextView().getPaint()), AndroidUtilities.displaySize.x - AndroidUtilities.dp(60.0f)));
                            textInfoPrivacyCell.getTextView().setPadding(0, AndroidUtilities.dp(17.0f), 0, AndroidUtilities.dp(17.0f));
                        } else {
                            textInfoPrivacyCell.setTextGravity(PlatformMediaRouter1RouteProvider.ALL_ROUTE_TYPES);
                            textInfoPrivacyCell.getTextView().setMinWidth(0);
                            textInfoPrivacyCell.getTextView().setMaxWidth(AndroidUtilities.displaySize.x);
                            textInfoPrivacyCell.getTextView().setPadding(0, AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(17.0f));
                        }
                        view = textInfoPrivacyCell;
                    } else if (itemViewType == 38) {
                        CollapseTextCell collapseTextCell = (CollapseTextCell) viewHolder.itemView;
                        collapseTextCell.set(item.animatedText, item.collapsed);
                        if (item.accent) {
                            collapseTextCell.setColor(Theme.key_windowBackgroundWhiteBlueText4);
                            view = collapseTextCell;
                        } else if (item.red) {
                            collapseTextCell.setColor(Theme.key_text_RedRegular);
                            view = collapseTextCell;
                        } else {
                            collapseTextCell.setColor(Theme.key_windowBackgroundWhiteBlackText);
                            view = collapseTextCell;
                        }
                    } else {
                        view = null;
                    }
                    boolean z4 = (item3 == null || isShadow(item3.viewType)) ? false : true;
                    boolean z5 = (item2 == null || isShadow(item2.viewType)) ? false : true;
                    if (this.listView.hasSections()) {
                        view.setBackground(null);
                    } else {
                        if (z4 && z5) {
                            i2 = C2665R.drawable.greydivider;
                        } else if (z4) {
                            i2 = C2665R.drawable.greydivider_bottom;
                        } else if (z5) {
                            i2 = C2665R.drawable.greydivider_top;
                        } else {
                            i2 = C2665R.drawable.field_carret_empty;
                        }
                        Drawable themedDrawableByKey = Theme.getThemedDrawableByKey(this.context, i2, Theme.key_windowBackgroundGrayShadow, this.resourcesProvider);
                        if (this.dialog) {
                            view.setBackground(new LayerDrawable(new Drawable[]{new ColorDrawable(getThemedColor(Theme.key_dialogBackgroundGray)), themedDrawableByKey}));
                        } else {
                            view.setBackground(themedDrawableByKey);
                        }
                    }
                    break;
                case 10:
                    DialogRadioCell dialogRadioCell = (DialogRadioCell) viewHolder.itemView;
                    if (dialogRadioCell.itemId == item.id) {
                        dialogRadioCell.setChecked(item.checked, true);
                        dialogRadioCell.setEnabled(item.enabled, true);
                    } else {
                        dialogRadioCell.setEnabled(item.enabled, false);
                    }
                    boolean zIsEmpty4 = TextUtils.isEmpty(item.textValue);
                    CharSequence charSequence8 = item.text;
                    if (zIsEmpty4) {
                        dialogRadioCell.setText(charSequence8, item.checked, zHasDivider);
                    } else {
                        dialogRadioCell.setTextAndValue(charSequence8, item.textValue, item.checked, zHasDivider);
                    }
                    dialogRadioCell.itemId = item.id;
                    break;
                case 11:
                case 12:
                    UserCell userCell = (UserCell) viewHolder.itemView;
                    userCell.setFromUItem(this.currentAccount, item, zHasDivider);
                    if (itemViewType == 12) {
                        userCell.setChecked(item.checked, false);
                    }
                    break;
                case 13:
                    UserCell userCell2 = (UserCell) viewHolder.itemView;
                    userCell2.setFromUItem(this.currentAccount, item, zHasDivider);
                    CharSequence charSequence9 = item.textValue;
                    userCell2.setQuery(charSequence9 != null ? charSequence9.toString().toLowerCase() : null);
                    userCell2.setAddButtonVisible(!item.checked);
                    userCell2.setCloseIcon(item.clickCallback);
                    break;
                case 14:
                    SlideChooseView slideChooseView = (SlideChooseView) viewHolder.itemView;
                    slideChooseView.setOptions(item.intValue, item.texts);
                    slideChooseView.setNeedDivider(zHasDivider);
                    slideChooseView.setMinAllowedIndex((int) item.longValue);
                    slideChooseView.setCallback(new SlideChooseView.Callback() { // from class: org.telegram.ui.Components.UniversalAdapter$$ExternalSyntheticLambda0
                        @Override // org.telegram.ui.Components.SlideChooseView.Callback
                        public final void onOptionSelected(int i15) {
                            UniversalAdapter.$r8$lambda$zkYqYy_dtBSQIc15WzODxdmLimw(item, i15);
                        }
                    });
                    break;
                case 15:
                    SlideIntChooseView slideIntChooseView = (SlideIntChooseView) viewHolder.itemView;
                    slideIntChooseView.set(item.intValue, (SlideIntChooseView.Options) item.object, new Utilities.Callback() { // from class: org.telegram.ui.Components.UniversalAdapter$$ExternalSyntheticLambda1
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj5) {
                            UniversalAdapter.$r8$lambda$oQs2QYu66NvT3BIPP1RyA3k9ryA(item, (Integer) obj5);
                        }
                    });
                    slideIntChooseView.setMinValueAllowed((int) item.longValue);
                    slideIntChooseView.setNeedDivider(zHasDivider);
                    break;
                case 16:
                    QuickRepliesActivity.QuickReplyView quickReplyView = (QuickRepliesActivity.QuickReplyView) viewHolder.itemView;
                    quickReplyView.setChecked(item.checked, false);
                    quickReplyView.setReorder(this.allowReorder);
                    Object obj5 = item.object;
                    if (obj5 instanceof QuickRepliesController.QuickReply) {
                        quickReplyView.set((QuickRepliesController.QuickReply) obj5, null, zHasDivider);
                    }
                    break;
                case 17:
                    QuickRepliesActivity.LargeQuickReplyView largeQuickReplyView = (QuickRepliesActivity.LargeQuickReplyView) viewHolder.itemView;
                    largeQuickReplyView.setChecked(item.checked, false);
                    Object obj6 = item.object;
                    if (obj6 instanceof QuickRepliesController.QuickReply) {
                        largeQuickReplyView.set((QuickRepliesController.QuickReply) obj6, zHasDivider);
                    }
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    ((StatisticActivity.UniversalChartCell) viewHolder.itemView).set(item.intValue, (StatisticActivity.ChartViewData) item.object, new Utilities.Callback0Return() { // from class: org.telegram.ui.Components.UniversalAdapter$$ExternalSyntheticLambda2
                        @Override // org.telegram.messenger.Utilities.Callback0Return
                        public final Object run() {
                            return this.f$0.lambda$onBindViewHolder$3(item);
                        }
                    });
                    break;
                case 24:
                    ((ChannelMonetizationLayout.ProceedOverviewCell) viewHolder.itemView).set((ChannelMonetizationLayout.ProceedOverview) item.object);
                    break;
                case 25:
                    ((ChannelMonetizationLayout.TransactionCell) viewHolder.itemView).set((TL_stats.BroadcastRevenueTransaction) item.object, zHasDivider);
                    break;
                case 27:
                    StoryPrivacyBottomSheet.UserCell userCell3 = (StoryPrivacyBottomSheet.UserCell) viewHolder.itemView;
                    long j = userCell3.dialogId;
                    Object obj7 = item.object;
                    boolean z6 = j == (obj7 instanceof TLRPC.User ? ((TLRPC.User) obj7).id : obj7 instanceof TLRPC.Chat ? -((TLRPC.Chat) obj7).id : 0L);
                    userCell3.setIsSendAs(false, true);
                    userCell3.set(item.object);
                    userCell3.checkBox.setVisibility(8);
                    userCell3.radioButton.setVisibility(0);
                    userCell3.setChecked(item.checked, z6);
                    userCell3.setDivider(zHasDivider);
                    break;
                case 28:
                    if (item.transparent) {
                        viewHolder.itemView.setBackgroundColor(0);
                    } else {
                        int i15 = item.iconResId;
                        if (i15 != 0) {
                            viewHolder.itemView.setBackgroundColor(i15);
                        }
                    }
                    viewHolder.itemView.setId(item.id);
                    ((SpaceView) viewHolder.itemView).setHeight(item.intValue);
                    break;
                case 29:
                    BusinessLinksActivity.BusinessLinkView businessLinkView = (BusinessLinksActivity.BusinessLinkView) viewHolder.itemView;
                    Object obj8 = item.object;
                    if (obj8 instanceof BusinessLinksActivity.BusinessLinkWrapper) {
                        businessLinkView.set((BusinessLinksActivity.BusinessLinkWrapper) obj8, zHasDivider);
                    }
                    break;
                case 30:
                    TextRightIconCell textRightIconCell = (TextRightIconCell) viewHolder.itemView;
                    textRightIconCell.setTextAndIcon(item.text, item.iconResId);
                    textRightIconCell.setDivider(zHasDivider);
                    textRightIconCell.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
                    break;
                case 31:
                    GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                    if (TextUtils.equals(graySectionCell.getText(), item.text)) {
                        graySectionCell.setRightText(item.subtext, true, item.clickCallback);
                    } else {
                        graySectionCell.setText(item.text, item.subtext, item.clickCallback);
                    }
                    break;
                case 32:
                    ProfileSearchCell profileSearchCell = (ProfileSearchCell) viewHolder.itemView;
                    Object obj9 = item.object;
                    if (!item.accent || !(obj9 instanceof TLRPC.User) || (i3 = ((TLRPC.User) obj9).bot_active_users) == 0) {
                        if (!item.withUsername) {
                            charSequenceConcat = _UrlKt.FRAGMENT_ENCODE_SET;
                            if (obj9 instanceof TLRPC.Chat) {
                                TLRPC.Chat chat = (TLRPC.Chat) obj9;
                                if (chat.participants_count != 0) {
                                    if (ChatObject.isChannel(chat) && !chat.megagroup) {
                                        pluralStringSpaced = LocaleController.formatPluralStringSpaced("Subscribers", chat.participants_count);
                                    } else {
                                        pluralStringSpaced = LocaleController.formatPluralStringSpaced("Members", chat.participants_count);
                                    }
                                    charSequenceConcat = !TextUtils.isEmpty(charSequenceConcat) ? TextUtils.concat(charSequenceConcat, ", ", pluralStringSpaced) : pluralStringSpaced;
                                }
                                userName = chat.title;
                            } else if (obj9 instanceof TLRPC.User) {
                                userName = UserObject.getUserName((TLRPC.User) obj9);
                            }
                            String str = userName;
                            boolean z7 = item.locked;
                            Object obj10 = item.object2;
                            profileSearchCell.allowBotOpenButton(z7, obj10 instanceof Utilities.Callback ? (Utilities.Callback) obj10 : null);
                            profileSearchCell.setRectangularAvatar(item.red);
                            CharSequence charSequence10 = item.subtext;
                            profileSearchCell.setData(obj9, null, str, charSequence10 != null ? charSequence10 : charSequenceConcat, false, false);
                            profileSearchCell.setChecked(item.checked, false);
                            profileSearchCell.useSeparator = zHasDivider;
                        } else {
                            if (obj9 instanceof TLRPC.User) {
                                publicUsername = UserObject.getPublicUsername((TLRPC.User) obj9);
                            } else {
                                publicUsername = obj9 instanceof TLRPC.Chat ? ChatObject.getPublicUsername((TLRPC.Chat) obj9) : null;
                            }
                            if (publicUsername != null) {
                                charSequenceConcat = "@".concat(publicUsername);
                            }
                            if (obj9 instanceof TLRPC.Chat) {
                            }
                            String str2 = userName;
                            boolean z72 = item.locked;
                            Object obj102 = item.object2;
                            profileSearchCell.allowBotOpenButton(z72, obj102 instanceof Utilities.Callback ? (Utilities.Callback) obj102 : null);
                            profileSearchCell.setRectangularAvatar(item.red);
                            CharSequence charSequence102 = item.subtext;
                            profileSearchCell.setData(obj9, null, str2, charSequence102 != null ? charSequence102 : charSequenceConcat, false, false);
                            profileSearchCell.setChecked(item.checked, false);
                            profileSearchCell.useSeparator = zHasDivider;
                        }
                    } else {
                        if (i3 != 0) {
                            charSequenceConcat = LocaleController.formatPluralStringSpaced("BotUsers", i3);
                        }
                        if (obj9 instanceof TLRPC.Chat) {
                        }
                        String str22 = userName;
                        boolean z722 = item.locked;
                        Object obj1022 = item.object2;
                        profileSearchCell.allowBotOpenButton(z722, obj1022 instanceof Utilities.Callback ? (Utilities.Callback) obj1022 : null);
                        profileSearchCell.setRectangularAvatar(item.red);
                        CharSequence charSequence1022 = item.subtext;
                        profileSearchCell.setData(obj9, null, str22, charSequence1022 != null ? charSequence1022 : charSequenceConcat, false, false);
                        profileSearchCell.setChecked(item.checked, false);
                        profileSearchCell.useSeparator = zHasDivider;
                    }
                    break;
                case 33:
                    DialogCell dialogCell = (DialogCell) viewHolder.itemView;
                    Object obj11 = item.object;
                    MessageObject messageObject = obj11 instanceof MessageObject ? (MessageObject) obj11 : null;
                    dialogCell.useSeparator = zHasDivider;
                    if (messageObject == null) {
                        dialogCell.setDialog(0L, null, 0, false, false);
                    } else {
                        dialogCell.setDialog(messageObject.getDialogId(), messageObject, messageObject.messageOwner.date, false, false);
                    }
                    break;
                case 34:
                    ((FlickerLoadingView) viewHolder.itemView).setViewType(item.intValue);
                    break;
                case 35:
                case 36:
                case 41:
                    CheckBoxCell checkBoxCell = (CheckBoxCell) viewHolder.itemView;
                    checkBoxCell.reset();
                    checkBoxCell.setPad(item.pad);
                    checkBoxCell.setText(item.text, _UrlKt.FRAGMENT_ENCODE_SET, checkBoxCell.itemId == item.id && checkBoxCell.getAnimatedTextView().getText() != _UrlKt.FRAGMENT_ENCODE_SET);
                    checkBoxCell.setChecked(item.checked, checkBoxCell.itemId == item.id);
                    checkBoxCell.setNeedDivider(zHasDivider);
                    checkBoxCell.itemId = item.id;
                    checkBoxCell.setIcon(item.locked ? C2665R.drawable.permission_locked : 0);
                    if (itemViewType == 36 || itemViewType == 41) {
                        checkBoxCell.setCollapseButton(item.collapsed, item.animatedText, item.clickCallback);
                    }
                    break;
                case 37:
                    CheckBoxCell checkBoxCell2 = (CheckBoxCell) viewHolder.itemView;
                    checkBoxCell2.setPad(item.pad);
                    checkBoxCell2.setUserOrChat((TLObject) item.object, checkBoxCell2.itemId == item.id);
                    checkBoxCell2.setChecked(item.checked, checkBoxCell2.itemId == item.id);
                    checkBoxCell2.itemId = item.id;
                    checkBoxCell2.setNeedDivider(zHasDivider);
                    break;
                case 39:
                case 40:
                    final TextCheckCell2 textCheckCell2 = (TextCheckCell2) viewHolder.itemView;
                    textCheckCell2.reset();
                    textCheckCell2.setTextAndCheck(item.text, item.checked, zHasDivider, textCheckCell2.id == item.id);
                    textCheckCell2.getCheckBox().setDrawIconType(item.intValue);
                    Switch checkBox = textCheckCell2.getCheckBox();
                    int i16 = item.intValue == 0 ? Theme.key_switchTrack : Theme.key_fill_RedNormal;
                    int i17 = Theme.key_switchTrackChecked;
                    int i18 = Theme.key_windowBackgroundWhite;
                    checkBox.setColors(i16, i17, i18, i18);
                    textCheckCell2.id = item.id;
                    textCheckCell2.setIcon(item.locked ? C2665R.drawable.permission_locked : 0);
                    if (itemViewType == 40) {
                        if (TextUtils.isEmpty(item.animatedText)) {
                            textCheckCell2.hideCollapseArrow();
                        } else {
                            String string = item.animatedText.toString();
                            boolean z8 = item.collapsed;
                            if (item.exteraExpandableSwitch) {
                                runnable = new Runnable() { // from class: org.telegram.ui.Components.UniversalAdapter$$ExternalSyntheticLambda3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        item.switchClickCallback.onClick(textCheckCell2);
                                    }
                                };
                            } else {
                                runnable = new Runnable() { // from class: org.telegram.ui.Components.UniversalAdapter$$ExternalSyntheticLambda4
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        item.clickCallback.onClick(textCheckCell2);
                                    }
                                };
                            }
                            textCheckCell2.setCollapseArrow(string, z8, runnable);
                            textCheckCell2.getCollapseContainer().setVisibility(0);
                            if (item.exteraExpandableSwitch) {
                                textCheckCell2.getCheckBox().setColors(Theme.key_switchTrack, i17, i18, i18);
                                textCheckCell2.getCheckBox().setDrawIconType(0);
                            }
                        }
                    }
                    break;
                case 42:
                    HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                    headerCell.setText(item.animatedText, headerCell.id == item.id);
                    headerCell.id = item.id;
                    break;
                case 43:
                    TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                    textSettingsCell.getValueBackupImageView().setImageDrawable(null);
                    textSettingsCell.getValueBackupImageView().setAnimatedEmojiDrawable(null);
                    CharSequence charSequence11 = item.text;
                    if (charSequence11 != null) {
                        CharSequence charSequence12 = item.subtext;
                        if (charSequence12 != null) {
                            textSettingsCell.setTextAndValue(charSequence11, charSequence12, zHasDivider);
                        } else {
                            textSettingsCell.setText(charSequence11, zHasDivider);
                        }
                    }
                    textSettingsCell.setIcon(item.iconResId);
                    break;
                case 44:
                    RadioButtonCell radioButtonCell = (RadioButtonCell) viewHolder.itemView;
                    if (radioButtonCell.itemId == item.id) {
                        radioButtonCell.setChecked(item.checked, true);
                    }
                    radioButtonCell.setEnabled(item.enabled);
                    radioButtonCell.setTextAndValue(item.text, item.textValue, zHasDivider, item.checked);
                    radioButtonCell.itemId = item.id;
                    break;
            }
        }
        Utilities.Callback<View> callback = item.bind;
        if (callback != null) {
            callback.run(viewHolder.itemView);
        }
    }

    public static /* synthetic */ void $r8$lambda$zkYqYy_dtBSQIc15WzODxdmLimw(UItem uItem, int i) {
        Utilities.Callback<Integer> callback = uItem.intCallback;
        if (callback != null) {
            callback.run(Integer.valueOf(i));
        }
    }

    public static /* synthetic */ void $r8$lambda$oQs2QYu66NvT3BIPP1RyA3k9ryA(UItem uItem, Integer num) {
        uItem.intValue = num.intValue();
        Utilities.Callback<Integer> callback = uItem.intCallback;
        if (callback != null) {
            callback.run(num);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StatisticActivity.BaseChartCell lambda$onBindViewHolder$3(UItem uItem) {
        View viewFindViewByItemObject = findViewByItemObject(uItem.object);
        if (viewFindViewByItemObject instanceof StatisticActivity.UniversalChartCell) {
            return (StatisticActivity.UniversalChartCell) viewFindViewByItemObject;
        }
        return null;
    }

    private View findViewByItemObject(Object obj) {
        int i = 0;
        while (true) {
            if (i >= getItemCount()) {
                i = -1;
                break;
            }
            UItem item = getItem(i);
            if (item != null && item.object == obj) {
                break;
            }
            i++;
        }
        if (i == -1) {
            return null;
        }
        for (int i2 = 0; i2 < this.listView.getChildCount(); i2++) {
            View childAt = this.listView.getChildAt(i2);
            int childAdapterPosition = this.listView.getChildAdapterPosition(childAt);
            if (childAdapterPosition != -1 && childAdapterPosition == i) {
                return childAt;
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        updateReorder(viewHolder, this.allowReorder);
        updateColors(viewHolder, getItem(viewHolder.getAdapterPosition()));
    }

    private void updateColors(RecyclerView.ViewHolder viewHolder, UItem uItem) {
        KeyEvent.Callback callback = viewHolder.itemView;
        if (callback instanceof Theme.Colorable) {
            ((Theme.Colorable) callback).updateColors();
        }
        if (shouldApplyBackground(viewHolder.getItemViewType())) {
            if (uItem != null && uItem.transparent) {
                viewHolder.itemView.setBackground(null);
            } else {
                viewHolder.itemView.setBackgroundColor(getThemedColor(this.dialog ? Theme.key_dialogBackground : Theme.key_windowBackgroundWhite));
            }
        }
    }

    public void updateReorder(RecyclerView.ViewHolder viewHolder, boolean z) {
        if (viewHolder == null) {
            return;
        }
        int itemViewType = viewHolder.getItemViewType();
        if (itemViewType < UItem.factoryViewTypeStartsWith) {
            if (itemViewType != 16) {
                return;
            }
            ((QuickRepliesActivity.QuickReplyView) viewHolder.itemView).setReorder(z);
        } else {
            UItem.UItemFactory<?> uItemFactoryFindFactory = UItem.findFactory(itemViewType);
            if (uItemFactoryFindFactory != null) {
                uItemFactoryFindFactory.attachedView(this.listView, viewHolder.itemView, getItem(viewHolder.getAdapterPosition()));
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.items.size();
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        int itemViewType = viewHolder.getItemViewType();
        UItem item = getItem(viewHolder.getAdapterPosition());
        if (itemViewType >= UItem.factoryViewTypeStartsWith) {
            UItem.UItemFactory<?> uItemFactoryFindFactory = UItem.findFactory(itemViewType);
            if (uItemFactoryFindFactory == null || !uItemFactoryFindFactory.getIsClickableValue()) {
                return false;
            }
        } else if (itemViewType != 3 && itemViewType != 5 && itemViewType != 6 && itemViewType != 30 && itemViewType != 4 && itemViewType != 10 && itemViewType != 44 && itemViewType != 11 && itemViewType != 12 && itemViewType != 17 && itemViewType != 16 && itemViewType != 29 && itemViewType != 25 && itemViewType != 27 && itemViewType != 32 && itemViewType != 33 && itemViewType != 35 && itemViewType != 36 && itemViewType != 37 && itemViewType != 41 && itemViewType != 39 && itemViewType != 40 && itemViewType != 38) {
            return false;
        }
        return item == null || item.enabled;
    }

    public UItem getItem(int i) {
        if (i < 0 || i >= this.items.size()) {
            return null;
        }
        return this.items.get(i);
    }

    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class FullscreenCustomFrameLayout extends FrameLayout {
        private int minusHeight;
        private boolean minusPadding;

        public FullscreenCustomFrameLayout(Context context) {
            super(context);
            this.minusHeight = 0;
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int paddingTop = this.minusHeight;
            View view = getParent() instanceof View ? (View) getParent() : null;
            if (this.minusPadding && view != null) {
                paddingTop = paddingTop + view.getPaddingTop() + view.getPaddingBottom();
            }
            if (view != null && view.getMeasuredHeight() > 0) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight() - paddingTop, TLObject.FLAG_30));
                return;
            }
            if (View.MeasureSpec.getMode(i2) != 0) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2) - paddingTop, TLObject.FLAG_30));
                return;
            }
            int size = View.MeasureSpec.getSize(i2);
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30);
            measureChildren(iMakeMeasureSpec, i2);
            int iMin = 0;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                iMin = Math.max(iMin, getChildAt(i3).getMeasuredHeight());
            }
            if (size > 0) {
                iMin = Math.min(iMin, size - paddingTop);
            }
            super.onMeasure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(iMin, TLObject.FLAG_30));
        }

        public void setMinusHeight(int i) {
            this.minusHeight = i;
        }

        public void setMinusPadding(boolean z) {
            this.minusPadding = z;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class SpaceView extends View {
        private int height;

        public SpaceView(Context context) {
            super(context);
            setTag(-33024);
        }

        public void setHeight(int i) {
            if (this.height == i) {
                return;
            }
            this.height = i;
            requestLayout();
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(this.height, TLObject.FLAG_30));
        }
    }
}
