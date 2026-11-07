package androidx.view;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.view.SavedStateReader;
import androidx.view.SavedStateRegistry;
import androidx.view.SavedStateWriter;
import com.exteragram.messenger.plugins.PluginsConstants;
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
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\f\u0010\u0013\u001a\u00060\u000bj\u0002`\fH\u0016J\u0006\u0010\u0014\u001a\u00020\u0015J\u0016\u0010\u0016\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f2\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0019"}, d2 = {"Landroidx/lifecycle/SavedStateHandlesProvider;", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "savedStateRegistry", "Landroidx/savedstate/SavedStateRegistry;", "viewModelStoreOwner", "Landroidx/lifecycle/ViewModelStoreOwner;", "<init>", "(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/ViewModelStoreOwner;)V", "restored", _UrlKt.FRAGMENT_ENCODE_SET, "restoredState", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "viewModel", "Landroidx/lifecycle/SavedStateHandlesVM;", "getViewModel", "()Landroidx/lifecycle/SavedStateHandlesVM;", "viewModel$delegate", "Lkotlin/Lazy;", "saveState", "performRestore", _UrlKt.FRAGMENT_ENCODE_SET, "consumeRestoredStateForKey", PluginsConstants.Settings.KEY, _UrlKt.FRAGMENT_ENCODE_SET, "lifecycle-viewmodel-savedstate"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSavedStateHandleSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandlesProvider\n+ 2 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 7 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt$savedState$1\n*L\n1#1,246:1\n27#2:247\n47#2:248\n32#2,4:249\n31#2,8:259\n27#2:273\n47#2:274\n32#2,4:275\n31#2,8:285\n27#2:298\n47#2:299\n32#2,4:300\n31#2,8:310\n126#3:253\n153#3,3:254\n216#3:270\n217#3:272\n126#3:279\n153#3,3:280\n126#3:304\n153#3,3:305\n37#4,2:257\n37#4,2:283\n37#4,2:308\n1#5:267\n1#5:269\n1#5:293\n1#5:295\n1#5:318\n106#6:268\n90#6:271\n106#6:294\n90#6:296\n90#6:297\n106#6:319\n106#6:321\n90#6:322\n47#7:320\n*S KotlinDebug\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandlesProvider\n*L\n165#1:247\n165#1:248\n165#1:249,4\n165#1:259,8\n188#1:273\n188#1:274\n188#1:275,4\n188#1:285,8\n206#1:298\n206#1:299\n206#1:300,4\n206#1:310,8\n165#1:253\n165#1:254,3\n172#1:270\n172#1:272\n188#1:279\n188#1:280,3\n206#1:304\n206#1:305,3\n165#1:257,2\n188#1:283,2\n206#1:308,2\n165#1:267\n188#1:293\n206#1:318\n165#1:268\n174#1:271\n188#1:294\n204#1:296\n206#1:297\n206#1:319\n207#1:321\n208#1:322\n206#1:320\n*E\n"})
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
        Bundle bundleM2025constructorimpl = SavedStateWriter.m2025constructorimpl(bundleBundleOf);
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            SavedStateWriter.m2026putAllimpl(bundleM2025constructorimpl, bundle);
        }
        for (Map.Entry<String, SavedStateHandle> entry2 : getViewModel().getHandles().entrySet()) {
            String key = entry2.getKey();
            Bundle bundleSaveState = entry2.getValue().savedStateProvider().saveState();
            if (!SavedStateReader.m2023isEmptyimpl(SavedStateReader.m2018constructorimpl(bundleSaveState))) {
                SavedStateWriter.m2027putSavedStateimpl(bundleM2025constructorimpl, key, bundleSaveState);
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
        Bundle bundleM2025constructorimpl = SavedStateWriter.m2025constructorimpl(bundleBundleOf);
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            SavedStateWriter.m2026putAllimpl(bundleM2025constructorimpl, bundle);
        }
        if (bundleConsumeRestoredStateForKey != null) {
            SavedStateWriter.m2026putAllimpl(bundleM2025constructorimpl, bundleConsumeRestoredStateForKey);
        }
        this.restoredState = bundleBundleOf;
        this.restored = true;
        getViewModel();
    }

    public final Bundle consumeRestoredStateForKey(String key) {
        Pair[] pairArr;
        performRestore();
        Bundle bundle = this.restoredState;
        if (bundle == null || !SavedStateReader.m2019containsimpl(SavedStateReader.m2018constructorimpl(bundle), key)) {
            return null;
        }
        Bundle bundleM2021getSavedStateOrNullimpl = SavedStateReader.m2021getSavedStateOrNullimpl(SavedStateReader.m2018constructorimpl(bundle), key);
        if (bundleM2021getSavedStateOrNullimpl == null) {
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
            bundleM2021getSavedStateOrNullimpl = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
            SavedStateWriter.m2025constructorimpl(bundleM2021getSavedStateOrNullimpl);
        }
        SavedStateWriter.m2029removeimpl(SavedStateWriter.m2025constructorimpl(bundle), key);
        if (SavedStateReader.m2023isEmptyimpl(SavedStateReader.m2018constructorimpl(bundle))) {
            this.restoredState = null;
        }
        return bundleM2021getSavedStateOrNullimpl;
    }
}
