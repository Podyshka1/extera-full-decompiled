package androidx.core.content.pm;

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
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutInfoCompatSaver;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.util.Preconditions;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class ShortcutManagerCompat {
    private static volatile List<Object> sShortcutInfoChangeListeners;
    private static volatile ShortcutInfoCompatSaver<?> sShortcutInfoCompatSaver;

    public static boolean isRequestPinShortcutSupported(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            return ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m())).isRequestPinShortcutSupported();
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
            return ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m())).requestPinShortcut(shortcutInfoCompat.toShortcutInfo(), intentSender);
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

    public static List<ShortcutInfoCompat> getShortcuts(Context context, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            return ShortcutInfoCompat.fromShortcuts(context, ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m())).getShortcuts(i));
        }
        if (i2 >= 25) {
            ShortcutManager shortcutManagerM92m = ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m()));
            ArrayList arrayList = new ArrayList();
            if ((i & 1) != 0) {
                arrayList.addAll(shortcutManagerM92m.getManifestShortcuts());
            }
            if ((i & 2) != 0) {
                arrayList.addAll(shortcutManagerM92m.getDynamicShortcuts());
            }
            if ((i & 4) != 0) {
                arrayList.addAll(shortcutManagerM92m.getPinnedShortcuts());
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

    public static boolean addDynamicShortcuts(Context context, List<ShortcutInfoCompat> list) {
        List<ShortcutInfoCompat> listRemoveShortcutsExcludedFromSurface = removeShortcutsExcludedFromSurface(list, 1);
        int i = Build.VERSION.SDK_INT;
        if (i <= 29) {
            convertUriIconsToBitmapIcons(context, listRemoveShortcutsExcludedFromSurface);
        }
        if (i >= 25) {
            ArrayList arrayList = new ArrayList();
            Iterator<ShortcutInfoCompat> it = listRemoveShortcutsExcludedFromSurface.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toShortcutInfo());
            }
            if (!ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m())).addDynamicShortcuts(arrayList)) {
                return false;
            }
        }
        getShortcutInfoSaverInstance(context).addShortcuts(listRemoveShortcutsExcludedFromSurface);
        Iterator<Object> it2 = getShortcutInfoListeners(context).iterator();
        if (!it2.hasNext()) {
            return true;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it2.next());
        throw null;
    }

    public static int getMaxShortcutCountPerActivity(Context context) {
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            return ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m())).getMaxShortcutCountPerActivity();
        }
        return 5;
    }

    public static void reportShortcutUsed(Context context, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        if (Build.VERSION.SDK_INT >= 25) {
            ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m())).reportShortcutUsed(str);
        }
        Iterator<Object> it = getShortcutInfoListeners(context).iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            Collections.singletonList(str);
            throw null;
        }
    }

    public static List<ShortcutInfoCompat> getDynamicShortcuts(Context context) {
        if (Build.VERSION.SDK_INT >= 25) {
            List<ShortcutInfo> dynamicShortcuts = ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m())).getDynamicShortcuts();
            ArrayList arrayList = new ArrayList(dynamicShortcuts.size());
            Iterator<ShortcutInfo> it = dynamicShortcuts.iterator();
            while (it.hasNext()) {
                arrayList.add(new ShortcutInfoCompat.Builder(context, ShortcutInfoCompat$$ExternalSyntheticApiModelOutline2.m90m(it.next())).build());
            }
            return arrayList;
        }
        try {
            return getShortcutInfoSaverInstance(context).getShortcuts();
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public static boolean updateShortcuts(Context context, List<ShortcutInfoCompat> list) {
        List<ShortcutInfoCompat> listRemoveShortcutsExcludedFromSurface = removeShortcutsExcludedFromSurface(list, 1);
        int i = Build.VERSION.SDK_INT;
        if (i <= 29) {
            convertUriIconsToBitmapIcons(context, listRemoveShortcutsExcludedFromSurface);
        }
        if (i >= 25) {
            ArrayList arrayList = new ArrayList();
            Iterator<ShortcutInfoCompat> it = listRemoveShortcutsExcludedFromSurface.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toShortcutInfo());
            }
            if (!ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m())).updateShortcuts(arrayList)) {
                return false;
            }
        }
        getShortcutInfoSaverInstance(context).addShortcuts(listRemoveShortcutsExcludedFromSurface);
        Iterator<Object> it2 = getShortcutInfoListeners(context).iterator();
        if (!it2.hasNext()) {
            return true;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it2.next());
        throw null;
    }

    public static boolean convertUriIconToBitmapIcon(Context context, ShortcutInfoCompat shortcutInfoCompat) {
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

    public static void convertUriIconsToBitmapIcons(Context context, List<ShortcutInfoCompat> list) {
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

    public static void removeDynamicShortcuts(Context context, List<String> list) {
        if (Build.VERSION.SDK_INT >= 25) {
            ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m())).removeDynamicShortcuts(list);
        }
        getShortcutInfoSaverInstance(context).removeShortcuts(list);
        Iterator<Object> it = getShortcutInfoListeners(context).iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
    }

    public static void removeAllDynamicShortcuts(Context context) {
        if (Build.VERSION.SDK_INT >= 25) {
            ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m())).removeAllDynamicShortcuts();
        }
        getShortcutInfoSaverInstance(context).removeAllShortcuts();
        Iterator<Object> it = getShortcutInfoListeners(context).iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
    }

    public static boolean pushDynamicShortcut(Context context, ShortcutInfoCompat shortcutInfoCompat) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(shortcutInfoCompat);
        int i = Build.VERSION.SDK_INT;
        if (i <= 32 && shortcutInfoCompat.isExcludedFromSurfaces(1)) {
            Iterator<Object> it = getShortcutInfoListeners(context).iterator();
            if (!it.hasNext()) {
                return true;
            }
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
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
            ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m())).pushDynamicShortcut(shortcutInfoCompat.toShortcutInfo());
        } else if (i >= 25) {
            ShortcutManager shortcutManagerM92m = ShortcutManagerCompat$$ExternalSyntheticApiModelOutline1.m92m(context.getSystemService(ShortcutManagerCompat$$ExternalSyntheticApiModelOutline0.m91m()));
            if (shortcutManagerM92m.isRateLimitingActive()) {
                return false;
            }
            List<ShortcutInfo> dynamicShortcuts = shortcutManagerM92m.getDynamicShortcuts();
            if (dynamicShortcuts.size() >= maxShortcutCountPerActivity) {
                shortcutManagerM92m.removeDynamicShortcuts(Arrays.asList(Api25Impl.getShortcutInfoWithLowestRank(dynamicShortcuts)));
            }
            shortcutManagerM92m.addDynamicShortcuts(Arrays.asList(shortcutInfoCompat.toShortcutInfo()));
        }
        ShortcutInfoCompatSaver<?> shortcutInfoSaverInstance = getShortcutInfoSaverInstance(context);
        try {
            List<ShortcutInfoCompat> shortcuts = shortcutInfoSaverInstance.getShortcuts();
            if (shortcuts.size() >= maxShortcutCountPerActivity) {
                shortcutInfoSaverInstance.removeShortcuts(Arrays.asList(getShortcutInfoCompatWithLowestRank(shortcuts)));
            }
            shortcutInfoSaverInstance.addShortcuts(Arrays.asList(shortcutInfoCompat));
            Iterator<Object> it2 = getShortcutInfoListeners(context).iterator();
            if (!it2.hasNext()) {
                reportShortcutUsed(context, shortcutInfoCompat.getId());
                return true;
            }
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it2.next());
            Collections.singletonList(shortcutInfoCompat);
            throw null;
        } catch (Exception unused) {
            Iterator<Object> it3 = getShortcutInfoListeners(context).iterator();
            if (!it3.hasNext()) {
                reportShortcutUsed(context, shortcutInfoCompat.getId());
                return false;
            }
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it3.next());
            Collections.singletonList(shortcutInfoCompat);
            throw null;
        } catch (Throwable th) {
            Iterator<Object> it4 = getShortcutInfoListeners(context).iterator();
            if (!it4.hasNext()) {
                reportShortcutUsed(context, shortcutInfoCompat.getId());
                throw th;
            }
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it4.next());
            Collections.singletonList(shortcutInfoCompat);
            throw null;
        }
    }

    private static String getShortcutInfoCompatWithLowestRank(List<ShortcutInfoCompat> list) {
        int rank = -1;
        String id = null;
        for (ShortcutInfoCompat shortcutInfoCompat : list) {
            if (shortcutInfoCompat.getRank() > rank) {
                id = shortcutInfoCompat.getId();
                rank = shortcutInfoCompat.getRank();
            }
        }
        return id;
    }

    private static ShortcutInfoCompatSaver<?> getShortcutInfoSaverInstance(Context context) {
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

    private static List<Object> getShortcutInfoListeners(Context context) {
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
                        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Class.forName(string, false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context));
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

    private static List<ShortcutInfoCompat> removeShortcutsExcludedFromSurface(List<ShortcutInfoCompat> list, int i) {
        Objects.requireNonNull(list);
        if (Build.VERSION.SDK_INT > 32) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list);
        for (ShortcutInfoCompat shortcutInfoCompat : list) {
            if (shortcutInfoCompat.isExcludedFromSurfaces(i)) {
                arrayList.remove(shortcutInfoCompat);
            }
        }
        return arrayList;
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class Api25Impl {
        public static String getShortcutInfoWithLowestRank(List<ShortcutInfo> list) {
            int rank = -1;
            String id = null;
            for (ShortcutInfo shortcutInfo : list) {
                if (shortcutInfo.getRank() > rank) {
                    id = shortcutInfo.getId();
                    rank = shortcutInfo.getRank();
                }
            }
            return id;
        }
    }
}
