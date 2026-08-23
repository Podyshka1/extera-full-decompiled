package androidx.sharetarget;

import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.service.chooser.ChooserTarget;
import android.service.chooser.ChooserTargetService;
import android.util.Log;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.sharetarget.ShareTargetCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ChooserTargetServiceCompat extends ChooserTargetService {
    @Override // android.service.chooser.ChooserTargetService
    public List<ChooserTarget> onGetChooserTargets(ComponentName componentName, IntentFilter intentFilter) {
        Context applicationContext = getApplicationContext();
        ArrayList<ShareTargetCompat> shareTargets = ShareTargetXmlParser.getShareTargets(applicationContext);
        ArrayList arrayList = new ArrayList();
        int size = shareTargets.size();
        int i = 0;
        while (i < size) {
            ShareTargetCompat shareTargetCompat = shareTargets.get(i);
            i++;
            ShareTargetCompat shareTargetCompat2 = shareTargetCompat;
            if (shareTargetCompat2.mTargetClass.equals(componentName.getClassName())) {
                ShareTargetCompat.TargetData[] targetDataArr = shareTargetCompat2.mTargetData;
                int length = targetDataArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (intentFilter.hasDataType(targetDataArr[i2].mMimeType)) {
                        arrayList.add(shareTargetCompat2);
                        break;
                    }
                    i2++;
                }
            }
        }
        if (arrayList.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ShortcutInfoCompatSaverImpl shortcutInfoCompatSaverImpl = ShortcutInfoCompatSaverImpl.getInstance(applicationContext);
        try {
            List<ShortcutInfoCompat> shortcuts = shortcutInfoCompatSaverImpl.getShortcuts();
            if (shortcuts == null || shortcuts.isEmpty()) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList2 = new ArrayList();
            for (ShortcutInfoCompat shortcutInfoCompat : shortcuts) {
                int size2 = arrayList.size();
                int i3 = 0;
                while (true) {
                    if (i3 < size2) {
                        Object obj = arrayList.get(i3);
                        i3++;
                        ShareTargetCompat shareTargetCompat3 = (ShareTargetCompat) obj;
                        if (shortcutInfoCompat.getCategories().containsAll(Arrays.asList(shareTargetCompat3.mCategories))) {
                            arrayList2.add(new ShortcutHolder(shortcutInfoCompat, new ComponentName(applicationContext.getPackageName(), shareTargetCompat3.mTargetClass)));
                            break;
                        }
                    }
                }
            }
            return convertShortcutsToChooserTargets(shortcutInfoCompatSaverImpl, arrayList2);
        } catch (Exception e) {
            Log.e("ChooserServiceCompat", "Failed to retrieve shortcuts: ", e);
            return Collections.EMPTY_LIST;
        }
    }

    public static List<ChooserTarget> convertShortcutsToChooserTargets(ShortcutInfoCompatSaverImpl shortcutInfoCompatSaverImpl, List<ShortcutHolder> list) {
        IconCompat shortcutIcon;
        if (list.isEmpty()) {
            return new ArrayList();
        }
        Collections.sort(list);
        ArrayList arrayList = new ArrayList();
        int rank = list.get(0).getShortcut().getRank();
        float f = 1.0f;
        int rank2 = rank;
        for (ShortcutHolder shortcutHolder : list) {
            ShortcutInfoCompat shortcut = shortcutHolder.getShortcut();
            try {
                shortcutIcon = shortcutInfoCompatSaverImpl.getShortcutIcon(shortcut.getId());
            } catch (Exception e) {
                Log.e("ChooserServiceCompat", "Failed to retrieve shortcut icon: ", e);
                shortcutIcon = null;
            }
            Bundle bundle = new Bundle();
            bundle.putString("android.intent.extra.shortcut.ID", shortcut.getId());
            if (rank2 != shortcut.getRank()) {
                f -= 0.01f;
                rank2 = shortcut.getRank();
            }
            float f2 = f;
            arrayList.add(new ChooserTarget(shortcut.getShortLabel(), shortcutIcon != null ? shortcutIcon.toIcon() : null, f2, shortcutHolder.getTargetClass(), bundle));
            f = f2;
        }
        return arrayList;
    }

    public static class ShortcutHolder implements Comparable<ShortcutHolder> {
        private final ShortcutInfoCompat mShortcut;
        private final ComponentName mTargetClass;

        public ShortcutHolder(ShortcutInfoCompat shortcutInfoCompat, ComponentName componentName) {
            this.mShortcut = shortcutInfoCompat;
            this.mTargetClass = componentName;
        }

        public ShortcutInfoCompat getShortcut() {
            return this.mShortcut;
        }

        public ComponentName getTargetClass() {
            return this.mTargetClass;
        }

        @Override // java.lang.Comparable
        public int compareTo(ShortcutHolder shortcutHolder) {
            return getShortcut().getRank() - shortcutHolder.getShortcut().getRank();
        }
    }
}
