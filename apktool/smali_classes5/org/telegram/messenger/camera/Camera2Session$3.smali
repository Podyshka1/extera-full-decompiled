.class Lorg/telegram/messenger/camera/Camera2Session$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/Camera2Session;->takePicture(Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/Camera2Session;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$orientation:I

.field final synthetic val$whenDone:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public static synthetic $r8$lambda$C8GruD4YcNmICIAfGZxauIzKYfU(Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 556
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/camera/Camera2Session;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 529
    iput-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session$3;->this$0:Lorg/telegram/messenger/camera/Camera2Session;

    iput-object p2, p0, Lorg/telegram/messenger/camera/Camera2Session$3;->val$file:Ljava/io/File;

    iput-object p3, p0, Lorg/telegram/messenger/camera/Camera2Session$3;->val$whenDone:Lorg/telegram/messenger/Utilities$Callback;

    iput p4, p0, Lorg/telegram/messenger/camera/Camera2Session$3;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4

    .line 532
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    .line 533
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 535
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 539
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lorg/telegram/messenger/camera/Camera2Session$3;->val$file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 540
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 547
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 549
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 542
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 544
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    if-eqz v2, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session$3;->val$whenDone:Lorg/telegram/messenger/Utilities$Callback;

    iget v0, p0, Lorg/telegram/messenger/camera/Camera2Session$3;->val$orientation:I

    new-instance v1, Lorg/telegram/messenger/camera/Camera2Session$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lorg/telegram/messenger/camera/Camera2Session$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/Utilities$Callback;I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 544
    :goto_3
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    if-eqz v2, :cond_1

    .line 547
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 549
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 552
    :cond_1
    :goto_4
    throw v0
.end method
