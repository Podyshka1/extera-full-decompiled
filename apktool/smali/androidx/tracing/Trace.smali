.class public final Landroidx/tracing/Trace;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/tracing/Trace;

.field private static asyncTraceBeginMethod:Ljava/lang/reflect/Method;

.field private static asyncTraceEndMethod:Ljava/lang/reflect/Method;

.field private static isTagEnabledMethod:Ljava/lang/reflect/Method;

.field private static traceCounterMethod:Ljava/lang/reflect/Method;

.field private static traceTagApp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/tracing/Trace;

    invoke-direct {v0}, Landroidx/tracing/Trace;-><init>()V

    sput-object v0, Landroidx/tracing/Trace;->INSTANCE:Landroidx/tracing/Trace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final beginAsyncSection(Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "methodName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 174
    sget-object v0, Landroidx/tracing/TraceApi29Impl;->INSTANCE:Landroidx/tracing/TraceApi29Impl;

    sget-object v1, Landroidx/tracing/Trace;->INSTANCE:Landroidx/tracing/Trace;

    invoke-direct {v1, p0}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/tracing/TraceApi29Impl;->beginAsyncSection(Ljava/lang/String;I)V

    return-void

    .line 176
    :cond_0
    sget-object v0, Landroidx/tracing/Trace;->INSTANCE:Landroidx/tracing/Trace;

    invoke-direct {v0, p0}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/tracing/Trace;->beginAsyncSectionFallback(Ljava/lang/String;I)V

    return-void
.end method

.method private final beginAsyncSectionFallback(Ljava/lang/String;I)V
    .locals 8

    .line 235
    const-string v0, "asyncTraceBegin"

    .line 236
    :try_start_0
    sget-object v1, Landroidx/tracing/Trace;->asyncTraceBeginMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez v1, :cond_0

    .line 239
    const-class v1, Landroid/os/Trace;

    .line 244
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    .line 240
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 237
    sput-object v1, Landroidx/tracing/Trace;->asyncTraceBeginMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 247
    :cond_0
    :goto_0
    sget-object v1, Landroidx/tracing/Trace;->asyncTraceBeginMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    sget-wide v6, Landroidx/tracing/Trace;->traceTagApp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string p1, "Required value was null."

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    invoke-direct {p0, v0, p1}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static final beginSection(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "label"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    sget-object v0, Landroidx/tracing/Trace;->INSTANCE:Landroidx/tracing/Trace;

    invoke-direct {v0, p0}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static final endAsyncSection(Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "methodName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 194
    sget-object v0, Landroidx/tracing/TraceApi29Impl;->INSTANCE:Landroidx/tracing/TraceApi29Impl;

    sget-object v1, Landroidx/tracing/Trace;->INSTANCE:Landroidx/tracing/Trace;

    invoke-direct {v1, p0}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/tracing/TraceApi29Impl;->endAsyncSection(Ljava/lang/String;I)V

    return-void

    .line 196
    :cond_0
    sget-object v0, Landroidx/tracing/Trace;->INSTANCE:Landroidx/tracing/Trace;

    invoke-direct {v0, p0}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/tracing/Trace;->endAsyncSectionFallback(Ljava/lang/String;I)V

    return-void
.end method

.method private final endAsyncSectionFallback(Ljava/lang/String;I)V
    .locals 8

    .line 255
    const-string v0, "asyncTraceEnd"

    .line 256
    :try_start_0
    sget-object v1, Landroidx/tracing/Trace;->asyncTraceEndMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez v1, :cond_0

    .line 259
    const-class v1, Landroid/os/Trace;

    .line 264
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    .line 260
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 257
    sput-object v1, Landroidx/tracing/Trace;->asyncTraceEndMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 267
    :cond_0
    :goto_0
    sget-object v1, Landroidx/tracing/Trace;->asyncTraceEndMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    sget-wide v6, Landroidx/tracing/Trace;->traceTagApp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string p1, "Required value was null."

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_1
    invoke-direct {p0, v0, p1}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static final endSection()V
    .locals 0

    .line 139
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private final handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 294
    instance-of v0, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_1

    .line 295
    check-cast p2, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 296
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_0

    .line 297
    throw p1

    .line 299
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 302
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " via reflection"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Trace"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static final isEnabled()Z
    .locals 2

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 74
    sget-object v0, Landroidx/tracing/TraceApi29Impl;->INSTANCE:Landroidx/tracing/TraceApi29Impl;

    invoke-virtual {v0}, Landroidx/tracing/TraceApi29Impl;->isEnabled()Z

    move-result v0

    return v0

    .line 76
    :cond_0
    sget-object v0, Landroidx/tracing/Trace;->INSTANCE:Landroidx/tracing/Trace;

    invoke-direct {v0}, Landroidx/tracing/Trace;->isEnabledFallback()Z

    move-result v0

    return v0
.end method

.method private final isEnabledFallback()Z
    .locals 8

    .line 218
    const-string/jumbo v0, "isTagEnabled"

    const-class v1, Landroid/os/Trace;

    const/4 v2, 0x0

    .line 219
    :try_start_0
    sget-object v3, Landroidx/tracing/Trace;->isTagEnabledMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 220
    const-string v3, "TRACE_TAG_APP"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 221
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    sput-wide v6, Landroidx/tracing/Trace;->traceTagApp:J

    .line 223
    new-array v3, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 222
    sput-object v1, Landroidx/tracing/Trace;->isTagEnabledMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 225
    :cond_0
    :goto_0
    sget-object v1, Landroidx/tracing/Trace;->isTagEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    sget-wide v6, Landroidx/tracing/Trace;->traceTagApp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const-string v1, "Required value was null."

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_1
    invoke-direct {p0, v0, v1}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    return v2
.end method

.method public static final setCounter(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "counterName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 209
    sget-object v0, Landroidx/tracing/TraceApi29Impl;->INSTANCE:Landroidx/tracing/TraceApi29Impl;

    sget-object v1, Landroidx/tracing/Trace;->INSTANCE:Landroidx/tracing/Trace;

    invoke-direct {v1, p0}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/tracing/TraceApi29Impl;->setCounter(Ljava/lang/String;I)V

    return-void

    .line 211
    :cond_0
    sget-object v0, Landroidx/tracing/Trace;->INSTANCE:Landroidx/tracing/Trace;

    invoke-direct {v0, p0}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/tracing/Trace;->setCounterFallback(Ljava/lang/String;I)V

    return-void
.end method

.method private final setCounterFallback(Ljava/lang/String;I)V
    .locals 8

    .line 275
    const-string/jumbo v0, "traceCounter"

    .line 276
    :try_start_0
    sget-object v1, Landroidx/tracing/Trace;->traceCounterMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez v1, :cond_0

    .line 279
    const-class v1, Landroid/os/Trace;

    .line 284
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    .line 280
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 277
    sput-object v1, Landroidx/tracing/Trace;->traceCounterMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 287
    :cond_0
    :goto_0
    sget-object v1, Landroidx/tracing/Trace;->traceCounterMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    sget-wide v6, Landroidx/tracing/Trace;->traceTagApp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string p1, "Required value was null."

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_1
    invoke-direct {p0, v0, p1}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private final truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    return-object v0
.end method
