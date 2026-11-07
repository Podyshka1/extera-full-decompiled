package androidx.view.internal;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.view.Lifecycle;
import androidx.view.LifecycleEventObserver;
import androidx.view.LifecycleOwner;
import androidx.view.SavedStateReader;
import androidx.view.SavedStateRegistry;
import androidx.view.SavedStateRegistryOwner;
import androidx.view.SavedStateWriter;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.OkHttpClient$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\b\u0000\u0018\u0000 42\u00020\u0001:\u00014B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f2\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00052\u000e\u0010\u0017\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\fH\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u001b\u0010\u001d\u001a\u00020\u00052\n\u0010\u001b\u001a\u00060\u000bj\u0002`\fH\u0001¢\u0006\u0004\b\u001c\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001eR \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u001f\u001a\u0004\b \u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R \u0010&\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u001e\u0010+\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R$\u0010.\u001a\u00020(2\u0006\u0010-\u001a\u00020(8G@BX\u0086\u000e¢\u0006\f\n\u0004\b.\u0010*\u001a\u0004\b.\u0010/R\"\u00100\u001a\u00020(8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b0\u0010*\u001a\u0004\b1\u0010/\"\u0004\b2\u00103¨\u00065"}, d2 = {"Landroidx/savedstate/internal/SavedStateRegistryImpl;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/savedstate/SavedStateRegistryOwner;", "owner", "Lkotlin/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "onAttach", "<init>", "(Landroidx/savedstate/SavedStateRegistryOwner;Lkotlin/jvm/functions/Function0;)V", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.KEY, "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "consumeRestoredStateForKey", "(Ljava/lang/String;)Landroid/os/Bundle;", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "provider", "registerSavedStateProvider", "(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V", "getSavedStateProvider", "(Ljava/lang/String;)Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "performAttach", "()V", "savedState", "performRestore$savedstate", "(Landroid/os/Bundle;)V", "performRestore", "outBundle", "performSave$savedstate", "performSave", "Landroidx/savedstate/SavedStateRegistryOwner;", "Lkotlin/jvm/functions/Function0;", "getOnAttach$savedstate", "()Lkotlin/jvm/functions/Function0;", "Landroidx/savedstate/internal/SynchronizedObject;", "lock", "Landroidx/savedstate/internal/SynchronizedObject;", _UrlKt.FRAGMENT_ENCODE_SET, "keyToProviders", "Ljava/util/Map;", _UrlKt.FRAGMENT_ENCODE_SET, "attached", "Z", "restoredState", "Landroid/os/Bundle;", "value", "isRestored", "()Z", "isAllowingSavingState", "isAllowingSavingState$savedstate", "setAllowingSavingState$savedstate", "(Z)V", "Companion", "savedstate"}, m862k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSavedStateRegistryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateRegistryImpl.kt\nandroidx/savedstate/internal/SavedStateRegistryImpl\n+ 2 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 3 SynchronizedObject.kt\nandroidx/savedstate/internal/SynchronizedObjectKt\n+ 4 SynchronizedObject.jvm.kt\nandroidx/savedstate/internal/SynchronizedObject_jvmKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 7 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 8 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,154:1\n90#2:155\n106#2:156\n90#2:157\n90#2:165\n106#2:187\n90#2:190\n106#2:191\n41#3:158\n41#3:160\n41#3:162\n41#3:188\n23#4:159\n23#4:161\n23#4:163\n23#4:189\n1#5:164\n1#5:186\n27#6:166\n47#6:167\n32#6,4:168\n31#6,8:178\n126#7:172\n153#7,3:173\n37#8,2:176\n*S KotlinDebug\n*F\n+ 1 SavedStateRegistryImpl.kt\nandroidx/savedstate/internal/SavedStateRegistryImpl\n*L\n55#1:155\n56#1:156\n57#1:157\n121#1:165\n135#1:187\n144#1:190\n145#1:191\n66#1:158\n75#1:160\n84#1:162\n137#1:188\n66#1:159\n75#1:161\n84#1:163\n137#1:189\n135#1:186\n135#1:166\n135#1:167\n135#1:168,4\n135#1:178,8\n135#1:172\n135#1:173,3\n135#1:176,2\n*E\n"})
public final class SavedStateRegistryImpl {
    private static final Companion Companion = new Companion(null);
    private boolean attached;
    private boolean isRestored;
    private final Function0<Unit> onAttach;
    private final SavedStateRegistryOwner owner;
    private Bundle restoredState;
    private final SynchronizedObject lock = new SynchronizedObject();
    private final Map<String, SavedStateRegistry.SavedStateProvider> keyToProviders = new LinkedHashMap();
    private boolean isAllowingSavingState = true;

    public SavedStateRegistryImpl(SavedStateRegistryOwner savedStateRegistryOwner, Function0<Unit> function0) {
        this.owner = savedStateRegistryOwner;
        this.onAttach = function0;
    }

    /* JADX INFO: renamed from: isAllowingSavingState$savedstate, reason: from getter */
    public final boolean getIsAllowingSavingState() {
        return this.isAllowingSavingState;
    }

    public final void performSave$savedstate(Bundle outBundle) {
        Pair[] pairArr;
        Map mapEmptyMap = MapsKt.emptyMap();
        if (mapEmptyMap.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(mapEmptyMap.size());
            for (Map.Entry entry : mapEmptyMap.entrySet()) {
                arrayList.add(TuplesKt.to((String) entry.getKey(), entry.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleBundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        Bundle bundleM2025constructorimpl = SavedStateWriter.m2025constructorimpl(bundleBundleOf);
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            SavedStateWriter.m2026putAllimpl(bundleM2025constructorimpl, bundle);
        }
        synchronized (this.lock) {
            try {
                for (Map.Entry entry2 : this.keyToProviders.entrySet()) {
                    SavedStateWriter.m2027putSavedStateimpl(bundleM2025constructorimpl, (String) entry2.getKey(), ((SavedStateRegistry.SavedStateProvider) entry2.getValue()).saveState());
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (SavedStateReader.m2023isEmptyimpl(SavedStateReader.m2018constructorimpl(bundleBundleOf))) {
            return;
        }
        SavedStateWriter.m2027putSavedStateimpl(SavedStateWriter.m2025constructorimpl(outBundle), "androidx.lifecycle.BundlableSavedStateRegistry.key", bundleBundleOf);
    }

    public final Bundle consumeRestoredStateForKey(String key) {
        if (!this.isRestored) {
            Segment$$ExternalSyntheticBUOutline1.m925m("You can 'consumeRestoredStateForKey' only after the corresponding component has moved to the 'CREATED' state");
            return null;
        }
        Bundle bundle = this.restoredState;
        if (bundle == null) {
            return null;
        }
        Bundle bundleM2018constructorimpl = SavedStateReader.m2018constructorimpl(bundle);
        Bundle bundleM2020getSavedStateimpl = SavedStateReader.m2019containsimpl(bundleM2018constructorimpl, key) ? SavedStateReader.m2020getSavedStateimpl(bundleM2018constructorimpl, key) : null;
        SavedStateWriter.m2029removeimpl(SavedStateWriter.m2025constructorimpl(bundle), key);
        if (SavedStateReader.m2023isEmptyimpl(SavedStateReader.m2018constructorimpl(bundle))) {
            this.restoredState = null;
        }
        return bundleM2020getSavedStateimpl;
    }

    public final void registerSavedStateProvider(String key, SavedStateRegistry.SavedStateProvider provider) {
        synchronized (this.lock) {
            if (!this.keyToProviders.containsKey(key)) {
                this.keyToProviders.put(key, provider);
                Unit unit = Unit.INSTANCE;
            } else {
                throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
            }
        }
    }

    public final SavedStateRegistry.SavedStateProvider getSavedStateProvider(String key) {
        SavedStateRegistry.SavedStateProvider savedStateProvider;
        synchronized (this.lock) {
            Iterator it = this.keyToProviders.entrySet().iterator();
            do {
                savedStateProvider = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                SavedStateRegistry.SavedStateProvider savedStateProvider2 = (SavedStateRegistry.SavedStateProvider) entry.getValue();
                if (Intrinsics.areEqual(str, key)) {
                    savedStateProvider = savedStateProvider2;
                }
            } while (savedStateProvider == null);
        }
        return savedStateProvider;
    }

    public final void performAttach() {
        if (this.owner.getLifecycle().getState() != Lifecycle.State.INITIALIZED) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Restarter must be created only during owner's initialization stage");
        } else {
            if (this.attached) {
                Segment$$ExternalSyntheticBUOutline1.m925m("SavedStateRegistry was already attached.");
                return;
            }
            this.onAttach.invoke();
            this.owner.getLifecycle().addObserver(new LifecycleEventObserver() { // from class: androidx.savedstate.internal.SavedStateRegistryImpl$$ExternalSyntheticLambda0
                @Override // androidx.view.LifecycleEventObserver
                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    SavedStateRegistryImpl.m2030$r8$lambda$6xnOyEL_uTccN7fW0CY8JkIxHI(this.f$0, lifecycleOwner, event);
                }
            });
            this.attached = true;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$6xnOyEL_uTccN7fW0CY8JkIx-HI, reason: not valid java name */
    public static void m2030$r8$lambda$6xnOyEL_uTccN7fW0CY8JkIxHI(SavedStateRegistryImpl savedStateRegistryImpl, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_START) {
            savedStateRegistryImpl.isAllowingSavingState = true;
        } else if (event == Lifecycle.Event.ON_STOP) {
            savedStateRegistryImpl.isAllowingSavingState = false;
        }
    }

    public final void performRestore$savedstate(Bundle savedState) {
        if (!this.attached) {
            performAttach();
        }
        if (this.owner.getLifecycle().getState().isAtLeast(Lifecycle.State.STARTED)) {
            OkHttpClient$$ExternalSyntheticBUOutline0.m902m("performRestore cannot be called when owner is ", this.owner.getLifecycle().getState());
            return;
        }
        if (this.isRestored) {
            Segment$$ExternalSyntheticBUOutline1.m925m("SavedStateRegistry was already restored.");
            return;
        }
        Bundle bundleM2020getSavedStateimpl = null;
        if (savedState != null) {
            Bundle bundleM2018constructorimpl = SavedStateReader.m2018constructorimpl(savedState);
            if (SavedStateReader.m2019containsimpl(bundleM2018constructorimpl, "androidx.lifecycle.BundlableSavedStateRegistry.key")) {
                bundleM2020getSavedStateimpl = SavedStateReader.m2020getSavedStateimpl(bundleM2018constructorimpl, "androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
        }
        this.restoredState = bundleM2020getSavedStateimpl;
        this.isRestored = true;
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Landroidx/savedstate/internal/SavedStateRegistryImpl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "SAVED_COMPONENTS_KEY", _UrlKt.FRAGMENT_ENCODE_SET, "savedstate"}, m862k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
