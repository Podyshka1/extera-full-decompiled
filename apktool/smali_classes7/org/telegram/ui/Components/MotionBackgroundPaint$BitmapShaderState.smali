.class Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MotionBackgroundPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapShaderState"
.end annotation


# instance fields
.field bitmap:Ljava/lang/ref/WeakReference;

.field height:I

.field shader:Landroid/graphics/BitmapShader;

.field final tileMode:Landroid/graphics/Shader$TileMode;

.field width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Shader$TileMode;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->tileMode:Landroid/graphics/Shader$TileMode;

    return-void
.end method


# virtual methods
.method public setup(Landroid/graphics/Bitmap;)Z
    .locals 2

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->width:I

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->height:I

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->bitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->bitmap:Ljava/lang/ref/WeakReference;

    .line 149
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->tileMode:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->shader:Landroid/graphics/BitmapShader;

    .line 150
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p1, v1, :cond_1

    const/4 p1, 0x2

    .line 151
    invoke-virtual {v0, p1}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
