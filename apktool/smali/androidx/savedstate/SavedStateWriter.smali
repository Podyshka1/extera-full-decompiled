.class public abstract Landroidx/savedstate/SavedStateWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string/jumbo v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public static final putSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final putStringList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Landroidx/savedstate/SavedStateWriterKt;->toArrayListUnsafe(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final remove-impl(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method
