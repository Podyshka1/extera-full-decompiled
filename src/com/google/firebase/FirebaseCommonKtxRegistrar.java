package com.google.firebase;

import androidx.annotation.Keep;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.annotations.concurrent.Lightweight;
import com.google.firebase.annotations.concurrent.UiThread;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component> getComponents() {
        Component componentBuild = Component.builder(Qualified.qualified(Background.class, CoroutineDispatcher.class)).add(Dependency.required(Qualified.qualified(Background.class, Executor.class))).factory(new ComponentFactory() { // from class: com.google.firebase.FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$1
            @Override // com.google.firebase.components.ComponentFactory
            public final CoroutineDispatcher create(ComponentContainer componentContainer) {
                Object obj = componentContainer.get(Qualified.qualified(Background.class, Executor.class));
                Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
                return ExecutorsKt.from((Executor) obj);
            }
        }).build();
        Intrinsics.checkNotNullExpressionValue(componentBuild, "build(...)");
        Component componentBuild2 = Component.builder(Qualified.qualified(Lightweight.class, CoroutineDispatcher.class)).add(Dependency.required(Qualified.qualified(Lightweight.class, Executor.class))).factory(new ComponentFactory() { // from class: com.google.firebase.FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$2
            @Override // com.google.firebase.components.ComponentFactory
            public final CoroutineDispatcher create(ComponentContainer componentContainer) {
                Object obj = componentContainer.get(Qualified.qualified(Lightweight.class, Executor.class));
                Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
                return ExecutorsKt.from((Executor) obj);
            }
        }).build();
        Intrinsics.checkNotNullExpressionValue(componentBuild2, "build(...)");
        Component componentBuild3 = Component.builder(Qualified.qualified(Blocking.class, CoroutineDispatcher.class)).add(Dependency.required(Qualified.qualified(Blocking.class, Executor.class))).factory(new ComponentFactory() { // from class: com.google.firebase.FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$3
            @Override // com.google.firebase.components.ComponentFactory
            public final CoroutineDispatcher create(ComponentContainer componentContainer) {
                Object obj = componentContainer.get(Qualified.qualified(Blocking.class, Executor.class));
                Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
                return ExecutorsKt.from((Executor) obj);
            }
        }).build();
        Intrinsics.checkNotNullExpressionValue(componentBuild3, "build(...)");
        Component componentBuild4 = Component.builder(Qualified.qualified(UiThread.class, CoroutineDispatcher.class)).add(Dependency.required(Qualified.qualified(UiThread.class, Executor.class))).factory(new ComponentFactory() { // from class: com.google.firebase.FirebaseCommonKtxRegistrar$getComponents$$inlined$coroutineDispatcher$4
            @Override // com.google.firebase.components.ComponentFactory
            public final CoroutineDispatcher create(ComponentContainer componentContainer) {
                Object obj = componentContainer.get(Qualified.qualified(UiThread.class, Executor.class));
                Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
                return ExecutorsKt.from((Executor) obj);
            }
        }).build();
        Intrinsics.checkNotNullExpressionValue(componentBuild4, "build(...)");
        return CollectionsKt.listOf((Object[]) new Component[]{componentBuild, componentBuild2, componentBuild3, componentBuild4});
    }
}
