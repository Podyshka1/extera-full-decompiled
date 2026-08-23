package com.exteragram.messenger.icons.p012ui.picker;

import android.app.Activity;
import com.exteragram.messenger.ExteraConfig;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.LaunchActivity;

/* JADX INFO: loaded from: classes.dex */
public final class IconObserver {
    public static final IconObserver INSTANCE = new IconObserver();
    private static final WeakHashMap iconSources = new WeakHashMap();

    private IconObserver() {
    }

    public final void log(int i) {
        BaseFragment safeLastFragment;
        if (ExteraConfig.editingIconPackId == null || (safeLastFragment = LaunchActivity.getSafeLastFragment()) == null) {
            return;
        }
        Activity parentActivity = safeLastFragment.getParentActivity();
        LaunchActivity launchActivity = parentActivity instanceof LaunchActivity ? (LaunchActivity) parentActivity : null;
        if (launchActivity != null) {
            IconPickerController.setActive(launchActivity, true);
        }
        WeakHashMap weakHashMap = iconSources;
        synchronized (weakHashMap) {
            try {
                Object hashSet = weakHashMap.get(safeLastFragment);
                if (hashSet == null) {
                    hashSet = new HashSet();
                    weakHashMap.put(safeLastFragment, hashSet);
                }
                ((Set) hashSet).add(Integer.valueOf(i));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void removeSource(BaseFragment owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        WeakHashMap weakHashMap = iconSources;
        synchronized (weakHashMap) {
        }
    }

    public final Set getUsedIcons() {
        Set set;
        List visibleFragments = LaunchActivity.getVisibleFragments();
        synchronized (iconSources) {
            try {
                Intrinsics.checkNotNull(visibleFragments);
                ArrayList arrayList = new ArrayList();
                Iterator it = visibleFragments.iterator();
                while (it.hasNext()) {
                    Set setEmptySet = (Set) iconSources.get((BaseFragment) it.next());
                    if (setEmptySet == null) {
                        setEmptySet = SetsKt.emptySet();
                    }
                    CollectionsKt.addAll(arrayList, setEmptySet);
                }
                set = CollectionsKt.toSet(arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
        return set;
    }

    public final void clear() {
        WeakHashMap weakHashMap = iconSources;
        synchronized (weakHashMap) {
            weakHashMap.clear();
            Unit unit = Unit.INSTANCE;
        }
    }
}
