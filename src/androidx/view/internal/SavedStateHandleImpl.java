package androidx.view.internal;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.view.SavedStateRegistry;
import androidx.view.SavedStateWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.MutableStateFlow;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0016\b\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J(\u0010\u000b\u001a\u00020\n\"\u0004\b\u0000\u0010\u00072\u0006\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00018\u0000H\u0087\u0002¢\u0006\u0004\b\u000b\u0010\fR%\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R \u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00120\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u000fR(\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00140\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u000fR+\u0010\u0016\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00140\r8\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u000f\u001a\u0004\b\u0017\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Landroidx/lifecycle/internal/SavedStateHandleImpl;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "initialState", "<init>", "(Ljava/util/Map;)V", "T", "key", "value", _UrlKt.FRAGMENT_ENCODE_SET, "set", "(Ljava/lang/String;Ljava/lang/Object;)V", _UrlKt.FRAGMENT_ENCODE_SET, "regular", "Ljava/util/Map;", "getRegular", "()Ljava/util/Map;", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "providers", "Lkotlinx/coroutines/flow/MutableStateFlow;", "flows", "mutableFlows", "getMutableFlows", "savedStateProvider", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "getSavedStateProvider", "()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "lifecycle-viewmodel-savedstate"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSavedStateHandleImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandleImpl.kt\nandroidx/lifecycle/internal/SavedStateHandleImpl\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 8 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt$savedState$1\n*L\n1#1,131:1\n381#2,7:132\n381#2,7:139\n27#3:146\n47#3:147\n32#3,4:148\n31#3,8:158\n126#4:152\n153#4,3:153\n37#5,2:156\n1#6:166\n106#7:167\n47#8:168\n*S KotlinDebug\n*F\n+ 1 SavedStateHandleImpl.kt\nandroidx/lifecycle/internal/SavedStateHandleImpl\n*L\n60#1:132,7\n77#1:139,7\n47#1:146\n47#1:147\n47#1:148,4\n47#1:158,8\n47#1:152\n47#1:153,3\n47#1:156,2\n47#1:166\n47#1:167\n47#1:168\n*E\n"})
public final class SavedStateHandleImpl {
    private final Map<String, MutableStateFlow<Object>> flows;
    private final Map<String, MutableStateFlow<Object>> mutableFlows;
    private final Map<String, SavedStateRegistry.SavedStateProvider> providers;
    private final Map<String, Object> regular;
    private final SavedStateRegistry.SavedStateProvider savedStateProvider;

    public SavedStateHandleImpl(Map<String, ? extends Object> map) {
        this.regular = MapsKt.toMutableMap(map);
        this.providers = new LinkedHashMap();
        this.flows = new LinkedHashMap();
        this.mutableFlows = new LinkedHashMap();
        this.savedStateProvider = new SavedStateRegistry.SavedStateProvider() { // from class: androidx.lifecycle.internal.SavedStateHandleImpl$$ExternalSyntheticLambda0
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                return SavedStateHandleImpl.m1722$r8$lambda$OwJNegmCu5Gt1ZLmTJOtaJJkzo(this.f$0);
            }
        };
    }

    public /* synthetic */ SavedStateHandleImpl(Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? MapsKt.emptyMap() : map);
    }

    public final SavedStateRegistry.SavedStateProvider getSavedStateProvider() {
        return this.savedStateProvider;
    }

    /* JADX INFO: renamed from: $r8$lambda$-OwJNegmCu5Gt1ZLmTJOtaJJkzo, reason: not valid java name */
    public static Bundle m1722$r8$lambda$OwJNegmCu5Gt1ZLmTJOtaJJkzo(SavedStateHandleImpl savedStateHandleImpl) {
        Pair[] pairArr;
        for (Map.Entry entry : MapsKt.toMap(savedStateHandleImpl.mutableFlows).entrySet()) {
            savedStateHandleImpl.set((String) entry.getKey(), ((MutableStateFlow) entry.getValue()).getValue());
        }
        for (Map.Entry entry2 : MapsKt.toMap(savedStateHandleImpl.providers).entrySet()) {
            savedStateHandleImpl.set((String) entry2.getKey(), ((SavedStateRegistry.SavedStateProvider) entry2.getValue()).saveState());
        }
        Map<String, Object> map = savedStateHandleImpl.regular;
        if (map.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<String, Object> entry3 : map.entrySet()) {
                arrayList.add(TuplesKt.to(entry3.getKey(), entry3.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleBundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        SavedStateWriter.m1760constructorimpl(bundleBundleOf);
        return bundleBundleOf;
    }

    public final <T> void set(String key, T value) {
        this.regular.put(key, value);
        MutableStateFlow<Object> mutableStateFlow = this.flows.get(key);
        if (mutableStateFlow != null) {
            mutableStateFlow.setValue(value);
        }
        MutableStateFlow<Object> mutableStateFlow2 = this.mutableFlows.get(key);
        if (mutableStateFlow2 != null) {
            mutableStateFlow2.setValue(value);
        }
    }
}
