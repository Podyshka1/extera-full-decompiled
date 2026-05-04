.class public final Landroidx/lifecycle/SavedStateHandlesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# instance fields
.field private restored:Z

.field private restoredState:Landroid/os/Bundle;

.field private final savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$BWYiFNbmaxFqlGaoxfo2jDYwXi4(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/lifecycle/SavedStateHandlesProvider;->viewModel_delegate$lambda$0(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/ViewModelStoreOwner;)V
    .locals 1

    const-string/jumbo v0, "savedStateRegistry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewModelStoreOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    .line 157
    new-instance p1, Landroidx/lifecycle/SavedStateHandlesProvider$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Landroidx/lifecycle/SavedStateHandlesProvider$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getViewModel()Landroidx/lifecycle/SavedStateHandlesVM;
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/SavedStateHandlesVM;

    return-object v0
.end method

.method private static final viewModel_delegate$lambda$0(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;
    .locals 0

    .line 157
    invoke-static {p0}, Landroidx/lifecycle/SavedStateHandleSupport;->getSavedStateHandlesVM(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Landroidx/lifecycle/SavedStateHandlesProvider;->performRestore()V

    .line 198
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 90
    :cond_0
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 199
    invoke-static {v2, p1}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 90
    :cond_1
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 201
    invoke-static {v2, p1}, Landroidx/savedstate/SavedStateReader;->getSavedStateOrNull-impl(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_4

    .line 47
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 33
    new-array v2, v4, [Lkotlin/Pair;

    goto :goto_1

    .line 126
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 35
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 154
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_3
    new-array v2, v4, [Lkotlin/Pair;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lkotlin/Pair;

    .line 38
    :goto_1
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lkotlin/Pair;

    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v2

    .line 106
    invoke-static {v2}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 106
    :cond_4
    invoke-static {v0}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 202
    invoke-static {v3, p1}, Landroidx/savedstate/SavedStateWriter;->remove-impl(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 90
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 203
    invoke-static {p1}, Landroidx/savedstate/SavedStateReader;->isEmpty-impl(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 204
    iput-object v1, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    :cond_5
    return-object v2
.end method

.method public final performRestore()V
    .locals 6

    .line 181
    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restored:Z

    if-nez v0, :cond_4

    .line 182
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 47
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 33
    new-array v1, v3, [Lkotlin/Pair;

    goto :goto_1

    .line 126
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 35
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 154
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_1
    new-array v1, v3, [Lkotlin/Pair;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lkotlin/Pair;

    .line 38
    :goto_1
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lkotlin/Pair;

    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 184
    iget-object v3, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    invoke-static {v2, v3}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 185
    invoke-static {v2, v0}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 183
    :cond_3
    iput-object v1, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restored:Z

    .line 191
    invoke-direct {p0}, Landroidx/lifecycle/SavedStateHandlesProvider;->getViewModel()Landroidx/lifecycle/SavedStateHandlesVM;

    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 7

    .line 47
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 33
    new-array v0, v2, [Lkotlin/Pair;

    goto :goto_1

    .line 126
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 35
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 154
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_1
    new-array v0, v2, [Lkotlin/Pair;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    .line 38
    :goto_1
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 164
    iget-object v3, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    invoke-static {v1, v3}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 167
    :cond_2
    invoke-direct {p0}, Landroidx/lifecycle/SavedStateHandlesProvider;->getViewModel()Landroidx/lifecycle/SavedStateHandlesVM;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/SavedStateHandlesVM;->getHandles()Ljava/util/Map;

    move-result-object v3

    .line 216
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/SavedStateHandle;

    .line 168
    invoke-virtual {v4}, Landroidx/lifecycle/SavedStateHandle;->savedStateProvider()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    move-result-object v4

    invoke-interface {v4}, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;->saveState()Landroid/os/Bundle;

    move-result-object v4

    .line 90
    invoke-static {v4}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 169
    invoke-static {v6}, Landroidx/savedstate/SavedStateReader;->isEmpty-impl(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 170
    invoke-static {v1, v5, v4}, Landroidx/savedstate/SavedStateWriter;->putSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 175
    :cond_4
    iput-boolean v2, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restored:Z

    return-object v0
.end method
