package com.exteragram.messenger.utils.ui;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.color.MaterialColors;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.FileLog;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes.dex */
public final class MonetUtils {
    private static final HashMap COLOR_MAP;
    public static final MonetUtils INSTANCE;
    private static final Pattern PARAM_PATTERN;
    private static final OverlayChangeReceiver overlayChangeReceiver;

    private MonetUtils() {
    }

    static {
        MonetUtils monetUtils = new MonetUtils();
        INSTANCE = monetUtils;
        HashMap map = new HashMap();
        COLOR_MAP = map;
        PARAM_PATTERN = Pattern.compile("^([^(]+)\\(([^)]+)\\)?$");
        overlayChangeReceiver = new OverlayChangeReceiver();
        map.put("mBlack", Integer.valueOf(C2484R.color.black));
        map.put("mWhite", Integer.valueOf(C2484R.color.white));
        map.put("mRed200", Integer.valueOf(C2484R.color.mRed200));
        map.put("mRed500", Integer.valueOf(C2484R.color.mRed500));
        map.put("mRed800", Integer.valueOf(C2484R.color.mRed800));
        map.put("mGreen200", Integer.valueOf(C2484R.color.mGreen200));
        map.put("mGreen500", Integer.valueOf(C2484R.color.mGreen500));
        map.put("mGreen800", Integer.valueOf(C2484R.color.mGreen800));
        monetUtils.initSystemColors();
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c4 A[PHI: r15
  0x00c4: PHI (r15v2 'colorString' java.lang.String) = (r15v0 'colorString' java.lang.String), (r15v5 'colorString' java.lang.String) binds: [B:6:0x001a, B:16:0x0038] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final int getColor(String colorString) {
        int i;
        int i2;
        int i3;
        String string;
        Intrinsics.checkNotNullParameter(colorString, "colorString");
        if (colorString.length() == 0) {
            return 0;
        }
        try {
            Matcher matcher = PARAM_PATTERN.matcher(colorString);
            if (matcher.find()) {
                String strGroup = matcher.group(1);
                if (strGroup != null && (string = StringsKt.trim(strGroup).toString()) != null) {
                    colorString = string;
                }
                String strGroup2 = matcher.group(2);
                if (strGroup2 != null) {
                    Iterator it = StringsKt.split$default((CharSequence) strGroup2, new String[]{","}, false, 0, 6, (Object) null).iterator();
                    i = 100;
                    i2 = 100;
                    i3 = 100;
                    while (it.hasNext()) {
                        List listSplit$default = StringsKt.split$default((CharSequence) it.next(), new String[]{"="}, false, 0, 6, (Object) null);
                        if (listSplit$default.size() == 2) {
                            try {
                                String string2 = StringsKt.trim((String) listSplit$default.get(0)).toString();
                                int i4 = Integer.parseInt(StringsKt.trim((String) listSplit$default.get(1)).toString());
                                int iHashCode = string2.hashCode();
                                if (iHashCode != 97) {
                                    if (iHashCode != 108) {
                                        if (iHashCode == 115 && string2.equals("s")) {
                                            i2 = i4;
                                        }
                                    } else if (string2.equals("l")) {
                                        i3 = i4;
                                    }
                                } else if (string2.equals("a")) {
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
            Integer num = (Integer) COLOR_MAP.get(colorString);
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
                return (StringsKt.startsWith$default(colorString, "mR", false, 2, (Object) null) || StringsKt.startsWith$default(colorString, "mG", false, 2, (Object) null)) ? harmonize(color) : color;
            }
            return 0;
        } catch (Exception e) {
            FileLog.m955e(e);
            return 0;
        }
    }

    public static final int harmonize(int i) {
        return MaterialColors.harmonize(i, ApplicationLoader.applicationContext.getColor(R.color.system_accent1_600));
    }

    public static final void registerReceiver(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            overlayChangeReceiver.register(context);
        } catch (Exception e) {
            FileLog.m955e(e);
        }
    }

    public static final void unregisterReceiver(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            overlayChangeReceiver.unregister(context);
        } catch (Exception unused) {
        }
    }

    private static final class OverlayChangeReceiver extends BroadcastReceiver {
        private boolean isRegistered;

        public final void register(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (this.isRegistered) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter("android.intent.action.OVERLAY_CHANGED");
            intentFilter.addDataScheme("package");
            intentFilter.addDataSchemeSpecificPart("android", 0);
            context.registerReceiver(this, intentFilter);
            this.isRegistered = true;
        }

        public final void unregister(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (this.isRegistered) {
                context.unregisterReceiver(this);
                this.isRegistered = false;
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (Intrinsics.areEqual("android.intent.action.OVERLAY_CHANGED", intent.getAction()) && Theme.isCurrentThemeMonet()) {
                Theme.applyTheme(Theme.getActiveTheme(), Theme.isCurrentThemeNight());
            }
        }
    }

    private final void initSystemColors() {
        HashMap map = COLOR_MAP;
        map.put("a1_10", Integer.valueOf(R.color.system_accent1_10));
        map.put("a1_50", Integer.valueOf(R.color.system_accent1_50));
        map.put("a1_100", Integer.valueOf(R.color.system_accent1_100));
        map.put("a1_200", Integer.valueOf(R.color.system_accent1_200));
        map.put("a1_300", Integer.valueOf(R.color.system_accent1_300));
        map.put("a1_400", Integer.valueOf(R.color.system_accent1_400));
        map.put("a1_500", Integer.valueOf(R.color.system_accent1_500));
        map.put("a1_600", Integer.valueOf(R.color.system_accent1_600));
        map.put("a1_700", Integer.valueOf(R.color.system_accent1_700));
        map.put("a1_800", Integer.valueOf(R.color.system_accent1_800));
        map.put("a1_900", Integer.valueOf(R.color.system_accent1_900));
        map.put("a2_10", Integer.valueOf(R.color.system_accent2_10));
        map.put("a2_50", Integer.valueOf(R.color.system_accent2_50));
        map.put("a2_100", Integer.valueOf(R.color.system_accent2_100));
        map.put("a2_200", Integer.valueOf(R.color.system_accent2_200));
        map.put("a2_300", Integer.valueOf(R.color.system_accent2_300));
        map.put("a2_400", Integer.valueOf(R.color.system_accent2_400));
        map.put("a2_500", Integer.valueOf(R.color.system_accent2_500));
        map.put("a2_600", Integer.valueOf(R.color.system_accent2_600));
        map.put("a2_700", Integer.valueOf(R.color.system_accent2_700));
        map.put("a2_800", Integer.valueOf(R.color.system_accent2_800));
        map.put("a2_900", Integer.valueOf(R.color.system_accent2_900));
        map.put("a3_10", Integer.valueOf(R.color.system_accent3_10));
        map.put("a3_50", Integer.valueOf(R.color.system_accent3_50));
        map.put("a3_100", Integer.valueOf(R.color.system_accent3_100));
        map.put("a3_200", Integer.valueOf(R.color.system_accent3_200));
        map.put("a3_300", Integer.valueOf(R.color.system_accent3_300));
        map.put("a3_400", Integer.valueOf(R.color.system_accent3_400));
        map.put("a3_500", Integer.valueOf(R.color.system_accent3_500));
        map.put("a3_600", Integer.valueOf(R.color.system_accent3_600));
        map.put("a3_700", Integer.valueOf(R.color.system_accent3_700));
        map.put("a3_800", Integer.valueOf(R.color.system_accent3_800));
        map.put("a3_900", Integer.valueOf(R.color.system_accent3_900));
        map.put("n1_10", Integer.valueOf(R.color.system_neutral1_10));
        map.put("n1_50", Integer.valueOf(R.color.system_neutral1_50));
        map.put("n1_100", Integer.valueOf(R.color.system_neutral1_100));
        map.put("n1_200", Integer.valueOf(R.color.system_neutral1_200));
        map.put("n1_300", Integer.valueOf(R.color.system_neutral1_300));
        map.put("n1_400", Integer.valueOf(R.color.system_neutral1_400));
        map.put("n1_500", Integer.valueOf(R.color.system_neutral1_500));
        map.put("n1_600", Integer.valueOf(R.color.system_neutral1_600));
        map.put("n1_700", Integer.valueOf(R.color.system_neutral1_700));
        map.put("n1_800", Integer.valueOf(R.color.system_neutral1_800));
        map.put("n1_900", Integer.valueOf(R.color.system_neutral1_900));
        map.put("n2_10", Integer.valueOf(R.color.system_neutral2_10));
        map.put("n2_50", Integer.valueOf(R.color.system_neutral2_50));
        map.put("n2_100", Integer.valueOf(R.color.system_neutral2_100));
        map.put("n2_200", Integer.valueOf(R.color.system_neutral2_200));
        map.put("n2_300", Integer.valueOf(R.color.system_neutral2_300));
        map.put("n2_400", Integer.valueOf(R.color.system_neutral2_400));
        map.put("n2_500", Integer.valueOf(R.color.system_neutral2_500));
        map.put("n2_600", Integer.valueOf(R.color.system_neutral2_600));
        map.put("n2_700", Integer.valueOf(R.color.system_neutral2_700));
        map.put("n2_800", Integer.valueOf(R.color.system_neutral2_800));
        map.put("n2_900", Integer.valueOf(R.color.system_neutral2_900));
    }
}
