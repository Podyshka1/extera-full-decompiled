package com.exteragram.messenger.preferences;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.TextView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.db.DatabaseHelper;
import com.exteragram.messenger.api.dto.BoostySubscriberDTO;
import com.exteragram.messenger.backup.PreferencesUtils;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.components.BoostyBottomSheet;
import com.exteragram.messenger.components.SupporterBottomSheet;
import com.exteragram.messenger.export.ui.ExportActivity;
import com.exteragram.messenger.plugins.Plugin;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.utils.ExtensionsKt;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.exteragram.messenger.utils.system.VibratorUtils;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LinkifyPort;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0010\u0018\u0000 22\u00020\u0001:\u00042345B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0014J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u001e\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0014J0\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0014J0\u0010!\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0014JJ\u0010\"\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\b2\u0006\u0010#\u001a\u00020\u00112\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0&2\u0006\u0010'\u001a\u00020\u001dH\u0002J\u0012\u0010(\u001a\u0004\u0018\u00010\u00062\u0006\u0010)\u001a\u00020\u001dH\u0002J\b\u0010*\u001a\u00020\u0013H\u0002J\u000f\u0010+\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0002\u0010,J\b\u0010-\u001a\u00020\u0013H\u0002J\b\u0010.\u001a\u00020\u0013H\u0002J\u0010\u0010/\u001a\u00020\u00132\u0006\u00100\u001a\u00020\u0006H\u0002J\u0018\u00101\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\rH\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcom/exteragram/messenger/preferences/OtherPreferencesActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "<init>", "()V", "donates", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$Donate;", "subscribers", "Ljava/util/ArrayList;", "Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;", "defaultDonateIcon", "Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;", "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "fillItems", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.ITEMS, "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onLongClick", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", _UrlKt.FRAGMENT_ENCODE_SET, "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "onClick", "addDonateSection", "headerTitle", "donateList", "donateIcons", _UrlKt.FRAGMENT_ENCODE_SET, "idOffset", "getDonate", "id", "handleCrashlyticsClick", "handleAnalyticsClick", "()Lkotlin/Unit;", "handleResetSettingsClick", "handleDeleteAccountClick", "handleDonateClick", "donate", "handleDonateLongClick", "Companion", "OtherItem", "IconInfo", "Donate", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOtherPreferencesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OtherPreferencesActivity.kt\ncom/exteragram/messenger/preferences/OtherPreferencesActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,323:1\n1834#2,4:324\n1924#2,2:329\n296#2,2:331\n1926#2:333\n1#3:328\n29#4:334\n*S KotlinDebug\n*F\n+ 1 OtherPreferencesActivity.kt\ncom/exteragram/messenger/preferences/OtherPreferencesActivity\n*L\n98#1:324,4\n168#1:329,2\n171#1:331,2\n168#1:333\n288#1:334\n*E\n"})
public final class OtherPreferencesActivity extends BasePreferencesActivity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private List<Donate> donates = CollectionsKt.emptyList();
    private final ArrayList<BoostySubscriberDTO> subscribers = new ArrayList<>();
    private final IconInfo defaultDonateIcon = new IconInfo(C2665R.drawable.msg_payment_card, 0);

    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OtherItem.values().length];
            try {
                iArr[OtherItem.CRASHLYTICS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OtherItem.ANALYTICS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OtherItem.RESET_SETTINGS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[OtherItem.DELETE_ACCOUNT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[OtherItem.EXPORT_SETTINGS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[OtherItem.EXPORT_DATA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getDonates", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$Donate;", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<Donate> getDonates() {
            Set<String> stringSetConfigValue = RemoteUtils.getStringSetConfigValue("donates", SetsKt.emptySet());
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = stringSetConfigValue.iterator();
            while (it.hasNext()) {
                List listSplit$default = StringsKt.split$default((CharSequence) it.next(), new String[]{"#"}, false, 0, 6, (Object) null);
                if (listSplit$default.size() == 2) {
                    arrayList.add(new Donate((String) listSplit$default.get(0), (String) listSplit$default.get(1)));
                }
            }
            return arrayList;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000ej\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000f"}, d2 = {"Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$OtherItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "CRASHLYTICS", "ANALYTICS", "EXPORT_SETTINGS", "EXPORT_DATA", "RESET_SETTINGS", "DELETE_ACCOUNT", "DONATE", "id", _UrlKt.FRAGMENT_ENCODE_SET, "getId", "()I", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class OtherItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ OtherItem[] $VALUES;
        private final int id = ordinal() + 1;
        public static final OtherItem CRASHLYTICS = new OtherItem("CRASHLYTICS", 0);
        public static final OtherItem ANALYTICS = new OtherItem("ANALYTICS", 1);
        public static final OtherItem EXPORT_SETTINGS = new OtherItem("EXPORT_SETTINGS", 2);
        public static final OtherItem EXPORT_DATA = new OtherItem("EXPORT_DATA", 3);
        public static final OtherItem RESET_SETTINGS = new OtherItem("RESET_SETTINGS", 4);
        public static final OtherItem DELETE_ACCOUNT = new OtherItem("DELETE_ACCOUNT", 5);
        public static final OtherItem DONATE = new OtherItem("DONATE", 6);

        private static final /* synthetic */ OtherItem[] $values() {
            return new OtherItem[]{CRASHLYTICS, ANALYTICS, EXPORT_SETTINGS, EXPORT_DATA, RESET_SETTINGS, DELETE_ACCOUNT, DONATE};
        }

        public static EnumEntries<OtherItem> getEntries() {
            return $ENTRIES;
        }

        public static OtherItem valueOf(String str) {
            return (OtherItem) Enum.valueOf(OtherItem.class, str);
        }

        public static OtherItem[] values() {
            return (OtherItem[]) $VALUES.clone();
        }

        private OtherItem(String str, int i) {
        }

        static {
            OtherItem[] otherItemArr$values = $values();
            $VALUES = otherItemArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(otherItemArr$values);
        }

        public final int getId() {
            return this.id;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\u000bR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0010\u001a\u0004\b\u0012\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$IconInfo;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "iconResId", "iconColor", "<init>", "(II)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "I", "getIconResId", "getIconColor", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class IconInfo {
        private final int iconColor;
        private final int iconResId;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof IconInfo)) {
                return false;
            }
            IconInfo iconInfo = (IconInfo) other;
            return this.iconResId == iconInfo.iconResId && this.iconColor == iconInfo.iconColor;
        }

        public int hashCode() {
            return (Integer.hashCode(this.iconResId) * 31) + Integer.hashCode(this.iconColor);
        }

        public String toString() {
            return "IconInfo(iconResId=" + this.iconResId + ", iconColor=" + this.iconColor + ")";
        }

        public IconInfo(int i, int i2) {
            this.iconResId = i;
            this.iconColor = i2;
        }

        public final int getIconColor() {
            return this.iconColor;
        }

        public final int getIconResId() {
            return this.iconResId;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\bR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0010\u001a\u0004\b\u0012\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$Donate;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "name", "details", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getName", "getDetails", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Donate {
        private final String details;
        private final String name;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Donate)) {
                return false;
            }
            Donate donate = (Donate) other;
            return Intrinsics.areEqual(this.name, donate.name) && Intrinsics.areEqual(this.details, donate.details);
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + this.details.hashCode();
        }

        public String toString() {
            return "Donate(name=" + this.name + ", details=" + this.details + ")";
        }

        public Donate(String str, String str2) {
            this.name = str;
            this.details = str2;
        }

        public final String getDetails() {
            return this.details;
        }

        public final String getName() {
            return this.name;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        DatabaseHelper.getBoostySubscribers(new Consumer() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.subscribers.addAll((List) obj);
            }
        });
        return super.createView(context);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2665R.string.LocalOther);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        int i;
        this.donates = INSTANCE.getDonates();
        Collection<Plugin> collectionValues = PluginsController.INSTANCE.getInstance().getPlugins().values();
        if (collectionValues.isEmpty()) {
            i = 0;
        } else {
            Iterator<T> it = collectionValues.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                if (((Plugin) it.next()).isEnabled() && (i2 = i2 + 1) < 0) {
                    CollectionsKt.throwCountOverflow();
                }
            }
            i = i2;
        }
        boolean zIsCurrentThemeDark = Theme.isCurrentThemeDark();
        addDonateSection(items, LocaleController.getString(C2665R.string.Support), this.donates, MapsKt.mapOf(TuplesKt.to("mastercard", new IconInfo(C2665R.drawable.mastercard_icon, zIsCurrentThemeDark ? -1 : -16777216)), TuplesKt.to("tonkeeper", new IconInfo(C2665R.drawable.ton_icon, zIsCurrentThemeDark ? -14207411 : -15727073)), TuplesKt.to("space", new IconInfo(C2665R.drawable.ton_space_icon, -13587978)), TuplesKt.to("boosty", new IconInfo(C2665R.drawable.boosty_icon, zIsCurrentThemeDark ? -1118482 : -14406868))), 0);
        items.add(UItem.asHeader("Google"));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) OtherItem.CRASHLYTICS, (CharSequence) "Crashlytics", ExteraConfig.getUseGoogleCrashlytics(), (CharSequence) null, 0, false, "crashlytics", false, C2665R.drawable.msg_report, 184, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) OtherItem.ANALYTICS, (CharSequence) "Analytics", ExteraConfig.getUseGoogleAnalytics(), (CharSequence) null, 0, false, "analytics", false, C2665R.drawable.msg_data, 184, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.AnalyticsInfo)));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) OtherItem.EXPORT_SETTINGS, (CharSequence) LocaleController.getString(C2665R.string.ExportSettings), C2665R.drawable.msg_settings, (CharSequence) null, (CharSequence) null, (Boolean) null, false, "exportSettings", false, false, (Boolean) null, 1912, (Object) null));
        ExtensionsKt.addIf(items, BadgesController.isDeveloper$default(BadgesController.INSTANCE, null, 1, null) && i <= 1, BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) OtherItem.EXPORT_DATA, (CharSequence) LocaleController.getString(C2665R.string.ExportData), C2665R.drawable.msg_archive, (CharSequence) null, (CharSequence) null, (Boolean) null, false, "exportData", false, false, (Boolean) null, 1912, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) OtherItem.RESET_SETTINGS, (CharSequence) LocaleController.getString(C2665R.string.ResetSettings), C2665R.drawable.msg_reset, (CharSequence) null, (CharSequence) null, (Boolean) null, false, "resetSettings", false, false, (Boolean) null, 1912, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) OtherItem.DELETE_ACCOUNT, (CharSequence) LocaleController.getString(C2665R.string.DeleteAccount), C2665R.drawable.msg_clearcache, (CharSequence) null, (CharSequence) null, (Boolean) null, false, "deleteAccount", true, false, (Boolean) null, 1656, (Object) null));
        items.add(UItem.asShadow());
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean onLongClick(UItem item, View view, int position, float x, float y) {
        int i = item.id;
        OtherItem otherItem = OtherItem.DONATE;
        if (i >= otherItem.getId() && i < otherItem.getId() + this.donates.size()) {
            return handleDonateLongClick(item, view);
        }
        return super.onLongClick(item, view, position, x, y);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        int i = item.id;
        OtherItem otherItem = OtherItem.DONATE;
        if (i >= otherItem.getId() && i < otherItem.getId() + this.donates.size()) {
            Donate donate = getDonate(i);
            if (donate != null) {
                handleDonateClick(donate);
            }
            return;
        }
        if (i <= 0 || i >= otherItem.getId()) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[OtherItem.getEntries().get(i - 1).ordinal()]) {
            case 1:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new androidx.core.util.Consumer() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda2
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setUseGoogleCrashlytics(((Boolean) obj).booleanValue());
                    }
                });
                handleCrashlyticsClick();
                break;
            case 2:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new androidx.core.util.Consumer() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda3
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setUseGoogleAnalytics(((Boolean) obj).booleanValue());
                    }
                });
                handleAnalyticsClick();
                break;
            case 3:
                handleResetSettingsClick();
                break;
            case 4:
                handleDeleteAccountClick();
                break;
            case 5:
                PreferencesUtils.getInstance().exportSettings(this);
                break;
            case 6:
                presentFragment(new ExportActivity(null));
                break;
        }
    }

    private final void addDonateSection(ArrayList<UItem> items, String headerTitle, List<Donate> donateList, Map<String, IconInfo> donateIcons, int idOffset) {
        Object obj;
        IconInfo iconInfo;
        List<Donate> list = donateList;
        if (list == null || list.isEmpty()) {
            return;
        }
        items.add(UItem.asHeader(headerTitle));
        boolean z = false;
        int i = 0;
        for (Object obj2 : donateList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Donate donate = (Donate) obj2;
            String lowerCase = donate.getName().toLowerCase(Locale.ROOT);
            Iterator<T> it = donateIcons.entrySet().iterator();
            while (true) {
                obj = null;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (StringsKt.contains$default(lowerCase, (String) ((Map.Entry) next).getKey(), z, 2, (Object) null)) {
                    obj = next;
                    break;
                }
            }
            Map.Entry entry = (Map.Entry) obj;
            if (entry == null || (iconInfo = (IconInfo) entry.getValue()) == null) {
                iconInfo = this.defaultDonateIcon;
            }
            IconInfo iconInfo2 = iconInfo;
            boolean z2 = z;
            UItem uItemUButton$TMessagesProj$default = BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, OtherItem.DONATE.getId() + idOffset + i, (CharSequence) donate.getName(), 0, (CharSequence) null, (CharSequence) null, (Boolean) null, true, (String) null, false, false, (Boolean) null, 1980, (Object) null);
            if (iconInfo2.getIconColor() == 0) {
                uItemUButton$TMessagesProj$default.setIcon(iconInfo2.getIconResId());
            } else {
                uItemUButton$TMessagesProj$default.setColorfulIcon(iconInfo2.getIconResId(), iconInfo2.getIconColor());
            }
            items.add(uItemUButton$TMessagesProj$default);
            i = i2;
            z = z2;
        }
        items.add(UItem.asShadow(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2665R.string.GetBadgeInfo), new Runnable() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                SupporterBottomSheet.showAlert(this.f$0, null);
            }
        })));
    }

    private final Donate getDonate(int id) {
        int id2 = id - OtherItem.DONATE.getId();
        if (id2 < 0 || id2 >= this.donates.size()) {
            return null;
        }
        return this.donates.get(id2);
    }

    private final void handleCrashlyticsClick() {
        FirebaseCrashlytics firebaseCrashlytics = ApplicationLoader.getFirebaseCrashlytics();
        if (firebaseCrashlytics != null) {
            firebaseCrashlytics.setCrashlyticsCollectionEnabled(ExteraConfig.getUseGoogleCrashlytics());
        }
    }

    private final Unit handleAnalyticsClick() {
        FirebaseAnalytics firebaseAnalytics = ApplicationLoader.getFirebaseAnalytics();
        if (firebaseAnalytics == null) {
            return null;
        }
        firebaseAnalytics.setAnalyticsCollectionEnabled(ExteraConfig.getUseGoogleAnalytics());
        if (!ExteraConfig.getUseGoogleAnalytics()) {
            firebaseAnalytics.resetAnalyticsData();
        }
        return Unit.INSTANCE;
    }

    private final void handleResetSettingsClick() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.ResetPreferencesInfo)));
        builder.setTitle(LocaleController.getString(C2665R.string.ResetSettings));
        builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString(C2665R.string.Reset), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                OtherPreferencesActivity.$r8$lambda$DShbhmj_8_W37UQxRBukG8QD66E(this.f$0, alertDialog, i);
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        showDialog(alertDialogCreate);
        View button = alertDialogCreate.getButton(-1);
        TextView textView = button instanceof TextView ? (TextView) button : null;
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    public static void $r8$lambda$DShbhmj_8_W37UQxRBukG8QD66E(OtherPreferencesActivity otherPreferencesActivity, AlertDialog alertDialog, int i) {
        PreferencesUtils.clearPreferences();
        otherPreferencesActivity.parentLayout.rebuildFragments(0);
        otherPreferencesActivity.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        otherPreferencesActivity.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        LocaleController.getInstance().recreateFormatters();
        Theme.reloadAllResources(otherPreferencesActivity.getParentActivity());
        BulletinFactory.of(otherPreferencesActivity).createErrorBulletin(LocaleController.getString(C2665R.string.ResetPreferences), otherPreferencesActivity.resourceProvider).show();
    }

    private final void handleDeleteAccountClick() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setMessage(LocaleController.getString(C2665R.string.TosDeclineDeleteAccount));
        builder.setTitle(LocaleController.getString(C2665R.string.DeleteAccount));
        builder.setPositiveButton(LocaleController.getString(C2665R.string.Deactivate), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                OtherPreferencesActivity.m2719$r8$lambda$vTi_wXRb_f1M9isgtAXKE_w2do(this.f$0, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null);
        final AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda6
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                OtherPreferencesActivity.$r8$lambda$dVNaH0qjGRIV502FTtIuADYa9nA(alertDialogCreate, dialogInterface);
            }
        });
        showDialog(alertDialogCreate);
    }

    /* JADX INFO: renamed from: $r8$lambda$vTi_wXRb_f1M9is-gtAXKE_w2do, reason: not valid java name */
    public static void m2719$r8$lambda$vTi_wXRb_f1M9isgtAXKE_w2do(final OtherPreferencesActivity otherPreferencesActivity, AlertDialog alertDialog, int i) {
        final AlertDialog alertDialog2 = new AlertDialog(otherPreferencesActivity.getParentActivity(), 3);
        alertDialog2.setCanCancel(false);
        alertDialog2.show();
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                OtherPreferencesActivity.$r8$lambda$ilM5cqEH6Q8fGXs5ROPy5rBCyec(this.f$0, alertDialog2);
            }
        }, 500L);
    }

    public static void $r8$lambda$ilM5cqEH6Q8fGXs5ROPy5rBCyec(final OtherPreferencesActivity otherPreferencesActivity, final AlertDialog alertDialog) {
        ConnectionsManager connectionsManager = otherPreferencesActivity.getConnectionsManager();
        TL_account.deleteAccount deleteaccount = new TL_account.deleteAccount();
        deleteaccount.reason = "ЭКСТЕРАГРАМ";
        connectionsManager.sendRequest(deleteaccount, new RequestDelegate() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda8
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        OtherPreferencesActivity.$r8$lambda$wafXI4sX6H1dACsVEwON_Y0b8JM(alertDialog, tLObject, otherPreferencesActivity, tL_error);
                    }
                });
            }
        });
    }

    public static void $r8$lambda$wafXI4sX6H1dACsVEwON_Y0b8JM(AlertDialog alertDialog, TLObject tLObject, OtherPreferencesActivity otherPreferencesActivity, TLRPC.TL_error tL_error) {
        String str;
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            otherPreferencesActivity.getMessagesController().performLogout(0);
            return;
        }
        if (tL_error == null || tL_error.code != -1000) {
            String string = LocaleController.getString(C2665R.string.ErrorOccurred);
            String strConcat = (tL_error == null || (str = tL_error.text) == null) ? null : "\n".concat(str);
            if (strConcat == null) {
                strConcat = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            String str2 = string + strConcat;
            AlertDialog.Builder builder = new AlertDialog.Builder(otherPreferencesActivity.getParentActivity());
            builder.setTitle(LocaleController.getString(C2665R.string.AppName));
            builder.setMessage(str2);
            builder.setPositiveButton(LocaleController.getString(C2665R.string.OK), null);
            builder.show();
        }
    }

    public static void $r8$lambda$dVNaH0qjGRIV502FTtIuADYa9nA(AlertDialog alertDialog, DialogInterface dialogInterface) {
        View button = alertDialog.getButton(-1);
        final TextView textView = button instanceof TextView ? (TextView) button : null;
        if (textView == null) {
            return;
        }
        textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        textView.setEnabled(false);
        final CharSequence text = textView.getText();
        new CountDownTimer() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$handleDeleteAccountClick$1$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, 100L);
            }

            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
                TextView textView2 = textView;
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                textView2.setText(String.format(Locale.getDefault(), "%s • %d", Arrays.copyOf(new Object[]{text, Long.valueOf((millisUntilFinished / 1000) + 1)}, 2)));
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                textView.setText(text);
                textView.setEnabled(true);
            }
        }.start();
    }

    private final void handleDonateClick(final Donate donate) {
        String lowerCase = donate.getName().toLowerCase(Locale.getDefault());
        if (StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "ton", false, 2, (Object) null)) {
            long j = UserConfig.getInstance(this.currentAccount).clientUserId;
            String str = "ton://transfer/" + donate.getDetails() + "?text=" + j;
            if (!Browser.isInternalUri(Uri.parse(str), new boolean[1])) {
                Browser.openUrl(getParentActivity(), str);
                return;
            } else {
                if (AndroidUtilities.addToClipboard(donate.getDetails())) {
                    BulletinFactory.of(this).createCopyBulletin(LocaleController.getString(C2665R.string.TextCopied)).show();
                    return;
                }
                return;
            }
        }
        if (StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "boosty", false, 2, (Object) null) && !this.subscribers.isEmpty()) {
            if (getParentActivity() == null) {
                return;
            }
            showDialog(new BoostyBottomSheet(getParentActivity(), this.subscribers) { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity.handleDonateClick.1
                @Override // com.exteragram.messenger.components.BoostyBottomSheet
                public void onButtonClick() {
                    Browser.openUrl(OtherPreferencesActivity.this.getParentActivity(), donate.getDetails());
                }
            });
        } else if (LinkifyPort.WEB_URL.matcher(donate.getDetails()).matches()) {
            Browser.openUrl(getParentActivity(), donate.getDetails());
        } else if (AndroidUtilities.addToClipboard(donate.getDetails())) {
            BulletinFactory.of(this).createCopyBulletin(LocaleController.getString(C2665R.string.TextCopied)).show();
        }
    }

    private final boolean handleDonateLongClick(UItem item, View view) {
        Donate donate = getDonate(item.id);
        if (donate != null && AndroidUtilities.addToClipboard(donate.getDetails())) {
            BulletinFactory.of(this).createCopyBulletin(LocaleController.getString(C2665R.string.TextCopied)).show();
        }
        view.performHapticFeedback(VibratorUtils.getType(3), 1);
        return false;
    }
}
