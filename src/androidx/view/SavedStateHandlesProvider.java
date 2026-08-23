package androidx.view;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.view.SavedStateReader;
import androidx.view.SavedStateRegistry;
import androidx.view.SavedStateWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\f\u0010\u0013\u001a\u00060\u000bj\u0002`\fH\u0016J\u0006\u0010\u0014\u001a\u00020\u0015J\u0016\u0010\u0016\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f2\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0019"}, d2 = {"Landroidx/lifecycle/SavedStateHandlesProvider;", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "savedStateRegistry", "Landroidx/savedstate/SavedStateRegistry;", "viewModelStoreOwner", "Landroidx/lifecycle/ViewModelStoreOwner;", "<init>", "(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/ViewModelStoreOwner;)V", "restored", _UrlKt.FRAGMENT_ENCODE_SET, "restoredState", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "viewModel", "Landroidx/lifecycle/SavedStateHandlesVM;", "getViewModel", "()Landroidx/lifecycle/SavedStateHandlesVM;", "viewModel$delegate", "Lkotlin/Lazy;", "saveState", "performRestore", _UrlKt.FRAGMENT_ENCODE_SET, "consumeRestoredStateForKey", "key", _UrlKt.FRAGMENT_ENCODE_SET, "lifecycle-viewmodel-savedstate"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSavedStateHandleSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandlesProvider\n+ 2 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 7 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt$savedState$1\n*L\n1#1,241:1\n27#2:242\n47#2:243\n32#2,4:244\n31#2,8:254\n27#2:268\n47#2:269\n32#2,4:270\n31#2,8:280\n27#2:293\n47#2:294\n32#2,4:295\n31#2,8:305\n126#3:248\n153#3,3:249\n216#3:265\n217#3:267\n126#3:274\n153#3,3:275\n126#3:299\n153#3,3:300\n37#4,2:252\n37#4,2:278\n37#4,2:303\n1#5:262\n1#5:264\n1#5:288\n1#5:290\n1#5:313\n106#6:263\n90#6:266\n106#6:289\n90#6:291\n90#6:292\n106#6:314\n106#6:316\n90#6:317\n47#7:315\n*S KotlinDebug\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandlesProvider\n*L\n160#1:242\n160#1:243\n160#1:244,4\n160#1:254,8\n183#1:268\n183#1:269\n183#1:270,4\n183#1:280,8\n201#1:293\n201#1:294\n201#1:295,4\n201#1:305,8\n160#1:248\n160#1:249,3\n167#1:265\n167#1:267\n183#1:274\n183#1:275,3\n201#1:299\n201#1:300,3\n160#1:252,2\n183#1:278,2\n201#1:303,2\n160#1:262\n183#1:288\n201#1:313\n160#1:263\n169#1:266\n183#1:289\n199#1:291\n201#1:292\n201#1:314\n202#1:316\n203#1:317\n201#1:315\n*E\n"})
public final class SavedStateHandlesProvider implements SavedStateRegistry.SavedStateProvider {
    private boolean restored;
    private Bundle restoredState;
    private final SavedStateRegistry savedStateRegistry;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public Bundle saveState() {
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
        Bundle bundleM1760constructorimpl = SavedStateWriter.m1760constructorimpl(bundleBundleOf);
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            SavedStateWriter.m1761putAllimpl(bundleM1760constructorimpl, bundle);
        }
        for (Map.Entry<String, SavedStateHandle> entry2 : getViewModel().getHandles().entrySet()) {
            String key = entry2.getKey();
            Bundle bundleSaveState = entry2.getValue().savedStateProvider().saveState();
            if (!SavedStateReader.m1758isEmptyimpl(SavedStateReader.m1753constructorimpl(bundleSaveState))) {
                SavedStateWriter.m1762putSavedStateimpl(bundleM1760constructorimpl, key, bundleSaveState);
            }
        }
        this.restored = false;
        return bundleBundleOf;
    }

    public SavedStateHandlesProvider(SavedStateRegistry savedStateRegistry, final ViewModelStoreOwner viewModelStoreOwner) {
        this.savedStateRegistry = savedStateRegistry;
        this.viewModel = LazyKt.lazy(new Function0() { // from class: androidx.lifecycle.SavedStateHandlesProvider$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SavedStateHandleSupport.getSavedStateHandlesVM(viewModelStoreOwner);
            }
        });
    }

    private final SavedStateHandlesVM getViewModel() {
        return (SavedStateHandlesVM) this.viewModel.getValue();
    }

    public final void performRestore() {
        Pair[] pairArr;
        if (this.restored) {
            return;
        }
        Bundle bundleConsumeRestoredStateForKey = this.savedStateRegistry.consumeRestoredStateForKey("androidx.lifecycle.internal.SavedStateHandlesProvider");
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
        Bundle bundleM1760constructorimpl = SavedStateWriter.m1760constructorimpl(bundleBundleOf);
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            SavedStateWriter.m1761putAllimpl(bundleM1760constructorimpl, bundle);
        }
        if (bundleConsumeRestoredStateForKey != null) {
            SavedStateWriter.m1761putAllimpl(bundleM1760constructorimpl, bundleConsumeRestoredStateForKey);
        }
        this.restoredState = bundleBundleOf;
        this.restored = true;
        getViewModel();
    }

    public final Bundle consumeRestoredStateForKey(String key) {
        Pair[] pairArr;
        performRestore();
        Bundle bundle = this.restoredState;
        if (bundle == null || !SavedStateReader.m1754containsimpl(SavedStateReader.m1753constructorimpl(bundle), key)) {
            return null;
        }
        Bundle bundleM1756getSavedStateOrNullimpl = SavedStateReader.m1756getSavedStateOrNullimpl(SavedStateReader.m1753constructorimpl(bundle), key);
        if (bundleM1756getSavedStateOrNullimpl == null) {
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
            bundleM1756getSavedStateOrNullimpl = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
            SavedStateWriter.m1760constructorimpl(bundleM1756getSavedStateOrNullimpl);
        }
        SavedStateWriter.m1764removeimpl(SavedStateWriter.m1760constructorimpl(bundle), key);
        if (SavedStateReader.m1758isEmptyimpl(SavedStateReader.m1753constructorimpl(bundle))) {
            this.restoredState = null;
        }
        return bundleM1756getSavedStateOrNullimpl;
    }
}
