.class final Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputStreamImpl"
.end annotation


# instance fields
.field private final format:I

.field private final id:I

.field private final maxImages:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput p1, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;->id:I

    .line 273
    iput p2, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;->maxImages:I

    .line 274
    iput p3, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;->format:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getFormat-8FPWQzE()I
    .locals 1

    .line 274
    iget v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;->format:I

    return v0
.end method

.method public getId-m1bwn9M()I
    .locals 1

    .line 272
    iget v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;->id:I

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .line 273
    iget v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;->maxImages:I

    return v0
.end method
