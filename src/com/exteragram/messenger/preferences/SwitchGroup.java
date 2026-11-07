package com.exteragram.messenger.preferences;

import android.view.View;
import androidx.core.util.Consumer;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.BooleanSupplier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KMutableProperty0;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationBadge;
import org.telegram.ui.Cells.TextCheckCell2;
import org.telegram.ui.Components.UItem;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002GHBE\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eBI\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000f\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001b\u0010!\u001a\u00020\u00002\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00180\u001f¢\u0006\u0004\b!\u0010\"J\u0015\u0010$\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\t¢\u0006\u0004\b$\u0010%J=\u0010\u0014\u001a\u00020\u00002\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000f2\b\b\u0002\u0010&\u001a\u00020\u00042\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u000b0'2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0014\u0010*J?\u0010\u0014\u001a\u00020\u00002\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000f2\b\b\u0002\u0010&\u001a\u00020\u00042\u0006\u0010,\u001a\u00020+2\u0006\u0010.\u001a\u00020-2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0014\u0010/JE\u00101\u001a\u00020\u00002\u0006\u00100\u001a\u00020+2\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000f2\b\b\u0002\u0010&\u001a\u00020\u00042\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u000b0'2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b1\u00102JG\u00101\u001a\u00020\u00002\u0006\u00100\u001a\u00020+2\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000f2\b\b\u0002\u0010&\u001a\u00020\u00042\u0006\u0010,\u001a\u00020+2\u0006\u0010.\u001a\u00020-2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b1\u00103J%\u00108\u001a\u00020\u00182\u0016\u00107\u001a\u0012\u0012\u0004\u0012\u00020504j\b\u0012\u0004\u0012\u000205`6¢\u0006\u0004\b8\u00109J\u0015\u0010;\u001a\u00020\u00182\u0006\u0010:\u001a\u000205¢\u0006\u0004\b;\u0010<R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010=R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010>R\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010>R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010?R\u0016\u0010\n\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010@R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010AR\u001a\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00120B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u001e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010ER\u0016\u0010F\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010A¨\u0006I"}, d2 = {"Lcom/exteragram/messenger/preferences/SwitchGroup;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "fragment", _UrlKt.FRAGMENT_ENCODE_SET, "id", "titleRes", _UrlKt.FRAGMENT_ENCODE_SET, "title", _UrlKt.FRAGMENT_ENCODE_SET, "linkAlias", _UrlKt.FRAGMENT_ENCODE_SET, "searchable", "<init>", "(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;IILjava/lang/CharSequence;Ljava/lang/String;Z)V", _UrlKt.FRAGMENT_ENCODE_SET, "enum", "(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;Ljava/lang/Enum;ILjava/lang/CharSequence;Ljava/lang/String;Z)V", "Lcom/exteragram/messenger/preferences/SwitchGroup$Child;", "child", "add", "(Lcom/exteragram/messenger/preferences/SwitchGroup$Child;)Lcom/exteragram/messenger/preferences/SwitchGroup;", "Landroid/view/View;", PluginsConstants.Settings.VIEW, _UrlKt.FRAGMENT_ENCODE_SET, "onSwitchClick", "(Landroid/view/View;)V", "()Ljava/lang/CharSequence;", "enabledOnly", NotificationBadge.NewHtcHomeBadger.COUNT, "(Z)I", "Lkotlin/Function0;", "runnable", "onChanged", "(Lkotlin/jvm/functions/Function0;)Lcom/exteragram/messenger/preferences/SwitchGroup;", "alias", "markNew", "(Ljava/lang/String;)Lcom/exteragram/messenger/preferences/SwitchGroup;", "textRes", "Lkotlin/reflect/KMutableProperty0;", "property", "text", "(Ljava/lang/Enum;ILkotlin/reflect/KMutableProperty0;Ljava/lang/CharSequence;)Lcom/exteragram/messenger/preferences/SwitchGroup;", "Ljava/util/function/BooleanSupplier;", "getter", "Lcom/exteragram/messenger/preferences/SwitchGroup$Setter;", "setter", "(Ljava/lang/Enum;ILjava/util/function/BooleanSupplier;Lcom/exteragram/messenger/preferences/SwitchGroup$Setter;Ljava/lang/CharSequence;)Lcom/exteragram/messenger/preferences/SwitchGroup;", "visible", "addIf", "(Ljava/util/function/BooleanSupplier;Ljava/lang/Enum;ILkotlin/reflect/KMutableProperty0;Ljava/lang/CharSequence;)Lcom/exteragram/messenger/preferences/SwitchGroup;", "(Ljava/util/function/BooleanSupplier;Ljava/lang/Enum;ILjava/util/function/BooleanSupplier;Lcom/exteragram/messenger/preferences/SwitchGroup$Setter;Ljava/lang/CharSequence;)Lcom/exteragram/messenger/preferences/SwitchGroup;", "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "Lkotlin/collections/ArrayList;", PluginsConstants.Settings.ITEMS, "fill", "(Ljava/util/ArrayList;)V", PluginsConstants.Settings.ITEM, "onClick", "(Lorg/telegram/ui/Components/UItem;)V", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "I", "Ljava/lang/CharSequence;", "Ljava/lang/String;", "Z", _UrlKt.FRAGMENT_ENCODE_SET, "children", "Ljava/util/List;", "Lkotlin/jvm/functions/Function0;", "expanded", "Setter", "Child", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSwitchGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwitchGroup.kt\ncom/exteragram/messenger/preferences/SwitchGroup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,178:1\n1#2:179\n296#3,2:180\n1834#3,4:182\n*S KotlinDebug\n*F\n+ 1 SwitchGroup.kt\ncom/exteragram/messenger/preferences/SwitchGroup\n*L\n127#1:180,2\n150#1:182,4\n*E\n"})
public final class SwitchGroup {
    private final List<Child> children;
    private boolean expanded;
    private final BasePreferencesActivity fragment;
    private final int id;
    private final String linkAlias;
    private Function0<Unit> onChanged;
    private final boolean searchable;
    private final CharSequence title;
    private final int titleRes;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/preferences/SwitchGroup$Setter;", _UrlKt.FRAGMENT_ENCODE_SET, "set", _UrlKt.FRAGMENT_ENCODE_SET, "checked", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public interface Setter {
        void set(boolean checked);
    }

    @JvmOverloads
    public SwitchGroup(BasePreferencesActivity basePreferencesActivity, int i, int i2, CharSequence charSequence, String str, boolean z) {
        this.fragment = basePreferencesActivity;
        this.id = i;
        this.titleRes = i2;
        this.title = charSequence;
        this.linkAlias = str;
        this.searchable = z;
        this.children = new ArrayList();
    }

    public /* synthetic */ SwitchGroup(BasePreferencesActivity basePreferencesActivity, Enum r9, int i, CharSequence charSequence, String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(basePreferencesActivity, (Enum<?>) r9, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? null : charSequence, (i2 & 16) != 0 ? null : str, (i2 & 32) != 0 ? true : z);
    }

    @JvmOverloads
    public SwitchGroup(BasePreferencesActivity basePreferencesActivity, Enum<?> r9, int i, CharSequence charSequence, String str, boolean z) {
        this(basePreferencesActivity, r9.ordinal() + 1, i, charSequence, str, z);
    }

    public final SwitchGroup onChanged(Function0<Unit> runnable) {
        this.onChanged = runnable;
        return this;
    }

    public final SwitchGroup markNew(String alias) {
        ((Child) CollectionsKt.last((List) this.children)).setNewFeatureAlias(alias);
        return this;
    }

    public static /* synthetic */ SwitchGroup add$default(SwitchGroup switchGroup, Enum r1, int i, KMutableProperty0 kMutableProperty0, CharSequence charSequence, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 8) != 0) {
            charSequence = null;
        }
        return switchGroup.add(r1, i, kMutableProperty0, charSequence);
    }

    public static Unit $r8$lambda$Wm1qktTcUdWT7W6MQ8u_rRLcscg(KMutableProperty0 kMutableProperty0, boolean z) {
        kMutableProperty0.set(Boolean.valueOf(z));
        return Unit.INSTANCE;
    }

    public final SwitchGroup add(Enum<?> r8, int textRes, final KMutableProperty0<Boolean> property, CharSequence text) {
        return add(new Child(r8.ordinal() + 1, textRes, text, null, new Function0() { // from class: com.exteragram.messenger.preferences.SwitchGroup$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(((Boolean) property.get()).booleanValue());
            }
        }, new Function1() { // from class: com.exteragram.messenger.preferences.SwitchGroup$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SwitchGroup.$r8$lambda$Wm1qktTcUdWT7W6MQ8u_rRLcscg(property, ((Boolean) obj).booleanValue());
            }
        }));
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.preferences.SwitchGroup$add$5 */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class C14855 extends FunctionReferenceImpl implements Function0<Boolean> {
        public C14855(Object obj) {
            super(0, obj, BooleanSupplier.class, "getAsBoolean", "getAsBoolean()Z", 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(((BooleanSupplier) this.receiver).getAsBoolean());
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.preferences.SwitchGroup$add$6 */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class C14866 extends FunctionReferenceImpl implements Function1<Boolean, Unit> {
        public C14866(Object obj) {
            super(1, obj, Setter.class, "set", "set(Z)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            invoke(bool.booleanValue());
            return Unit.INSTANCE;
        }

        public final void invoke(boolean z) {
            ((Setter) this.receiver).set(z);
        }
    }

    public final SwitchGroup add(Enum<?> r8, int textRes, BooleanSupplier getter, Setter setter, CharSequence text) {
        return add(new Child(r8.ordinal() + 1, textRes, text, null, new C14855(getter), new C14866(setter)));
    }

    public static /* synthetic */ SwitchGroup addIf$default(SwitchGroup switchGroup, BooleanSupplier booleanSupplier, Enum r8, int i, KMutableProperty0 kMutableProperty0, CharSequence charSequence, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            charSequence = null;
        }
        return switchGroup.addIf(booleanSupplier, r8, i3, kMutableProperty0, charSequence);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.preferences.SwitchGroup$addIf$4 */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class C14874 extends FunctionReferenceImpl implements Function0<Boolean> {
        public C14874(Object obj) {
            super(0, obj, BooleanSupplier.class, "getAsBoolean", "getAsBoolean()Z", 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(((BooleanSupplier) this.receiver).getAsBoolean());
        }
    }

    public static Unit $r8$lambda$H1vtAg21u4HYev2gzJx5EFysn30(KMutableProperty0 kMutableProperty0, boolean z) {
        kMutableProperty0.set(Boolean.valueOf(z));
        return Unit.INSTANCE;
    }

    public final SwitchGroup addIf(BooleanSupplier visible, Enum<?> r9, int textRes, final KMutableProperty0<Boolean> property, CharSequence text) {
        return add(new Child(r9.ordinal() + 1, textRes, text, new C14874(visible), new Function0() { // from class: com.exteragram.messenger.preferences.SwitchGroup$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(((Boolean) property.get()).booleanValue());
            }
        }, new Function1() { // from class: com.exteragram.messenger.preferences.SwitchGroup$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SwitchGroup.$r8$lambda$H1vtAg21u4HYev2gzJx5EFysn30(property, ((Boolean) obj).booleanValue());
            }
        }));
    }

    public static /* synthetic */ SwitchGroup addIf$default(SwitchGroup switchGroup, BooleanSupplier booleanSupplier, Enum r9, int i, BooleanSupplier booleanSupplier2, Setter setter, CharSequence charSequence, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        int i3 = i;
        if ((i2 & 32) != 0) {
            charSequence = null;
        }
        return switchGroup.addIf(booleanSupplier, r9, i3, booleanSupplier2, setter, charSequence);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.preferences.SwitchGroup$addIf$7 */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class C14887 extends FunctionReferenceImpl implements Function0<Boolean> {
        public C14887(Object obj) {
            super(0, obj, BooleanSupplier.class, "getAsBoolean", "getAsBoolean()Z", 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(((BooleanSupplier) this.receiver).getAsBoolean());
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.preferences.SwitchGroup$addIf$8 */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class C14898 extends FunctionReferenceImpl implements Function0<Boolean> {
        public C14898(Object obj) {
            super(0, obj, BooleanSupplier.class, "getAsBoolean", "getAsBoolean()Z", 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(((BooleanSupplier) this.receiver).getAsBoolean());
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.preferences.SwitchGroup$addIf$9 */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class C14909 extends FunctionReferenceImpl implements Function1<Boolean, Unit> {
        public C14909(Object obj) {
            super(1, obj, Setter.class, "set", "set(Z)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            invoke(bool.booleanValue());
            return Unit.INSTANCE;
        }

        public final void invoke(boolean z) {
            ((Setter) this.receiver).set(z);
        }
    }

    public final SwitchGroup addIf(BooleanSupplier visible, Enum<?> r9, int textRes, BooleanSupplier getter, Setter setter, CharSequence text) {
        return add(new Child(r9.ordinal() + 1, textRes, text, new C14887(visible), new C14898(getter), new C14909(setter)));
    }

    public final void fill(ArrayList<UItem> items) {
        int iCount = count(true);
        UItem uItemAsExteraExpandableSwitch = UItem.asExteraExpandableSwitch(this.id, title(), String.format("%d/%d", Arrays.copyOf(new Object[]{Integer.valueOf(iCount), Integer.valueOf(count(false))}, 2)), new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.SwitchGroup$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onSwitchClick(view);
            }
        });
        uItemAsExteraExpandableSwitch.setChecked(iCount > 0);
        uItemAsExteraExpandableSwitch.setCollapsed(true ^ this.expanded);
        if (this.searchable) {
            uItemAsExteraExpandableSwitch.setSearchable(this.fragment);
        }
        String str = this.linkAlias;
        if (str != null) {
            uItemAsExteraExpandableSwitch.setLinkAlias(str, this.fragment);
        }
        items.add(uItemAsExteraExpandableSwitch);
        if (this.expanded) {
            for (Child child : this.children) {
                if (child.isVisible()) {
                    UItem uItemAsRoundCheckbox = UItem.asRoundCheckbox(child.getId(), child.text());
                    uItemAsRoundCheckbox.setChecked(child.getGetter().invoke().booleanValue()).pad();
                    items.add(uItemAsRoundCheckbox);
                }
            }
        }
    }

    public final void onClick(UItem item) {
        Object next;
        if (item.id == this.id) {
            boolean z = this.expanded;
            this.expanded = !z;
            item.setCollapsed(z);
            this.fragment.getListView$TMessagesProj().adapter.update(true);
            return;
        }
        Iterator<T> it = this.children.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (((Child) next).getId() == item.id) {
                    break;
                }
            }
        }
        final Child child = (Child) next;
        if (child == null) {
            return;
        }
        this.fragment.toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.SwitchGroup$$ExternalSyntheticLambda5
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                child.getSetter().invoke(Boolean.valueOf(((Boolean) obj).booleanValue()));
            }
        });
        Function0<Unit> function0 = this.onChanged;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final SwitchGroup add(Child child) {
        this.children.add(child);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSwitchClick(View view) {
        UItem uItemFindItemByItemId = this.fragment.getListView$TMessagesProj().findItemByItemId(((TextCheckCell2) view).id);
        boolean z = !uItemFindItemByItemId.checked;
        for (Child child : this.children) {
            if (child.isVisible()) {
                child.getSetter().invoke(Boolean.valueOf(z));
            }
        }
        uItemFindItemByItemId.setChecked(z);
        this.fragment.getListView$TMessagesProj().adapter.update(true);
        Function0<Unit> function0 = this.onChanged;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final CharSequence title() {
        CharSequence charSequence = this.title;
        return charSequence == null ? LocaleController.getString(this.titleRes) : charSequence;
    }

    private final int count(boolean enabledOnly) {
        List<Child> list = this.children;
        int i = 0;
        if ((list instanceof Collection) && list.isEmpty()) {
            return 0;
        }
        for (Child child : list) {
            if (child.isVisible() && (!enabledOnly || child.getGetter().invoke().booleanValue())) {
                i++;
                if (i < 0) {
                    CollectionsKt.throwCountOverflow();
                }
            }
        }
        return i;
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0013\u001a\u0004\b\u0016\u0010\u0015R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0017\u001a\u0004\b\u0018\u0010\u0012R\u001f\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\t\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006¢\u0006\f\n\u0004\b\n\u0010\u0019\u001a\u0004\b\u001c\u0010\u001bR#\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006¢\u0006\f\n\u0004\b\r\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR$\u0010!\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006'"}, d2 = {"Lcom/exteragram/messenger/preferences/SwitchGroup$Child;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "id", "textRes", _UrlKt.FRAGMENT_ENCODE_SET, "text", "Lkotlin/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "visible", "getter", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "setter", "<init>", "(IILjava/lang/CharSequence;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "isVisible", "()Z", "()Ljava/lang/CharSequence;", "I", "getId", "()I", "getTextRes", "Ljava/lang/CharSequence;", "getText", "Lkotlin/jvm/functions/Function0;", "getVisible", "()Lkotlin/jvm/functions/Function0;", "getGetter", "Lkotlin/jvm/functions/Function1;", "getSetter", "()Lkotlin/jvm/functions/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "newFeatureAlias", "Ljava/lang/String;", "getNewFeatureAlias", "()Ljava/lang/String;", "setNewFeatureAlias", "(Ljava/lang/String;)V", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Child {
        private final Function0<Boolean> getter;
        private final int id;
        private String newFeatureAlias;
        private final Function1<Boolean, Unit> setter;
        private final CharSequence text;
        private final int textRes;
        private final Function0<Boolean> visible;

        /* JADX WARN: Multi-variable type inference failed */
        public Child(int i, int i2, CharSequence charSequence, Function0<Boolean> function0, Function0<Boolean> function02, Function1<? super Boolean, Unit> function1) {
            this.id = i;
            this.textRes = i2;
            this.text = charSequence;
            this.visible = function0;
            this.getter = function02;
            this.setter = function1;
        }

        public final int getId() {
            return this.id;
        }

        public final Function0<Boolean> getGetter() {
            return this.getter;
        }

        public final Function1<Boolean, Unit> getSetter() {
            return this.setter;
        }

        public final void setNewFeatureAlias(String str) {
            this.newFeatureAlias = str;
        }

        public final boolean isVisible() {
            Function0<Boolean> function0 = this.visible;
            if (function0 != null) {
                return function0.invoke().booleanValue();
            }
            return true;
        }

        public final CharSequence text() {
            CharSequence string = this.text;
            if (string == null) {
                string = LocaleController.getString(this.textRes);
            }
            String str = this.newFeatureAlias;
            return (str == null || !SettingsRegistry.markAsNewFeature(str)) ? string : LocaleUtils.applyNewSpan(string);
        }
    }
}
