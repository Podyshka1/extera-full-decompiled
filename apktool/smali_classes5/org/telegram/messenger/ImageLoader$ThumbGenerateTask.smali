.class Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbGenerateTask"
.end annotation


# instance fields
.field private info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

.field private mediaType:I

.field private originalPath:Ljava/io/File;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method public static synthetic $r8$lambda$loz4IIPCiFJ8XLLrCL4xOIfAL-A(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;Ljava/lang/String;Ljava/util/ArrayList;Landroid/graphics/drawable/BitmapDrawable;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->lambda$run$1(Ljava/lang/String;Ljava/util/ArrayList;Landroid/graphics/drawable/BitmapDrawable;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p43qv6yMsK1lo3VmxSxq8oG3Ayg(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->lambda$removeTask$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput p2, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->mediaType:I

    .line 745
    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    .line 746
    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    return-void
.end method

.method private synthetic lambda$removeTask$0(Ljava/lang/String;)V
    .locals 1

    .line 754
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetthumbGenerateTasks(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$run$1(Ljava/lang/String;Ljava/util/ArrayList;Landroid/graphics/drawable/BitmapDrawable;Ljava/util/ArrayList;)V
    .locals 6

    .line 814
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    .line 817
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetfilter(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetfilter(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v2, p1

    const/4 p1, 0x0

    .line 821
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 822
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageReceiver;

    .line 823
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move-object v1, p3

    .line 826
    const-string p1, "nocache"

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 827
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetmemCache(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private removeTask()V
    .locals 3

    .line 750
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    if-nez v0, :cond_0

    return-void

    .line 753
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetparentDocument(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 754
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetimageLoadQueue(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 760
    const-string v0, ".jpg"

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    if-nez v1, :cond_0

    .line 761
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 764
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "q_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetparentDocument(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetparentDocument(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 765
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_7

    .line 770
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetbig(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_2
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/2addr v3, v2

    const/16 v2, 0xb4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 772
    :goto_0
    iget v3, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->mediaType:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_3

    .line 773
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v3, v2

    invoke-static {v0, v7, v3, v3, v4}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    :cond_3
    const/4 v8, 0x2

    if-ne v3, v8, :cond_5

    .line 775
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetbig(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v8, v5

    :goto_1
    invoke-static {v0, v8}, Lorg/telegram/messenger/SendMessagesHelper;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    :cond_5
    const/4 v9, 0x3

    if-ne v3, v9, :cond_9

    .line 777
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 778
    const-string v9, "mp4"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 779
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetbig(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v8, v5

    :goto_2
    invoke-static {v0, v8}, Lorg/telegram/messenger/SendMessagesHelper;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    .line 780
    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ".jpeg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ".png"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ".gif"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    int-to-float v0, v2

    .line 781
    invoke-static {v3, v7, v0, v0, v4}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_9
    :goto_3
    if-nez v7, :cond_a

    .line 785
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    return-void

    .line 789
    :cond_a
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 790
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eqz v0, :cond_e

    if-nez v3, :cond_b

    goto :goto_6

    :cond_b
    int-to-float v0, v0

    int-to-float v2, v2

    div-float v4, v0, v2

    int-to-float v3, v3

    div-float v2, v3, v2

    .line 795
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_c

    div-float/2addr v0, v2

    float-to-int v0, v0

    div-float/2addr v3, v2

    float-to-int v2, v3

    .line 797
    invoke-static {v7, v0, v2, v5}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v7, :cond_c

    .line 799
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    move-object v7, v0

    .line 803
    :cond_c
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 804
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetbig(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x53

    goto :goto_4

    :cond_d
    const/16 v2, 0x3c

    :goto_4
    invoke-virtual {v7, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 808
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 810
    :goto_5
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 811
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetimageReceiverArray(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 812
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->info:Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetimageReceiverGuidsArray(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 813
    new-instance v4, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$$ExternalSyntheticLambda0;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;Ljava/lang/String;Ljava/util/ArrayList;Landroid/graphics/drawable/BitmapDrawable;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 792
    :cond_e
    :goto_6
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    return-void

    .line 767
    :cond_f
    :goto_7
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 830
    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 831
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    :goto_9
    return-void
.end method
