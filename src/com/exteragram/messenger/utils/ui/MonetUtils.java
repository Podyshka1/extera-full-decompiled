package com.exteragram.messenger.utils.ui;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.cast.MediaError;
import com.google.android.material.color.MaterialColors;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.FileLog;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001&B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0006H\u0007J\b\u0010\u0018\u001a\u00020\u0019H\u0007J\u0018\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0019H\u0007J\u0012\u0010\u001d\u001a\u00020\u00072\b\b\u0001\u0010\u001e\u001a\u00020\u0007H\u0007J\b\u0010\u001f\u001a\u00020\u0007H\u0007J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010$\u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0007J\b\u0010%\u001a\u00020!H\u0003R*\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007`\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0016\u0010\f\u001a\n \u000e*\u0004\u0018\u00010\r0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/exteragram/messenger/utils/ui/MonetUtils;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "COLOR_MAP", "Ljava/util/HashMap;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/HashMap;", "ACCENT_PREFIXES", _UrlKt.FRAGMENT_ENCODE_SET, "[Ljava/lang/String;", "PARAM_PATTERN", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "ACTION_OVERLAY_CHANGED", "overlayChangeReceiver", "Lcom/exteragram/messenger/utils/ui/MonetUtils$OverlayChangeReceiver;", "KEY_ALPHA", "KEY_SATURATION", "KEY_LIGHTNESS", "harmonizeContextColor", "getColor", "colorString", "isSupported", _UrlKt.FRAGMENT_ENCODE_SET, "getSystemAccentColor", "index", "isDark", "harmonize", "color", "getHarmonizeContextColor", "registerReceiver", _UrlKt.FRAGMENT_ENCODE_SET, "context", "Landroid/content/Context;", "unregisterReceiver", "initSystemColors", "OverlayChangeReceiver", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class MonetUtils {
    private static final String[] ACCENT_PREFIXES;
    private static final HashMap<String, Integer> COLOR_MAP;
    public static final MonetUtils INSTANCE;
    private static final Pattern PARAM_PATTERN;
    private static volatile int harmonizeContextColor;
    private static final OverlayChangeReceiver overlayChangeReceiver;
    private static final String ACTION_OVERLAY_CHANGED = Deobfuscator$exteraGramDev$TMessagesProj.getString(-42938804749871L);
    private static final String KEY_ALPHA = Deobfuscator$exteraGramDev$TMessagesProj.getString(-43033294030383L);
    private static final String KEY_SATURATION = Deobfuscator$exteraGramDev$TMessagesProj.getString(-43041883964975L);
    private static final String KEY_LIGHTNESS = Deobfuscator$exteraGramDev$TMessagesProj.getString(-43050473899567L);

    private MonetUtils() {
    }

    static {
        MonetUtils monetUtils = new MonetUtils();
        INSTANCE = monetUtils;
        HashMap<String, Integer> map = new HashMap<>();
        COLOR_MAP = map;
        ACCENT_PREFIXES = new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-43127783310895L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-43144963180079L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-43093423572527L)};
        PARAM_PATTERN = Pattern.compile(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43110603441711L));
        overlayChangeReceiver = new OverlayChangeReceiver();
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43823568012847L), Integer.valueOf(C2573R.color.black));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43776323372591L), Integer.valueOf(C2573R.color.white));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43883697554991L), Integer.valueOf(C2573R.color.mRed200));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43849337816623L), Integer.valueOf(C2573R.color.mRed500));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43952417031727L), Integer.valueOf(C2573R.color.mRed800));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43918057293359L), Integer.valueOf(C2573R.color.mGreen200));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43479970629167L), Integer.valueOf(C2573R.color.mGreen500));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43454200825391L), Integer.valueOf(C2573R.color.mGreen800));
        if (isSupported()) {
            monetUtils.initSystemColors();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00ea A[PHI: r15
  0x00ea: PHI (r15v2 'colorString' java.lang.String) = (r15v0 'colorString' java.lang.String), (r15v5 'colorString' java.lang.String) binds: [B:6:0x001d, B:16:0x003b] A[DONT_GENERATE, DONT_INLINE]] */
    @JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final int getColor(String colorString) {
        int i;
        int i2;
        int i3;
        String string;
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-63670611887663L);
        if (colorString.length() == 0) {
            return 0;
        }
        try {
            Matcher matcher = PARAM_PATTERN.matcher(colorString);
            if (matcher.find()) {
                String strGroup = matcher.group(1);
                if (strGroup != null && (string = StringsKt.trim((CharSequence) strGroup).toString()) != null) {
                    colorString = string;
                }
                String strGroup2 = matcher.group(2);
                if (strGroup2 != null) {
                    Iterator it = StringsKt.split$default((CharSequence) strGroup2, new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-63653432018479L)}, false, 0, 6, (Object) null).iterator();
                    i = 100;
                    i2 = 100;
                    i3 = 100;
                    while (it.hasNext()) {
                        List listSplit$default = StringsKt.split$default((CharSequence) it.next(), new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-63662021953071L)}, false, 0, 6, (Object) null);
                        if (listSplit$default.size() == 2) {
                            try {
                                String string2 = StringsKt.trim((CharSequence) listSplit$default.get(0)).toString();
                                int i4 = Integer.parseInt(StringsKt.trim((CharSequence) listSplit$default.get(1)).toString());
                                int iHashCode = string2.hashCode();
                                if (iHashCode != 97) {
                                    if (iHashCode != 108) {
                                        if (iHashCode == 115 && string2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-63747921298991L))) {
                                            i2 = i4;
                                        }
                                    } else if (string2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-63756511233583L))) {
                                        i3 = i4;
                                    }
                                } else if (string2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-63739331364399L))) {
                                    i = i4;
                                }
                            } catch (NumberFormatException unused) {
                            }
                        }
                    }
                }
            } else {
                i = 100;
                i2 = 100;
                i3 = 100;
            }
            Integer num = COLOR_MAP.get(colorString);
            if (num != null && num.intValue() != 0) {
                int color = ApplicationLoader.applicationContext.getColor(num.intValue());
                if (i2 != 100) {
                    color = ColorUtils.blendARGB(-1, color, i2 / 100.0f);
                }
                if (i3 != 100) {
                    color = ColorUtils.blendARGB(-16777216, color, i3 / 100.0f);
                }
                if (i != 100) {
                    color = ColorUtils.setAlphaComponent(color, (int) (i * 2.55f));
                }
                return (StringsKt.startsWith$default(colorString, Deobfuscator$exteraGramDev$TMessagesProj.getString(-63765101168175L), false, 2, (Object) null) || StringsKt.startsWith$default(colorString, Deobfuscator$exteraGramDev$TMessagesProj.getString(-63717856527919L), false, 2, (Object) null)) ? harmonize(color) : color;
            }
            return 0;
        } catch (Exception e) {
            FileLog.m898e(e);
            return 0;
        }
    }

    @JvmStatic
    public static final boolean isSupported() {
        return Build.VERSION.SDK_INT >= 31;
    }

    @JvmStatic
    public static final int getSystemAccentColor(int index, boolean isDark) {
        if (!isSupported() || index < 0) {
            return 0;
        }
        String[] strArr = ACCENT_PREFIXES;
        if (index >= strArr.length) {
            return 0;
        }
        return getColor(strArr[index] + (isDark ? 200 : MediaError.DetailedErrorCode.TEXT_UNKNOWN));
    }

    @JvmStatic
    public static final int harmonize(int color) {
        int harmonizeContextColor2 = getHarmonizeContextColor();
        return harmonizeContextColor2 == 0 ? color : MaterialColors.harmonize(color, harmonizeContextColor2);
    }

    @JvmStatic
    public static final int getHarmonizeContextColor() {
        if (!isSupported()) {
            return 0;
        }
        int i = harmonizeContextColor;
        if (i != 0) {
            return i;
        }
        int color = ApplicationLoader.applicationContext.getColor(R.color.system_accent1_600);
        harmonizeContextColor = color;
        return color;
    }

    @JvmStatic
    public static final void registerReceiver(Context context) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-63722151495215L);
        try {
            harmonizeContextColor = 0;
            overlayChangeReceiver.register(context);
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    @JvmStatic
    public static final void unregisterReceiver(Context context) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-63275474896431L);
        try {
            overlayChangeReceiver.unregister(context);
        } catch (Exception unused) {
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0018\u0010\u000b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/exteragram/messenger/utils/ui/MonetUtils$OverlayChangeReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "isRegistered", _UrlKt.FRAGMENT_ENCODE_SET, "register", _UrlKt.FRAGMENT_ENCODE_SET, "context", "Landroid/content/Context;", "unregister", "onReceive", "intent", "Landroid/content/Intent;", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class OverlayChangeReceiver extends BroadcastReceiver {
        private boolean isRegistered;

        public final void register(Context context) {
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-63150920844847L);
            if (this.isRegistered) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter(Deobfuscator$exteraGramDev$TMessagesProj.getString(-63116561106479L));
            intentFilter.addDataScheme(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62798733526575L));
            intentFilter.addDataSchemeSpecificPart(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62764373788207L), 0);
            context.registerReceiver(this, intentFilter);
            this.isRegistered = true;
        }

        public final void unregister(Context context) {
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-62867453003311L);
            if (this.isRegistered) {
                context.unregisterReceiver(this);
                this.isRegistered = false;
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-62833093264943L);
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-62936172480047L);
            if (Intrinsics.areEqual(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62888927839791L), intent.getAction())) {
                MonetUtils.harmonizeContextColor = 0;
                Theme.refreshMonetColors();
                if (Theme.isCurrentThemeMonet() || Theme.isCurrentAccentMonet()) {
                    Theme.applyTheme(Theme.getActiveTheme(), Theme.isCurrentThemeNight());
                }
            }
        }
    }

    private final void initSystemColors() {
        HashMap<String, Integer> map = COLOR_MAP;
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-63241115158063L), Integer.valueOf(R.color.system_accent1_10));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-63335604438575L), Integer.valueOf(R.color.system_accent1_50));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-63292654765615L), Integer.valueOf(R.color.system_accent1_100));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-63400028948015L), Integer.valueOf(R.color.system_accent1_200));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-63421503784495L), Integer.valueOf(R.color.system_accent1_300));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-63391439013423L), Integer.valueOf(R.color.system_accent1_400));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-63481633326639L), Integer.valueOf(R.color.system_accent1_500));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-63451568555567L), Integer.valueOf(R.color.system_accent1_600));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61892495427119L), Integer.valueOf(R.color.system_accent1_700));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61862430656047L), Integer.valueOf(R.color.system_accent1_800));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61952624969263L), Integer.valueOf(R.color.system_accent1_900));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61922560198191L), Integer.valueOf(R.color.system_accent2_10));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61948330001967L), Integer.valueOf(R.color.system_accent2_50));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62042819282479L), Integer.valueOf(R.color.system_accent2_100));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61995574642223L), Integer.valueOf(R.color.system_accent2_200));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62102948824623L), Integer.valueOf(R.color.system_accent2_300));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62055704184367L), Integer.valueOf(R.color.system_accent2_400));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61613322552879L), Integer.valueOf(R.color.system_accent2_500));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61634797389359L), Integer.valueOf(R.color.system_accent2_600));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61604732618287L), Integer.valueOf(R.color.system_accent2_700));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61694926931503L), Integer.valueOf(R.color.system_accent2_800));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61664862160431L), Integer.valueOf(R.color.system_accent2_900));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61755056473647L), Integer.valueOf(R.color.system_accent3_10));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61712106800687L), Integer.valueOf(R.color.system_accent3_50));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61737876604463L), Integer.valueOf(R.color.system_accent3_100));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61845250786863L), Integer.valueOf(R.color.system_accent3_200));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61798006146607L), Integer.valueOf(R.color.system_accent3_300));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62455136142895L), Integer.valueOf(R.color.system_accent3_400));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62407891502639L), Integer.valueOf(R.color.system_accent3_500));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62515265685039L), Integer.valueOf(R.color.system_accent3_600));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62468021044783L), Integer.valueOf(R.color.system_accent3_700));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62575395227183L), Integer.valueOf(R.color.system_accent3_800));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62596870063663L), Integer.valueOf(R.color.system_accent3_900));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62566805292591L), Integer.valueOf(R.color.system_neutral1_10));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62661294573103L), Integer.valueOf(R.color.system_neutral1_50));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62618344900143L), Integer.valueOf(R.color.system_neutral1_100));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62158783399471L), Integer.valueOf(R.color.system_neutral1_200));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62128718628399L), Integer.valueOf(R.color.system_neutral1_300));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62150193464879L), Integer.valueOf(R.color.system_neutral1_400));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62257567647279L), Integer.valueOf(R.color.system_neutral1_500));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62210323007023L), Integer.valueOf(R.color.system_neutral1_600));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62317697189423L), Integer.valueOf(R.color.system_neutral1_700));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62270452549167L), Integer.valueOf(R.color.system_neutral1_800));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62377826731567L), Integer.valueOf(R.color.system_neutral1_900));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62330582091311L), Integer.valueOf(R.color.system_neutral2_10));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-62356351895087L), Integer.valueOf(R.color.system_neutral2_50));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43209387689519L), Integer.valueOf(R.color.system_neutral2_100));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43179322918447L), Integer.valueOf(R.color.system_neutral2_200));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43269517231663L), Integer.valueOf(R.color.system_neutral2_300));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43239452460591L), Integer.valueOf(R.color.system_neutral2_400));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43329646773807L), Integer.valueOf(R.color.system_neutral2_500));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43299582002735L), Integer.valueOf(R.color.system_neutral2_600));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43321056839215L), Integer.valueOf(R.color.system_neutral2_700));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43428431021615L), Integer.valueOf(R.color.system_neutral2_800));
        map.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-43381186381359L), Integer.valueOf(R.color.system_neutral2_900));
    }
}
