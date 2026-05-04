.class final Landroidx/graphics/shapes/Shapes_androidKt$transformed$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/graphics/shapes/PointTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/shapes/Shapes_androidKt;->transformed(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $matrix:Landroid/graphics/Matrix;

.field final synthetic $tempArray:[F


# direct methods
.method constructor <init>([FLandroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Landroidx/graphics/shapes/Shapes_androidKt$transformed$1;->$tempArray:[F

    iput-object p2, p0, Landroidx/graphics/shapes/Shapes_androidKt$transformed$1;->$matrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform-XgqJiTY(FF)J
    .locals 2

    .line 30
    iget-object v0, p0, Landroidx/graphics/shapes/Shapes_androidKt$transformed$1;->$tempArray:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 31
    aput p2, v0, p1

    .line 32
    iget-object p2, p0, Landroidx/graphics/shapes/Shapes_androidKt$transformed$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 33
    iget-object p2, p0, Landroidx/graphics/shapes/Shapes_androidKt$transformed$1;->$tempArray:[F

    aget v0, p2, v1

    aget p1, p2, p1

    invoke-static {v0, p1}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p1

    return-wide p1
.end method
