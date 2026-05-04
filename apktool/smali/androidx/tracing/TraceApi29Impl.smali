.class public final Landroidx/tracing/TraceApi29Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/tracing/TraceApi29Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/tracing/TraceApi29Impl;

    invoke-direct {v0}, Landroidx/tracing/TraceApi29Impl;-><init>()V

    sput-object v0, Landroidx/tracing/TraceApi29Impl;->INSTANCE:Landroidx/tracing/TraceApi29Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final beginAsyncSection(Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p1, p2}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    return-void
.end method

.method public final endAsyncSection(Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p1, p2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method

.method public final isEnabled()Z
    .locals 1

    .line 34
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final setCounter(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "counterName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p2

    .line 65
    invoke-static {p1, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    return-void
.end method
