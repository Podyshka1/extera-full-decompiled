.class public Lcom/yandex/mapkit/render/internal/Size;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/yandex/mapkit/render/internal/Size;->width:I

    .line 10
    iput p2, p0, Lcom/yandex/mapkit/render/internal/Size;->height:I

    return-void
.end method


# virtual methods
.method getHeight()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/yandex/mapkit/render/internal/Size;->height:I

    return v0
.end method

.method getWidth()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/yandex/mapkit/render/internal/Size;->width:I

    return v0
.end method

.method setHeigth(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/yandex/mapkit/render/internal/Size;->height:I

    return-void
.end method

.method setWidth(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/yandex/mapkit/render/internal/Size;->width:I

    return-void
.end method
