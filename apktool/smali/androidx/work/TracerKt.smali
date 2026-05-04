.class public abstract Landroidx/work/TracerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final traced(Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {p0}, Landroidx/work/Tracer;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-interface {p0, p1}, Landroidx/work/Tracer;->beginSection(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz v0, :cond_1

    .line 61
    invoke-interface {p0}, Landroidx/work/Tracer;->endSection()V

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object p1

    .line 60
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz v0, :cond_2

    .line 61
    invoke-interface {p0}, Landroidx/work/Tracer;->endSection()V

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method
