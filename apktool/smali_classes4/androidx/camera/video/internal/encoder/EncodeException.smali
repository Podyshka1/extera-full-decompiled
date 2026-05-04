.class public Landroidx/camera/video/internal/encoder/EncodeException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final mErrorType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 44
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    iput p1, p0, Landroidx/camera/video/internal/encoder/EncodeException;->mErrorType:I

    return-void
.end method
