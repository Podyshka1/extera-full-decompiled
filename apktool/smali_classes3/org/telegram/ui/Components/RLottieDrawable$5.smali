.class Lorg/telegram/ui/Components/RLottieDrawable$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RLottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastFile:Ljava/io/File;

.field private lastUpdate:J

.field final synthetic this$0:Lorg/telegram/ui/Components/RLottieDrawable;

.field private tries:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 2

    .line 319
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 320
    iput-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$5;->lastUpdate:J

    const/4 p1, 0x0

    .line 321
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable$5;->lastFile:Ljava/io/File;

    const/16 p1, 0xa

    .line 322
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable$5;->tries:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v1, p0

    .line 326
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isRecycled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_c

    .line 329
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    iget-wide v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v0, v6, v3

    if-nez v0, :cond_1

    goto/16 :goto_d

    .line 336
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 338
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 340
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 343
    :cond_2
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    .line 345
    :try_start_1
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetpendingColorUpdates(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 346
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetpendingColorUpdates(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 347
    iget-object v6, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v6, v6, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v6, v7, v8, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$smsetLayerColor(JLjava/lang/String;I)V

    goto :goto_1

    .line 349
    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetpendingColorUpdates(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 354
    :catch_0
    :cond_4
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetpendingReplaceColors(Lorg/telegram/ui/Components/RLottieDrawable;)[I

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    cmp-long v0, v6, v3

    if-eqz v0, :cond_5

    .line 355
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetpendingReplaceColors(Lorg/telegram/ui/Components/RLottieDrawable;)[I

    move-result-object v0

    invoke-static {v6, v7, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$smreplaceColors(J[I)V

    .line 356
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fputpendingReplaceColors(Lorg/telegram/ui/Components/RLottieDrawable;[I)V

    .line 360
    :cond_5
    :try_start_2
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 361
    iget-wide v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    :cond_6
    :goto_2
    move-wide v10, v8

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_a

    :cond_7
    if-ne v6, v5, :cond_8

    .line 363
    iget-wide v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    .line 364
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->setLastFrame:Z

    if-eqz v0, :cond_6

    .line 365
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondFramesCount:I

    sub-int/2addr v6, v7

    iput v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    goto :goto_2

    .line 368
    :cond_8
    iget-wide v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    goto :goto_2

    .line 371
    :goto_3
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v0, :cond_9

    move v6, v5

    goto :goto_4

    :cond_9
    move v6, v7

    .line 372
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 373
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    iget-object v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v8, :cond_a

    .line 375
    :try_start_3
    iget v10, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    div-int/2addr v10, v6

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v10, v0}, Lorg/telegram/messenger/utils/BitmapsCache;->getFrame(ILandroid/graphics/Bitmap;)I

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 376
    :try_start_4
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache;->needGenCache()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetallowDrawFramesWhileCacheGenerating(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v10, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    cmp-long v0, v10, v3

    if-eqz v0, :cond_b

    .line 377
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v10, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    .line 378
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-wide v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move v8, v9

    .line 381
    :goto_5
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 384
    :cond_a
    iget v12, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    iget-object v13, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v14, v0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v15, v0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v16

    const/16 v17, 0x1

    invoke-static/range {v10 .. v17}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    move-result v8

    .line 386
    :cond_b
    :goto_6
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    const/4 v10, 0x3

    const/4 v11, -0x1

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache;->needGenCache()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 387
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetgenCacheSend(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 388
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fputgenCacheSend(Lorg/telegram/ui/Components/RLottieDrawable;Z)V

    .line 389
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v8, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v8}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetuiRunnableGenerateCache(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    :cond_c
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetallowDrawFramesWhileCacheGenerating(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 392
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v12, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    cmp-long v0, v12, v3

    if-nez v0, :cond_d

    .line 393
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iget-object v8, v8, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v8, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v13, v8, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iget-object v14, v13, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->json:Ljava/lang/String;

    move-object v15, v14

    iget v14, v8, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v8, v8, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    move-wide/from16 v21, v3

    new-array v3, v10, [I

    iget-object v4, v13, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->colorReplacement:[I

    iget v13, v13, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->fitzModifier:I

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v20, v13

    move-object v13, v15

    move v15, v8

    invoke-static/range {v12 .. v20}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    goto :goto_7

    :cond_d
    move-wide/from16 v21, v3

    .line 395
    :goto_7
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v12, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v14, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    iget-object v15, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v4, v0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-static/range {v12 .. v19}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    move-result v8

    goto :goto_8

    :cond_e
    move-wide/from16 v21, v3

    move v8, v11

    goto :goto_8

    :cond_f
    move-wide/from16 v21, v3

    :goto_8
    if-ne v8, v11, :cond_12

    .line 401
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    if-eqz v2, :cond_10

    iget-object v2, v2, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->file:Ljava/io/File;

    if-eqz v2, :cond_10

    .line 403
    iget-object v3, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->lastFile:Ljava/io/File;

    if-eq v2, v3, :cond_10

    const/16 v3, 0xa

    .line 404
    iput v3, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->tries:I

    .line 405
    iput-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->lastFile:Ljava/io/File;

    .line 409
    :cond_10
    iget v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->tries:I

    if-lez v2, :cond_11

    sub-int/2addr v2, v7

    .line 410
    iput v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->tries:I

    .line 411
    sget-object v2, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    :cond_11
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_24

    .line 414
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_c

    .line 419
    :cond_12
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iput-object v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 421
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    if-ne v3, v7, :cond_16

    .line 422
    iget v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    add-int v4, v3, v6

    iget v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    if-ne v7, v11, :cond_13

    iget-object v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v7, v7, v9

    :cond_13
    if-ge v4, v7, :cond_14

    add-int/2addr v3, v6

    .line 423
    iput v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    goto/16 :goto_b

    .line 425
    :cond_14
    iput v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 426
    iput-boolean v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 427
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v0, v3, v21

    if-eqz v0, :cond_15

    .line 428
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iput v5, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    .line 430
    :cond_15
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetresetVibrationAfterRestart(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 431
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fputvibrationPattern(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/util/HashMap;)V

    .line 432
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fputresetVibrationAfterRestart(Lorg/telegram/ui/Components/RLottieDrawable;Z)V

    goto/16 :goto_b

    :cond_16
    if-ne v3, v5, :cond_18

    .line 436
    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    add-int v3, v2, v6

    iget v4, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondFramesCount:I

    if-ge v3, v4, :cond_17

    add-int/2addr v2, v6

    .line 437
    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    goto/16 :goto_b

    .line 439
    :cond_17
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 440
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    goto/16 :goto_b

    .line 443
    :cond_18
    iget v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    if-ltz v3, :cond_1c

    iget-boolean v4, v0, Lorg/telegram/ui/Components/RLottieDrawable;->playInDirectionOfCustomEndFrame:Z

    if-eqz v4, :cond_1c

    .line 444
    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    if-le v2, v3, :cond_1a

    sub-int v4, v2, v6

    if-lt v4, v3, :cond_19

    sub-int/2addr v2, v6

    .line 446
    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 447
    iput-boolean v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    goto/16 :goto_b

    .line 449
    :cond_19
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 450
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$mcheckDispatchOnAnimationEnd(Lorg/telegram/ui/Components/RLottieDrawable;)V

    goto/16 :goto_b

    :cond_1a
    add-int v4, v2, v6

    if-ge v4, v3, :cond_1b

    add-int/2addr v2, v6

    .line 454
    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 455
    iput-boolean v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    goto/16 :goto_b

    .line 457
    :cond_1b
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 458
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$mcheckDispatchOnAnimationEnd(Lorg/telegram/ui/Components/RLottieDrawable;)V

    goto/16 :goto_b

    .line 462
    :cond_1c
    iget v4, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    add-int v8, v4, v6

    if-ltz v3, :cond_1d

    goto :goto_9

    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v3, v3, v9

    :goto_9
    if-ge v8, v3, :cond_1f

    .line 463
    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    if-ne v2, v10, :cond_1e

    .line 464
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 465
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    goto :goto_b

    :cond_1e
    add-int/2addr v4, v6

    .line 467
    iput v4, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 468
    iput-boolean v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    goto :goto_b

    .line 470
    :cond_1f
    iget v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    if-ne v3, v7, :cond_21

    .line 471
    iput v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 472
    iput-boolean v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 473
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetresetVibrationAfterRestart(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 474
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fputvibrationPattern(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/util/HashMap;)V

    .line 475
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fputresetVibrationAfterRestart(Lorg/telegram/ui/Components/RLottieDrawable;Z)V

    .line 477
    :cond_20
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    if-lez v2, :cond_23

    sub-int/2addr v2, v7

    .line 478
    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    goto :goto_b

    :cond_21
    if-ne v3, v5, :cond_22

    .line 481
    iput v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 482
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 483
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    add-int/2addr v3, v7

    iput v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    .line 484
    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetresetVibrationAfterRestart(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 485
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fputvibrationPattern(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/util/HashMap;)V

    .line 486
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fputresetVibrationAfterRestart(Lorg/telegram/ui/Components/RLottieDrawable;Z)V

    goto :goto_b

    .line 489
    :cond_22
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 490
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$mcheckDispatchOnAnimationEnd(Lorg/telegram/ui/Components/RLottieDrawable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_b

    .line 495
    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 498
    :cond_23
    :goto_b
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_24

    .line 500
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_24
    :goto_c
    return-void

    .line 330
    :cond_25
    :goto_d
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_26

    .line 331
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 333
    :cond_26
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
