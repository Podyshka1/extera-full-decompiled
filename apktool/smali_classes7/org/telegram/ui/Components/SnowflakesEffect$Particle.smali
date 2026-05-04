.class Lorg/telegram/ui/Components/SnowflakesEffect$Particle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SnowflakesEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Particle"
.end annotation


# instance fields
.field alpha:F

.field currentTime:F

.field lifeTime:F

.field paintType:I

.field scale:F

.field final synthetic this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

.field type:I

.field velocity:F

.field vx:F

.field vy:F

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/SnowflakesEffect;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/SnowflakesEffect;Lorg/telegram/ui/Components/SnowflakesEffect-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;-><init>(Lorg/telegram/ui/Components/SnowflakesEffect;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 60
    iget v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->type:I

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    iget-object v2, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->particleBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 74
    invoke-static {v2}, Lorg/telegram/ui/Components/SnowflakesEffect;->-$$Nest$smcreateParticlesBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->particleBitmap:Landroid/graphics/Bitmap;

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-static {v0}, Lorg/telegram/ui/Components/SnowflakesEffect;->-$$Nest$fgetbitmapPaint(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->alpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    iget v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->scale:F

    iget v1, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->x:F

    iget v2, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->y:F

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    iget-object v1, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->particleBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->x:F

    iget v3, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->y:F

    invoke-static {v0}, Lorg/telegram/ui/Components/SnowflakesEffect;->-$$Nest$fgetbitmapPaint(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 62
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->alpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 63
    iget v1, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->paintType:I

    if-nez v1, :cond_2

    .line 64
    iget-object v1, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-static {v1}, Lorg/telegram/ui/Components/SnowflakesEffect;->-$$Nest$fgetparticlePaint(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-static {v1}, Lorg/telegram/ui/Components/SnowflakesEffect;->-$$Nest$fgetparticleThinPaint(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->x:F

    iget v1, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->y:F

    iget v2, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->paintType:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-static {v2}, Lorg/telegram/ui/Components/SnowflakesEffect;->-$$Nest$fgetparticlePaint(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-static {v2}, Lorg/telegram/ui/Components/SnowflakesEffect;->-$$Nest$fgetparticleThinPaint(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    return-void
.end method
