.class public final Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/Tracer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/ConfigurationKt;->createDefaultTracer()Landroidx/work/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginAsyncSection(Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    invoke-static {p1, p2}, Landroidx/tracing/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    return-void
.end method

.method public beginSection(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    invoke-static {p1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public endAsyncSection(Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 665
    invoke-static {p1, p2}, Landroidx/tracing/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method

.method public endSection()V
    .locals 0

    .line 657
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 649
    invoke-static {}, Landroidx/tracing/Trace;->isEnabled()Z

    move-result v0

    return v0
.end method
