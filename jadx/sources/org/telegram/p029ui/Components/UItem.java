package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.view.KeyEvent;
import android.view.View;
import com.exteragram.messenger.plugins.models.SettingItem;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.components.CustomPreferenceCell;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Business.BusinessLinksActivity;
import org.telegram.p029ui.Business.QuickRepliesController;
import org.telegram.p029ui.Cells.SlideIntChooseView;
import org.telegram.p029ui.ChannelMonetizationLayout;
import org.telegram.p029ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p029ui.StatisticActivity;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class UItem extends AdapterWithDiffUtils.Item {
    private static LongSparseArray factories = null;
    private static HashMap factoryInstances = null;
    private static int factoryViewType = 10000;
    public static int factoryViewTypeStartsWith = 10000;
    public boolean accent;
    public CharSequence animatedText;
    public Utilities.Callback bind;
    public String chatType;
    public int checkBoxIconResId;
    public boolean checked;
    public View.OnClickListener clickCallback;
    public View.OnClickListener clickCallback2;
    public boolean collapsed;
    public long dialogId;
    public boolean drawLine;
    public Drawable drawable;
    public boolean enabled;
    public boolean exteraExpandableSwitch;
    public int flags;
    public float floatValue;
    public boolean hideDivider;
    public Integer iconColor;
    public int iconResId;

    /* JADX INFO: renamed from: id */
    public int f2105id;
    public boolean include;
    public Utilities.Callback intCallback;
    public int intValue;
    public boolean locked;
    public long longValue;
    public boolean multiline;
    public Object object;
    public Object object2;
    public int pad;
    public int parentSpanCount;
    public boolean prioritizeTitleOverValue;
    public boolean red;
    public boolean reordering;
    public SettingItem settingItem;
    public int spanCount;
    public CharSequence subtext;
    public View.OnClickListener switchClickCallback;
    public CharSequence text;
    public CharSequence textValue;
    public String[] texts;
    public boolean transparent;
    public View view;
    public boolean withUsername;

    public UItem(int i, boolean z) {
        super(i, z);
        this.enabled = true;
        this.spanCount = -1;
        this.drawLine = true;
        this.withUsername = true;
    }

    public static UItem asCustom(int i, View view) {
        UItem uItem = new UItem(-1, false);
        uItem.f2105id = i;
        uItem.view = view;
        uItem.intValue = -1;
        return uItem;
    }

    public static UItem asCustom(View view) {
        UItem uItem = new UItem(-1, false);
        uItem.view = view;
        uItem.intValue = -1;
        return uItem;
    }

    public static UItem asCustomShadow(View view) {
        UItem uItem = new UItem(-4, false);
        uItem.view = view;
        uItem.intValue = -1;
        return uItem;
    }

    public static UItem asCustomShadow(View view, int i) {
        UItem uItem = new UItem(-4, false);
        uItem.view = view;
        uItem.intValue = i;
        return uItem;
    }

    public static UItem asFullyCustom(View view) {
        UItem uItem = new UItem(-2, false);
        uItem.view = view;
        return uItem;
    }

    public static UItem asFullscreenCustom(View view, int i) {
        return asFullscreenCustom(view, i, false);
    }

    public static UItem asFullscreenCustom(View view, int i, boolean z) {
        UItem uItem = new UItem(-3, false);
        uItem.view = view;
        uItem.intValue = i;
        uItem.flags = z ? 1 : 0;
        return uItem;
    }

    public static UItem asHeader(CharSequence charSequence) {
        UItem uItem = new UItem(0, false);
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asHeader(int i, CharSequence charSequence) {
        UItem uItem = new UItem(0, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asAnimatedHeader(int i, CharSequence charSequence) {
        UItem uItem = new UItem(42, false);
        uItem.f2105id = i;
        uItem.animatedText = charSequence;
        return uItem;
    }

    public static UItem asBlackHeader(CharSequence charSequence) {
        UItem uItem = new UItem(1, false);
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asTopView(CharSequence charSequence, String str, String str2) {
        UItem uItem = new UItem(2, false);
        uItem.text = charSequence;
        uItem.subtext = str;
        uItem.textValue = str2;
        return uItem;
    }

    public static UItem asTopView(CharSequence charSequence, int i) {
        UItem uItem = new UItem(2, false);
        uItem.text = charSequence;
        uItem.iconResId = i;
        return uItem;
    }

    public static UItem asButton(int i, CharSequence charSequence) {
        UItem uItem = new UItem(3, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asButton(int i, int i2, CharSequence charSequence) {
        UItem uItem = new UItem(3, false);
        uItem.f2105id = i;
        uItem.iconResId = i2;
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asButton(int i, Drawable drawable, CharSequence charSequence) {
        UItem uItem = new UItem(3, false);
        uItem.f2105id = i;
        uItem.object = drawable;
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asButton(int i, CharSequence charSequence, CharSequence charSequence2) {
        UItem uItem = new UItem(3, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        uItem.textValue = charSequence2;
        return uItem;
    }

    public static UItem asButton(int i, int i2, CharSequence charSequence, CharSequence charSequence2) {
        UItem uItem = new UItem(3, false);
        uItem.f2105id = i;
        uItem.iconResId = i2;
        uItem.text = charSequence;
        uItem.textValue = charSequence2;
        return uItem;
    }

    public static UItem asButtonWithSubtext(int i, int i2, CharSequence charSequence, CharSequence charSequence2, int i3, int i4) {
        UItem uItem = new UItem(3, false);
        uItem.f2105id = i;
        uItem.iconResId = i2;
        uItem.text = charSequence;
        uItem.subtext = charSequence2;
        uItem.pad = i3;
        uItem.intValue = i4;
        return uItem;
    }

    public static UItem asStickerButton(int i, CharSequence charSequence, TLRPC.Document document) {
        UItem uItem = new UItem(3, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        uItem.object = document;
        return uItem;
    }

    public static UItem asStickerButton(int i, CharSequence charSequence, String str) {
        UItem uItem = new UItem(3, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        uItem.object = str;
        return uItem;
    }

    public static UItem asRippleCheck(int i, CharSequence charSequence) {
        UItem uItem = new UItem(9, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asCheck(int i, CharSequence charSequence) {
        UItem uItem = new UItem(4, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asCheck(int i, CharSequence charSequence, int i2) {
        UItem uItem = new UItem(4, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        uItem.iconResId = i2;
        return uItem;
    }

    public static UItem asCheck(int i, CharSequence charSequence, CharSequence charSequence2, boolean z) {
        UItem uItem = new UItem(4, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        uItem.textValue = charSequence2;
        uItem.multiline = z;
        return uItem;
    }

    public static UItem asRadio(int i, CharSequence charSequence) {
        UItem uItem = new UItem(10, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asRadio(int i, CharSequence charSequence, CharSequence charSequence2) {
        UItem uItem = new UItem(10, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        uItem.textValue = charSequence2;
        return uItem;
    }

    public static UItem asRadioButton(int i, CharSequence charSequence, CharSequence charSequence2) {
        UItem uItem = new UItem(101, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        uItem.textValue = charSequence2;
        return uItem;
    }

    public static UItem asButtonCheck(int i, CharSequence charSequence, CharSequence charSequence2) {
        UItem uItem = new UItem(5, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        uItem.subtext = charSequence2;
        return uItem;
    }

    public static UItem asShadow() {
        return new UItem(7, false);
    }

    public static UItem asShadow(CharSequence charSequence) {
        UItem uItem = new UItem(7, false);
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asLargeShadow(CharSequence charSequence) {
        UItem uItem = new UItem(8, false);
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asCenterShadow(CharSequence charSequence) {
        UItem uItem = new UItem(7, false);
        uItem.text = charSequence;
        uItem.accent = true;
        return uItem;
    }

    public static UItem asProceedOverview(ChannelMonetizationLayout.ProceedOverview proceedOverview) {
        UItem uItem = new UItem(24, false);
        uItem.object = proceedOverview;
        return uItem;
    }

    public static UItem asShadow(int i, CharSequence charSequence) {
        UItem uItem = new UItem(7, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asFilterChat(boolean z, long j) {
        UItem uItem = new UItem(11, false);
        uItem.include = z;
        uItem.dialogId = j;
        return uItem;
    }

    public static UItem asFilterChat(boolean z, CharSequence charSequence, String str, int i) {
        UItem uItem = new UItem(11, false);
        uItem.include = z;
        uItem.text = charSequence;
        uItem.chatType = str;
        uItem.flags = i;
        return uItem;
    }

    public static UItem asAddChat(Long l) {
        UItem uItem = new UItem(13, false);
        uItem.dialogId = l.longValue();
        return uItem;
    }

    public static UItem asSlideView(String[] strArr, int i, Utilities.Callback callback) {
        UItem uItem = new UItem(14, false);
        uItem.texts = strArr;
        uItem.intValue = i;
        uItem.intCallback = callback;
        uItem.longValue = -1L;
        return uItem;
    }

    public static UItem asSlideView(int i, String[] strArr, int i2, Utilities.Callback callback) {
        UItem uItem = new UItem(14, false);
        uItem.f2105id = i;
        uItem.texts = strArr;
        uItem.intValue = i2;
        uItem.intCallback = callback;
        uItem.longValue = -1L;
        return uItem;
    }

    public static UItem asIntSlideView(int i, int i2, int i3, int i4, Utilities.CallbackReturn callbackReturn, Utilities.Callback callback) {
        UItem uItem = new UItem(15, false);
        uItem.intValue = i3;
        uItem.intCallback = callback;
        uItem.object = SlideIntChooseView.Options.make(i, i2, i4, callbackReturn);
        uItem.longValue = -1L;
        return uItem;
    }

    public UItem setMinSliderValue(int i) {
        this.longValue = i;
        return this;
    }

    public static UItem asQuickReply(QuickRepliesController.QuickReply quickReply) {
        UItem uItem = new UItem(16, false);
        uItem.object = quickReply;
        return uItem;
    }

    public static UItem asLargeQuickReply(QuickRepliesController.QuickReply quickReply) {
        UItem uItem = new UItem(17, false);
        uItem.object = quickReply;
        return uItem;
    }

    public static UItem asBusinessChatLink(BusinessLinksActivity.BusinessLinkWrapper businessLinkWrapper) {
        UItem uItem = new UItem(29, false);
        uItem.object = businessLinkWrapper;
        return uItem;
    }

    public static UItem asChart(int i, int i2, StatisticActivity.ChartViewData chartViewData) {
        UItem uItem = new UItem(i + 18, false);
        uItem.intValue = i2;
        uItem.object = chartViewData;
        return uItem;
    }

    public static UItem asSpace(int i) {
        UItem uItem = new UItem(28, false);
        uItem.intValue = i;
        return uItem;
    }

    public static UItem asSpace(int i, int i2) {
        UItem uItem = new UItem(28, false);
        uItem.f2105id = i;
        uItem.intValue = i2;
        return uItem;
    }

    public static UItem asRoundCheckbox(int i, CharSequence charSequence) {
        UItem uItem = new UItem(35, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asRoundGroupCheckbox(int i, CharSequence charSequence, CharSequence charSequence2) {
        UItem uItem = new UItem(41, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        uItem.animatedText = charSequence2;
        return uItem;
    }

    public static UItem asUserGroupCheckbox(int i, CharSequence charSequence, CharSequence charSequence2) {
        UItem uItem = new UItem(36, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        uItem.animatedText = charSequence2;
        return uItem;
    }

    public static UItem asUserCheckbox(int i, TLObject tLObject) {
        UItem uItem = new UItem(37, false);
        uItem.f2105id = i;
        uItem.object = tLObject;
        return uItem;
    }

    public static UItem asShadowCollapseButton(int i, CharSequence charSequence) {
        UItem uItem = new UItem(38, false);
        uItem.f2105id = i;
        uItem.animatedText = charSequence;
        return uItem;
    }

    public static UItem asSwitch(int i, CharSequence charSequence) {
        UItem uItem = new UItem(39, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asExpandableSwitch(int i, CharSequence charSequence, CharSequence charSequence2) {
        UItem uItem = new UItem(40, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        uItem.animatedText = charSequence2;
        return uItem;
    }

    public static UItem asExteraExpandableSwitch(int i, CharSequence charSequence, CharSequence charSequence2, View.OnClickListener onClickListener) {
        UItem uItem = new UItem(40, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        uItem.animatedText = charSequence2;
        uItem.exteraExpandableSwitch = true;
        uItem.switchClickCallback = onClickListener;
        return uItem;
    }

    public static UItem asGraySection(CharSequence charSequence) {
        UItem uItem = new UItem(31, false);
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asGraySection(CharSequence charSequence, CharSequence charSequence2, View.OnClickListener onClickListener) {
        UItem uItem = new UItem(31, false);
        uItem.text = charSequence;
        uItem.subtext = charSequence2;
        uItem.clickCallback = onClickListener;
        return uItem;
    }

    public static UItem asProfileCell(TLObject tLObject) {
        UItem uItem = new UItem(32, false);
        uItem.object = tLObject;
        return uItem;
    }

    public UItem withOpenButton(Utilities.Callback callback) {
        this.locked = true;
        this.object2 = callback;
        return this;
    }

    public static UItem asSearchMessage(MessageObject messageObject) {
        UItem uItem = new UItem(33, false);
        uItem.object = messageObject;
        return uItem;
    }

    public static UItem asSearchMessage(int i, MessageObject messageObject) {
        UItem uItem = new UItem(33, false);
        uItem.f2105id = i;
        uItem.object = messageObject;
        return uItem;
    }

    public static UItem asFlicker(int i) {
        UItem uItem = new UItem(34, false);
        uItem.intValue = i;
        return uItem;
    }

    public static UItem asFlicker(int i, int i2) {
        UItem uItem = new UItem(34, false);
        uItem.f2105id = i;
        uItem.intValue = i2;
        return uItem;
    }

    public static UItem asSettingsCell(int i, int i2, CharSequence charSequence) {
        UItem uItem = new UItem(43, false);
        uItem.f2105id = i;
        uItem.iconResId = i2;
        uItem.text = charSequence;
        return uItem;
    }

    public static UItem asSettingsCell(int i, CharSequence charSequence, CharSequence charSequence2) {
        UItem uItem = new UItem(43, false);
        uItem.f2105id = i;
        uItem.text = charSequence;
        uItem.subtext = charSequence2;
        return uItem;
    }

    public static UItem asSettingsCell(int i, int i2, CharSequence charSequence, CharSequence charSequence2) {
        UItem uItem = new UItem(43, false);
        uItem.f2105id = i;
        uItem.iconResId = i2;
        uItem.text = charSequence;
        uItem.subtext = charSequence2;
        return uItem;
    }

    public UItem withUsername(boolean z) {
        this.withUsername = z;
        return this;
    }

    public UItem setCloseIcon(View.OnClickListener onClickListener) {
        this.clickCallback = onClickListener;
        return this;
    }

    public UItem setClickCallback(View.OnClickListener onClickListener) {
        this.clickCallback = onClickListener;
        return this;
    }

    public UItem setClickCallback2(View.OnClickListener onClickListener) {
        this.clickCallback2 = onClickListener;
        return this;
    }

    public UItem setChecked(boolean z) {
        this.checked = z;
        if (this.viewType == 11) {
            this.viewType = 12;
        }
        return this;
    }

    public UItem setCollapsed(boolean z) {
        this.collapsed = z;
        return this;
    }

    public UItem setPad(int i) {
        this.pad = i;
        return this;
    }

    public UItem pad() {
        this.pad = 1;
        return this;
    }

    public UItem setEnabled(boolean z) {
        this.enabled = z;
        return this;
    }

    public UItem setLocked(boolean z) {
        this.locked = z;
        return this;
    }

    public UItem red() {
        this.red = true;
        return this;
    }

    public UItem accent() {
        this.accent = true;
        return this;
    }

    public UItem setSpanCount(int i) {
        this.spanCount = i;
        return this;
    }

    public UItem setReordering(boolean z) {
        this.reordering = z;
        return this;
    }

    public UItem setTransparent(boolean z) {
        this.transparent = z;
        return this;
    }

    public UItem setCheckBoxIcon(int i) {
        this.checkBoxIconResId = i;
        return this;
    }

    public UItem showDivider(boolean z) {
        this.hideDivider = !z;
        return this;
    }

    public UItem setSearchable(BasePreferencesActivity basePreferencesActivity) {
        if (SettingsRegistry.isValidForSearch(this)) {
            SettingsRegistry.getInstance().addSearchEntry(basePreferencesActivity, this);
        }
        return this;
    }

    public UItem setLinkAlias(String str, BasePreferencesActivity basePreferencesActivity) {
        if (SettingsRegistry.isValidForLinkAliases(this)) {
            SettingsRegistry.getInstance().addLinkAliasForOption(str, basePreferencesActivity, this);
        }
        return this;
    }

    public UItem setValue(CharSequence charSequence) {
        this.textValue = charSequence;
        return this;
    }

    public UItem setMultiline(boolean z) {
        this.multiline = z;
        return this;
    }

    public UItem setIcon(int i) {
        this.iconResId = i;
        return this;
    }

    public UItem setColorfulIcon(int i, int i2) {
        setIcon(i);
        this.iconColor = Integer.valueOf(i2);
        return this;
    }

    public UItem prioritizeTitleOverValue(boolean z) {
        this.prioritizeTitleOverValue = z;
        return this;
    }

    public UItem onBind(Utilities.Callback callback) {
        this.bind = callback;
        return this;
    }

    public boolean instanceOf(Class cls) {
        HashMap map;
        UItemFactory uItemFactory;
        return this.viewType >= factoryViewTypeStartsWith && (map = factoryInstances) != null && (uItemFactory = (UItemFactory) map.get(cls)) != null && uItemFactory.viewType == this.viewType;
    }

    public boolean equals(Object obj) {
        UItemFactory uItemFactoryFindFactory;
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            UItem uItem = (UItem) obj;
            int i = this.viewType;
            if (i != uItem.viewType) {
                return false;
            }
            if (i != 36 && i != 35 && i != 4) {
                if (i == 28) {
                    return this.f2105id == uItem.f2105id;
                }
                KeyEvent.Callback callback = uItem.view;
                if (callback instanceof CustomPreferenceCell) {
                    return ((CustomPreferenceCell) callback).equals(this.view);
                }
                if (i == 31) {
                    return TextUtils.equals(this.text, uItem.text);
                }
                if (i >= factoryViewTypeStartsWith && (uItemFactoryFindFactory = findFactory(i)) != null) {
                    return uItemFactoryFindFactory.equals(this, uItem);
                }
                return itemEquals(uItem);
            }
            if (this.f2105id == uItem.f2105id) {
                return true;
            }
        }
        return false;
    }

    @Override // org.telegram.ui.Components.ListView.AdapterWithDiffUtils.Item
    protected boolean contentsEquals(AdapterWithDiffUtils.Item item) {
        UItemFactory uItemFactoryFindFactory;
        if (this == item) {
            return true;
        }
        if (item != null && getClass() == item.getClass()) {
            UItem uItem = (UItem) item;
            int i = this.viewType;
            if (i != uItem.viewType) {
                return false;
            }
            if (i == 31) {
                return TextUtils.equals(this.text, uItem.text) && TextUtils.equals(this.subtext, uItem.subtext);
            }
            if (i == 28) {
                return this.intValue == uItem.intValue;
            }
            if (i == 35 || i == 37) {
                if (this.f2105id == uItem.f2105id && TextUtils.equals(this.text, uItem.text) && this.checked == uItem.checked) {
                    return true;
                }
            } else {
                if (i >= factoryViewTypeStartsWith && (uItemFactoryFindFactory = findFactory(i)) != null) {
                    return uItemFactoryFindFactory.contentsEquals(this, uItem);
                }
                return itemContentEquals(uItem);
            }
        }
        return false;
    }

    public boolean itemEquals(UItem uItem) {
        return this.f2105id == uItem.f2105id && this.pad == uItem.pad && this.dialogId == uItem.dialogId && this.iconResId == uItem.iconResId && this.hideDivider == uItem.hideDivider && this.transparent == uItem.transparent && this.red == uItem.red && this.locked == uItem.locked && this.accent == uItem.accent && this.view == uItem.view && TextUtils.equals(this.text, uItem.text) && TextUtils.equals(this.subtext, uItem.subtext) && TextUtils.equals(this.textValue, uItem.textValue) && this.view == uItem.view && this.intValue == uItem.intValue && Math.abs(this.floatValue - uItem.floatValue) < 0.01f && this.longValue == uItem.longValue && this.drawable == uItem.drawable && Objects.equals(this.object, uItem.object) && Objects.equals(this.object2, uItem.object2);
    }

    public boolean itemContentEquals(UItem uItem) {
        return super.contentsEquals(uItem);
    }

    public static abstract class UItemFactory {
        private ArrayList<View> cache;
        public final int viewType;

        public void attachedView(RecyclerListView recyclerListView, View view, UItem uItem) {
        }

        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
        }

        public View createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            return null;
        }

        public boolean isClickable() {
            return true;
        }

        public boolean isShadow() {
            return false;
        }

        public static void setup(UItemFactory uItemFactory) {
            if (UItem.factoryInstances == null) {
                UItem.factoryInstances = new HashMap();
            }
            if (UItem.factories == null) {
                UItem.factories = new LongSparseArray();
            }
            Class<?> cls = uItemFactory.getClass();
            if (UItem.factoryInstances.containsKey(cls)) {
                return;
            }
            UItem.factoryInstances.put(cls, uItemFactory);
            UItem.factories.put(uItemFactory.viewType, uItemFactory);
        }

        public UItemFactory() {
            int i = UItem.factoryViewType;
            UItem.factoryViewType = i + 1;
            this.viewType = i;
        }

        public void precache(BaseFragment baseFragment, int i) {
            precache(baseFragment.getContext(), baseFragment.getCurrentAccount(), baseFragment.getClassGuid(), baseFragment.getResourceProvider(), i);
        }

        public void precache(Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider, int i3) {
            if (context == null) {
                return;
            }
            if (this.cache == null) {
                this.cache = new ArrayList<>();
            }
            int i4 = 0;
            while (i4 < this.cache.size() - i3) {
                Context context2 = context;
                this.cache.add(createView(context2, null, i, i2, resourcesProvider));
                i4++;
                context = context2;
            }
        }

        protected View getCached() {
            ArrayList<View> arrayList = this.cache;
            if (arrayList == null || arrayList.isEmpty()) {
                return null;
            }
            return this.cache.remove(0);
        }

        public boolean equals(UItem uItem, UItem uItem2) {
            return uItem.itemEquals(uItem2);
        }

        public boolean contentsEquals(UItem uItem, UItem uItem2) {
            return uItem.itemContentEquals(uItem2);
        }
    }

    public static UItemFactory findFactory(int i) {
        LongSparseArray longSparseArray = factories;
        if (longSparseArray == null) {
            return null;
        }
        return (UItemFactory) longSparseArray.get(i);
    }

    public static UItem ofFactory(Class cls) {
        return new UItem(getFactory(cls).viewType, false);
    }

    public static UItemFactory getFactory(Class cls) {
        if (factoryInstances == null) {
            factoryInstances = new HashMap();
        }
        if (factories == null) {
            factories = new LongSparseArray();
        }
        UItemFactory uItemFactory = (UItemFactory) factoryInstances.get(cls);
        if (uItemFactory != null) {
            return uItemFactory;
        }
        throw new RuntimeException("UItemFactory was not setuped: " + cls);
    }
}
