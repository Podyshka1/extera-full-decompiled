.class public abstract Landroidx/lifecycle/ViewTreeLifecycleOwner;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget v0, Landroidx/lifecycle/runtime/R$id;->view_tree_lifecycle_owner:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
