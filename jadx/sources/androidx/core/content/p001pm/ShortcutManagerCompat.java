package androidx.core.content.p001pm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.core.content.ContextCompat;
import androidx.core.content.p001pm.ShortcutInfoCompat;
import androidx.core.content.p001pm.ShortcutInfoCompatSaver;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.util.Preconditions;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class ShortcutManagerCompat {
    private static volatile List sShortcutInfoChangeListeners;
    private static volatile ShortcutInfoCompatSaver sShortcutInfoCompatSaver;

    public static boolean isRequestPinShortcutSupported(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            return ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m117m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m116m())).isRequestPinShortcutSupported();
        }
        if (ContextCompat.checkSelfPermission(context, "com.android.launcher.permission.INSTALL_SHORTCUT") != 0) {
            return false;
        }
        Iterator<ResolveInfo> it = context.getPackageManager().queryBroadcastReceivers(new Intent("com.android.launcher.action.INSTALL_SHORTCUT"), 0).iterator();
        while (it.hasNext()) {
            String str = it.next().activityInfo.permission;
            if (TextUtils.isEmpty(str) || "com.android.launcher.permission.INSTALL_SHORTCUT".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean requestPinShortcut(Context context, ShortcutInfoCompat shortcutInfoCompat, final IntentSender intentSender) {
        int i = Build.VERSION.SDK_INT;
        if (i <= 32 && shortcutInfoCompat.isExcludedFromSurfaces(1)) {
            return false;
        }
        if (i >= 26) {
            return ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m117m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m116m())).requestPinShortcut(shortcutInfoCompat.toShortcutInfo(), intentSender);
        }
        if (!isRequestPinShortcutSupported(context)) {
            return false;
        }
        Intent intentAddToIntent = shortcutInfoCompat.addToIntent(new Intent("com.android.launcher.action.INSTALL_SHORTCUT"));
        if (intentSender == null) {
            context.sendBroadcast(intentAddToIntent);
            return true;
        }
        context.sendOrderedBroadcast(intentAddToIntent, null, new BroadcastReceiver() { // from class: androidx.core.content.pm.ShortcutManagerCompat.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                try {
                    intentSender.sendIntent(context2, 0, null, null, null);
                } catch (IntentSender.SendIntentException unused) {
                }
            }
        }, null, -1, null, null);
        return true;
    }

    public static List getShortcuts(Context context, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            return ShortcutInfoCompat.fromShortcuts(context, ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m117m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m116m())).getShortcuts(i));
        }
        if (i2 >= 25) {
            ShortcutManager shortcutManagerM117m = ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m117m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m116m()));
            ArrayList arrayList = new ArrayList();
            if ((i & 1) != 0) {
                arrayList.addAll(shortcutManagerM117m.getManifestShortcuts());
            }
            if ((i & 2) != 0) {
                arrayList.addAll(shortcutManagerM117m.getDynamicShortcuts());
            }
            if ((i & 4) != 0) {
                arrayList.addAll(shortcutManagerM117m.getPinnedShortcuts());
            }
            return ShortcutInfoCompat.fromShortcuts(context, arrayList);
        }
        if ((i & 2) != 0) {
            try {
                return getShortcutInfoSaverInstance(context).getShortcuts();
            } catch (Exception unused) {
            }
        }
        return Collections.EMPTY_LIST;
    }

    public static boolean addDynamicShortcuts(Context context, List list) {
        List listRemoveShortcutsExcludedFromSurface = removeShortcutsExcludedFromSurface(list, 1);
        int i = Build.VERSION.SDK_INT;
        if (i <= 29) {
            convertUriIconsToBitmapIcons(context, listRemoveShortcutsExcludedFromSurface);
        }
        if (i >= 25) {
            ArrayList arrayList = new ArrayList();
            Iterator it = listRemoveShortcutsExcludedFromSurface.iterator();
            while (it.hasNext()) {
                arrayList.add(((ShortcutInfoCompat) it.next()).toShortcutInfo());
            }
            if (!ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m117m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m116m())).addDynamicShortcuts(arrayList)) {
                return false;
            }
        }
        getShortcutInfoSaverInstance(context).addShortcuts(listRemoveShortcutsExcludedFromSurface);
        Iterator it2 = getShortcutInfoListeners(context).iterator();
        if (!it2.hasNext()) {
            return true;
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it2.next());
        throw null;
    }

    public static int getMaxShortcutCountPerActivity(Context context) {
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            return ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m117m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m116m())).getMaxShortcutCountPerActivity();
        }
        return 5;
    }

    public static void reportShortcutUsed(Context context, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        if (Build.VERSION.SDK_INT >= 25) {
            ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m117m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m116m())).reportShortcutUsed(str);
        }
        Iterator it = getShortcutInfoListeners(context).iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            Collections.singletonList(str);
            throw null;
        }
    }

    public static List getDynamicShortcuts(Context context) {
        if (Build.VERSION.SDK_INT >= 25) {
            List<ShortcutInfo> dynamicShortcuts = ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m117m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m116m())).getDynamicShortcuts();
            ArrayList arrayList = new ArrayList(dynamicShortcuts.size());
            Iterator<ShortcutInfo> it = dynamicShortcuts.iterator();
            while (it.hasNext()) {
                arrayList.add(new ShortcutInfoCompat.Builder(context, ShortcutInfoCompat$$ExternalSyntheticApiModelOutline2.m115m(it.next())).build());
            }
            return arrayList;
        }
        try {
            return getShortcutInfoSaverInstance(context).getShortcuts();
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public static boolean updateShortcuts(Context context, List list) {
        List listRemoveShortcutsExcludedFromSurface = removeShortcutsExcludedFromSurface(list, 1);
        int i = Build.VERSION.SDK_INT;
        if (i <= 29) {
            convertUriIconsToBitmapIcons(context, listRemoveShortcutsExcludedFromSurface);
        }
        if (i >= 25) {
            ArrayList arrayList = new ArrayList();
            Iterator it = listRemoveShortcutsExcludedFromSurface.iterator();
            while (it.hasNext()) {
                arrayList.add(((ShortcutInfoCompat) it.next()).toShortcutInfo());
            }
            if (!ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m117m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m116m())).updateShortcuts(arrayList)) {
                return false;
            }
        }
        getShortcutInfoSaverInstance(context).addShortcuts(listRemoveShortcutsExcludedFromSurface);
        Iterator it2 = getShortcutInfoListeners(context).iterator();
        if (!it2.hasNext()) {
            return true;
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it2.next());
        throw null;
    }

    static boolean convertUriIconToBitmapIcon(Context context, ShortcutInfoCompat shortcutInfoCompat) {
        Bitmap bitmapDecodeStream;
        IconCompat iconCompatCreateWithBitmap;
        IconCompat iconCompat = shortcutInfoCompat.mIcon;
        if (iconCompat == null) {
            return false;
        }
        int i = iconCompat.mType;
        if (i != 6 && i != 4) {
            return true;
        }
        InputStream uriInputStream = iconCompat.getUriInputStream(context);
        if (uriInputStream == null || (bitmapDecodeStream = BitmapFactory.decodeStream(uriInputStream)) == null) {
            return false;
        }
        if (i == 6) {
            iconCompatCreateWithBitmap = IconCompat.createWithAdaptiveBitmap(bitmapDecodeStream);
        } else {
            iconCompatCreateWithBitmap = IconCompat.createWithBitmap(bitmapDecodeStream);
        }
        shortcutInfoCompat.mIcon = iconCompatCreateWithBitmap;
        return true;
    }

    static void convertUriIconsToBitmapIcons(Context context, List list) {
        ArrayList arrayList = new ArrayList(list);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ShortcutInfoCompat shortcutInfoCompat = (ShortcutInfoCompat) obj;
            if (!convertUriIconToBitmapIcon(context, shortcutInfoCompat)) {
                list.remove(shortcutInfoCompat);
            }
        }
    }

    public static void removeDynamicShortcuts(Context context, List list) {
        if (Build.VERSION.SDK_INT >= 25) {
            ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m117m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m116m())).removeDynamicShortcuts(list);
        }
        getShortcutInfoSaverInstance(context).removeShortcuts(list);
        Iterator it = getShortcutInfoListeners(context).iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            throw null;
        }
    }

    public static void removeAllDynamicShortcuts(Context context) {
        if (Build.VERSION.SDK_INT >= 25) {
            ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m117m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m116m())).removeAllDynamicShortcuts();
        }
        getShortcutInfoSaverInstance(context).removeAllShortcuts();
        Iterator it = getShortcutInfoListeners(context).iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            throw null;
        }
    }

    public static boolean pushDynamicShortcut(Context context, ShortcutInfoCompat shortcutInfoCompat) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(shortcutInfoCompat);
        int i = Build.VERSION.SDK_INT;
        if (i <= 32 && shortcutInfoCompat.isExcludedFromSurfaces(1)) {
            Iterator it = getShortcutInfoListeners(context).iterator();
            if (!it.hasNext()) {
                return true;
            }
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            Collections.singletonList(shortcutInfoCompat);
            throw null;
        }
        int maxShortcutCountPerActivity = getMaxShortcutCountPerActivity(context);
        if (maxShortcutCountPerActivity == 0) {
            return false;
        }
        if (i <= 29) {
            convertUriIconToBitmapIcon(context, shortcutInfoCompat);
        }
        if (i >= 30) {
            ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m117m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m116m())).pushDynamicShortcut(shortcutInfoCompat.toShortcutInfo());
        } else if (i >= 25) {
            ShortcutManager shortcutManagerM117m = ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m117m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m116m()));
            if (shortcutManagerM117m.isRateLimitingActive()) {
                return false;
            }
            List<ShortcutInfo> dynamicShortcuts = shortcutManagerM117m.getDynamicShortcuts();
            if (dynamicShortcuts.size() >= maxShortcutCountPerActivity) {
                shortcutManagerM117m.removeDynamicShortcuts(Arrays.asList(Api25Impl.getShortcutInfoWithLowestRank(dynamicShortcuts)));
            }
            shortcutManagerM117m.addDynamicShortcuts(Arrays.asList(shortcutInfoCompat.toShortcutInfo()));
        }
        ShortcutInfoCompatSaver shortcutInfoSaverInstance = getShortcutInfoSaverInstance(context);
        try {
            List shortcuts = shortcutInfoSaverInstance.getShortcuts();
            if (shortcuts.size() >= maxShortcutCountPerActivity) {
                shortcutInfoSaverInstance.removeShortcuts(Arrays.asList(getShortcutInfoCompatWithLowestRank(shortcuts)));
            }
            shortcutInfoSaverInstance.addShortcuts(Arrays.asList(shortcutInfoCompat));
            Iterator it2 = getShortcutInfoListeners(context).iterator();
            if (!it2.hasNext()) {
                reportShortcutUsed(context, shortcutInfoCompat.getId());
                return true;
            }
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it2.next());
            Collections.singletonList(shortcutInfoCompat);
            throw null;
        } catch (Exception unused) {
            Iterator it3 = getShortcutInfoListeners(context).iterator();
            if (!it3.hasNext()) {
                reportShortcutUsed(context, shortcutInfoCompat.getId());
                return false;
            }
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it3.next());
            Collections.singletonList(shortcutInfoCompat);
            throw null;
        } catch (Throwable th) {
            Iterator it4 = getShortcutInfoListeners(context).iterator();
            if (!it4.hasNext()) {
                reportShortcutUsed(context, shortcutInfoCompat.getId());
                throw th;
            }
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it4.next());
            Collections.singletonList(shortcutInfoCompat);
            throw null;
        }
    }

    private static String getShortcutInfoCompatWithLowestRank(List list) {
        Iterator it = list.iterator();
        int rank = -1;
        String id = null;
        while (it.hasNext()) {
            ShortcutInfoCompat shortcutInfoCompat = (ShortcutInfoCompat) it.next();
            if (shortcutInfoCompat.getRank() > rank) {
                id = shortcutInfoCompat.getId();
                rank = shortcutInfoCompat.getRank();
            }
        }
        return id;
    }

    private static ShortcutInfoCompatSaver getShortcutInfoSaverInstance(Context context) {
        if (sShortcutInfoCompatSaver == null) {
            try {
                sShortcutInfoCompatSaver = (ShortcutInfoCompatSaver) Class.forName("androidx.sharetarget.ShortcutInfoCompatSaverImpl", false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context);
            } catch (Exception unused) {
            }
            if (sShortcutInfoCompatSaver == null) {
                sShortcutInfoCompatSaver = new ShortcutInfoCompatSaver.NoopImpl();
            }
        }
        return sShortcutInfoCompatSaver;
    }

    private static List getShortcutInfoListeners(Context context) {
        Bundle bundle;
        String string;
        if (sShortcutInfoChangeListeners == null) {
            ArrayList arrayList = new ArrayList();
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("androidx.core.content.pm.SHORTCUT_LISTENER");
            intent.setPackage(context.getPackageName());
            Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent, 128).iterator();
            while (it.hasNext()) {
                ActivityInfo activityInfo = it.next().activityInfo;
                if (activityInfo != null && (bundle = activityInfo.metaData) != null && (string = bundle.getString("androidx.core.content.pm.shortcut_listener_impl")) != null) {
                    try {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(Class.forName(string, false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context));
                        arrayList.add(null);
                    } catch (Exception unused) {
                    }
                }
            }
            if (sShortcutInfoChangeListeners == null) {
                sShortcutInfoChangeListeners = arrayList;
            }
        }
        return sShortcutInfoChangeListeners;
    }

    private static List removeShortcutsExcludedFromSurface(List list, int i) {
        Objects.requireNonNull(list);
        if (Build.VERSION.SDK_INT > 32) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ShortcutInfoCompat shortcutInfoCompat = (ShortcutInfoCompat) it.next();
            if (shortcutInfoCompat.isExcludedFromSurfaces(i)) {
                arrayList.remove(shortcutInfoCompat);
            }
        }
        return arrayList;
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static class Api25Impl {
        static String getShortcutInfoWithLowestRank(List list) {
            Iterator it = list.iterator();
            int rank = -1;
            String id = null;
            while (it.hasNext()) {
                ShortcutInfo shortcutInfo = (ShortcutInfo) it.next();
                if (shortcutInfo.getRank() > rank) {
                    id = shortcutInfo.getId();
                    rank = shortcutInfo.getRank();
                }
            }
            return id;
        }
    }
}
