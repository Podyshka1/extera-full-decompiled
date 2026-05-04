.class Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpoilerThread"
.end annotation


# instance fields
.field private currentBuffer:I

.field private deltaTimeHandle:I

.field private drawProgram:I

.field private egl:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private height:I

.field private final invalidate:Ljava/lang/Runnable;

.field private particlesCount:I

.field private particlesData:[I

.field private volatile paused:Z

.field private radius:F

.field private radiusHandle:I

.field private reset:Z

.field private resetHandle:I

.field private resize:Z

.field private final resizeLock:Ljava/lang/Object;

.field private volatile running:Z

.field private seedHandle:I

.field private sizeHandle:I

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private t:F

.field final synthetic this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

.field private timeHandle:I

.field private final timeScale:F

.field private width:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;Landroid/graphics/SurfaceTexture;IILjava/lang/Runnable;)V
    .locals 2

    .line 317
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 306
    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->paused:Z

    .line 311
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resizeLock:Ljava/lang/Object;

    const v1, 0x3f99999a    # 1.2f

    .line 315
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->radius:F

    .line 396
    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->reset:Z

    .line 398
    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->currentBuffer:I

    const p1, 0x3f266666    # 0.65f

    .line 518
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->timeScale:F

    .line 318
    iput-object p5, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->invalidate:Ljava/lang/Runnable;

    .line 319
    iput-object p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 320
    iput p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    .line 321
    iput p4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    .line 322
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount:I

    .line 323
    const-string p1, "SpoilerThread"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private checkGlErrors()V
    .locals 3

    .line 622
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spoiler gles error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkResize()V
    .locals 4

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resize:Z

    if-eqz v1, :cond_1

    .line 591
    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->sizeHandle:I

    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 592
    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 593
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount()I

    move-result v1

    .line 594
    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount:I

    if-le v1, v2, :cond_0

    const/4 v2, 0x1

    .line 595
    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->reset:Z

    .line 596
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->genParticlesData()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 598
    :cond_0
    :goto_0
    iput v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount:I

    .line 599
    iput-boolean v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resize:Z

    .line 601
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private die()V
    .locals 4

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 571
    :try_start_0
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 572
    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    .line 574
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    if-eqz v0, :cond_1

    .line 575
    :try_start_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 576
    :goto_1
    iput v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    .line 578
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_2

    .line 579
    :try_start_2
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 580
    :goto_2
    :try_start_3
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 581
    :goto_3
    :try_start_4
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 583
    :cond_2
    :goto_4
    :try_start_5
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 585
    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->checkGlErrors()V

    return-void
.end method

.method private drawFrame(F)V
    .locals 21

    move-object/from16 v0, p0

    .line 521
    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v4, 0x3059

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 522
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v3, v4, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 523
    iput-boolean v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    .line 528
    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->t:F

    const v3, 0x3f266666    # 0.65f

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->t:F

    const/high16 v4, 0x447a0000    # 1000.0f

    cmpl-float v1, v1, v4

    const/4 v4, 0x0

    if-lez v1, :cond_2

    .line 530
    iput v4, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->t:F

    :cond_2
    const/16 v1, 0x4000

    .line 533
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 534
    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    iget v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->currentBuffer:I

    aget v1, v1, v5

    const v5, 0x8892

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    .line 535
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 536
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v16, 0x18

    const/16 v17, 0x8

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    .line 537
    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 v1, 0x1

    .line 538
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v9, 0x18

    const/16 v10, 0x10

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x1406

    const/4 v8, 0x0

    .line 539
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 540
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v10, 0x18

    const/16 v11, 0x14

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/16 v8, 0x1406

    const/4 v9, 0x0

    .line 541
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 542
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 543
    iget-object v7, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    iget v8, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->currentBuffer:I

    rsub-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    const v8, 0x8c8e

    invoke-static {v8, v2, v7}, Landroid/opengl/GLES30;->glBindBufferBase(III)V

    const/16 v13, 0x18

    const/4 v14, 0x0

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    .line 544
    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 545
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v19, 0x18

    const/16 v20, 0x8

    const/4 v15, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x1406

    const/16 v18, 0x0

    .line 546
    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 547
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v11, 0x18

    const/16 v12, 0x10

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x1406

    const/4 v10, 0x0

    .line 548
    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 549
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v17, 0x18

    const/16 v18, 0x14

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/16 v15, 0x1406

    const/16 v16, 0x0

    .line 550
    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 551
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 552
    iget v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->timeHandle:I

    iget v6, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->t:F

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 553
    iget v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->deltaTimeHandle:I

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 554
    invoke-static {v2}, Landroid/opengl/GLES30;->glBeginTransformFeedback(I)V

    .line 555
    iget v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount:I

    invoke-static {v2, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 556
    invoke-static {}, Landroid/opengl/GLES30;->glEndTransformFeedback()V

    .line 558
    iget-boolean v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->reset:Z

    if-eqz v3, :cond_3

    .line 559
    iput-boolean v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->reset:Z

    .line 560
    iget v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resetHandle:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 562
    :cond_3
    iget v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->currentBuffer:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->currentBuffer:I

    .line 564
    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 566
    invoke-direct {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->checkGlErrors()V

    return-void
.end method

.method private genParticlesData()V
    .locals 6

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 606
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 609
    :cond_0
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    .line 610
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    :goto_0
    if-ge v1, v2, :cond_1

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    aget v0, v0, v1

    const v3, 0x8892

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 614
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount:I

    mul-int/lit8 v0, v0, 0x18

    const/4 v4, 0x0

    const v5, 0x88e8

    invoke-static {v3, v0, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->checkGlErrors()V

    return-void
.end method

.method private init()V
    .locals 9

    .line 402
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v1, 0x0

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 405
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v3, :cond_0

    .line 406
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :cond_0
    const/4 v3, 0x2

    .line 409
    new-array v3, v3, [I

    .line 410
    invoke-interface {v2, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :cond_1
    const/16 v0, 0xb

    .line 415
    new-array v4, v0, [I

    fill-array-data v4, :array_0

    const/4 v0, 0x1

    .line 423
    new-array v5, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 424
    new-array v7, v0, [I

    .line 425
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x1

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 426
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    .line 429
    :cond_2
    aget-object v2, v5, v1

    iput-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v3, 0x3098

    const/4 v4, 0x3

    const/16 v5, 0x3038

    .line 431
    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    .line 435
    iget-object v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v2, v6, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v2, :cond_3

    .line 437
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    .line 441
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v5, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v2, :cond_4

    .line 443
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    .line 447
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v2, v2, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 448
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    .line 452
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->genParticlesData()V

    const v2, 0x8b31

    .line 455
    invoke-static {v2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v2

    const v3, 0x8b30

    .line 456
    invoke-static {v3}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v3

    if-eqz v2, :cond_c

    if-nez v3, :cond_6

    goto/16 :goto_0

    .line 461
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$raw;->spoiler_vertex:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n// "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 462
    invoke-static {v2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 463
    new-array v0, v0, [I

    const v4, 0x8b81

    .line 464
    invoke-static {v2, v4, v0, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 465
    aget v6, v0, v1

    if-nez v6, :cond_7

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpoilerEffect2, compile vertex shader error: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 467
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 468
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    .line 471
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lorg/telegram/messenger/R$raw;->spoiler_fragment:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 472
    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 473
    invoke-static {v3, v4, v0, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 474
    aget v4, v0, v1

    if-nez v4, :cond_8

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpoilerEffect2, compile fragment shader error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 476
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 477
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    .line 480
    :cond_8
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    if-nez v4, :cond_9

    .line 482
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    .line 485
    :cond_9
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 486
    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 487
    const-string v2, "outTime"

    const-string v3, "outDuration"

    const-string v4, "outPosition"

    const-string v5, "outVelocity"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 488
    iget v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const v4, 0x8c8c

    invoke-static {v3, v2, v4}, Landroid/opengl/GLES30;->glTransformFeedbackVaryings(I[Ljava/lang/String;I)V

    .line 490
    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 491
    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 492
    aget v0, v0, v1

    if-nez v0, :cond_a

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpoilerEffect2, link draw program error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 494
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    .line 498
    :cond_a
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const-string v2, "reset"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resetHandle:I

    .line 499
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const-string v2, "time"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->timeHandle:I

    .line 500
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const-string v2, "deltaTime"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->deltaTimeHandle:I

    .line 501
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const-string v2, "size"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->sizeHandle:I

    .line 502
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const-string v2, "r"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->radiusHandle:I

    .line 503
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const-string v2, "seed"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->seedHandle:I

    .line 505
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0xbe2

    .line 506
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 507
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v0, 0x0

    .line 508
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 510
    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 511
    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->sizeHandle:I

    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 512
    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resetHandle:I

    iget-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->reset:Z

    if-eqz v2, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_b
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 513
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->radiusHandle:I

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->radius:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 514
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->seedHandle:I

    sget-object v1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void

    .line 458
    :cond_c
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x40
        0x3038
    .end array-data
.end method

.method private particlesCount()I
    .locals 3

    .line 327
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x48742400    # 250000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    const v1, 0x461c4000    # 10000.0f

    const/high16 v2, 0x43fa0000    # 500.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public halt()V
    .locals 1

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void
.end method

.method public pause(Z)V
    .locals 0

    .line 343
    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->paused:Z

    return-void
.end method

.method public run()V
    .locals 12

    .line 348
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->init()V

    .line 349
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 350
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    if-eqz v2, :cond_3

    .line 351
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-double v0, v0

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v4

    .line 355
    iget-object v6, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-static {v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->-$$Nest$fgetMIN_DELTA(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)D

    move-result-wide v6

    cmpg-double v6, v0, v6

    if-gez v6, :cond_0

    .line 356
    iget-object v6, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-static {v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->-$$Nest$fgetMIN_DELTA(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)D

    move-result-wide v6

    sub-double/2addr v6, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double v8, v6, v0

    double-to-long v8, v8

    long-to-double v10, v8

    div-double/2addr v10, v0

    sub-double/2addr v6, v10

    mul-double/2addr v6, v4

    double-to-int v0, v6

    .line 360
    :try_start_0
    invoke-static {v8, v9, v0}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-static {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->-$$Nest$fgetMIN_DELTA(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)D

    move-result-wide v0

    goto :goto_1

    .line 363
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->-$$Nest$fgetMAX_DELTA(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)D

    move-result-wide v4

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-static {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->-$$Nest$fgetMAX_DELTA(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)D

    move-result-wide v0

    .line 367
    :catch_1
    :cond_1
    :goto_1
    iget-boolean v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->paused:Z

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x3e8

    .line 369
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 373
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->checkResize()V

    double-to-float v0, v0

    .line 374
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawFrame(F)V

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->invalidate:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->invalidate:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move-wide v0, v2

    goto :goto_0

    .line 379
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->die()V

    return-void
.end method

.method public updateSize(II)V
    .locals 2

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resizeLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 332
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resize:Z

    .line 333
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    .line 334
    iput p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    .line 335
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
