.class Lorg/telegram/ui/Components/AnimatedFileDrawable$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedFileDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputloadFrameTask(Lorg/telegram/ui/Components/AnimatedFileDrawable;Ljava/lang/Runnable;)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$mchekDestroyDecoder(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetstream(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetpendingRemoveLoading(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetstream(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v2}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetpendingRemoveLoadingFramesReset(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v0

    const/4 v3, 0x1

    if-gtz v0, :cond_1

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputpendingRemoveLoading(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetpendingRemoveLoadingFramesReset(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputpendingRemoveLoadingFramesReset(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    .line 270
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetforceDecodeAfterNextFrame(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputsingleFrameDecoded(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)V

    goto :goto_1

    .line 273
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputforceDecodeAfterNextFrame(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)V

    .line 276
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetpendingSeekToUI(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundBitmapTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmapTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmap2(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)V

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmapTime2(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    move v0, v2

    .line 281
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 282
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetnextRenderingShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    .line 283
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetnextRenderingShader2(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 285
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetPRERENDER_FRAME(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)V

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundBitmapTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmapTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    move v0, v2

    .line 288
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 289
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetnextRenderingShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 292
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetnextRenderingBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetnextRenderingBitmap2(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)V

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundBitmapTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmapTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    move v0, v2

    .line 295
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 296
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetnextRenderingShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 298
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetnextRenderingBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetnextRenderingBitmap2(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)V

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetnextRenderingBitmapTime2(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmapTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmap2(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundBitmapTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmapTime2(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    move v0, v2

    .line 303
    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 304
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetnextRenderingShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetnextRenderingShader2(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    .line 305
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetnextRenderingShader2(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 308
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmap2(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundBitmapTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputnextRenderingBitmapTime2(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    move v0, v2

    .line 310
    :goto_6
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 311
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetnextRenderingShader2(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 315
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputbackgroundBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)V

    move v0, v2

    .line 316
    :goto_7
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_8

    .line 317
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetbackgroundShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 320
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetisRestarted(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputisRestarted(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)V

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    .line 323
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 326
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetmetaData(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetlastTimeStamp(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetstartTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetstartTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_8

    :cond_a
    move v3, v2

    :goto_8
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputlastTimeStamp(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    .line 329
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetmetaData(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetlastTimeStamp(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v3

    sub-int/2addr v0, v3

    if-eqz v0, :cond_c

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetmetaData(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v3

    aget v3, v3, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetlastTimeStamp(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputinvalidateAfter(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetlimitFps(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetinvalidateAfter(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v0

    const/16 v3, 0x20

    if-ge v0, v3, :cond_c

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputinvalidateAfter(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    .line 335
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetpendingSeekToUI(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v3

    cmp-long v0, v3, v6

    if-ltz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetpendingSeekTo(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_d

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputpendingSeekToUI(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)V

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputinvalidateAfter(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    .line 339
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetmetaData(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v3

    aget v1, v3, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputlastTimeStamp(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetsecondParentViews(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetsecondParentViews(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_9
    if-ge v2, v0, :cond_e

    .line 342
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetsecondParentViews(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 345
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateInternal()V

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$mscheduleNextGetFrame(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    return-void
.end method
