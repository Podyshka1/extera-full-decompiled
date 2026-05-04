.class public final Landroidx/datastore/core/NativeSharedCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native nativeCreateSharedCounter(I)J
.end method

.method public final native nativeGetCounterValue(J)I
.end method

.method public final native nativeIncrementAndGetCounterValue(J)I
.end method

.method public final native nativeTruncateFile(I)I
.end method
