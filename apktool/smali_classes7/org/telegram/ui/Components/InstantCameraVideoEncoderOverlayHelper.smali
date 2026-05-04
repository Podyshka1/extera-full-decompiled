.class public Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;,
        Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;,
        Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;
    }
.end annotation


# instance fields
.field private final attributeTextureBuffer:Ljava/nio/FloatBuffer;

.field private final attributeVertexBuffer:Ljava/nio/FloatBuffer;

.field private final glFrameBuffers:[I

.field private final glTextures:[I

.field private logoFrame:I

.field private final programRenderBlur:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;

.field private final programRenderMixed:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;

.field private final programRenderTexture:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

.field private final programRenderWatermark:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

.field private final videoHeight:I

.field private final videoWidth:I


# direct methods
.method static bridge synthetic -$$Nest$smcreateProgram(II)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->createProgram(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcreateShader(II)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->createShader(II)I

    move-result p0

    return p0
.end method

.method public constructor <init>(II)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 50
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    sget v3, Lorg/telegram/messenger/R$raw;->round_blur_stage_0_frag:I

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderTexture:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    .line 38
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    sget v3, Lorg/telegram/messenger/R$raw;->round_blur_stage_3_frag:I

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderWatermark:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    .line 39
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;

    invoke-direct {v2}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderBlur:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;

    .line 40
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;

    invoke-direct {v2}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderMixed:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;

    const/4 v2, 0x0

    .line 45
    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->logoFrame:I

    const/4 v3, 0x1

    .line 47
    new-array v4, v3, [I

    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glFrameBuffers:[I

    const/4 v4, 0x5

    .line 48
    new-array v5, v4, [I

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    .line 51
    iput v1, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    move/from16 v6, p2

    .line 52
    iput v6, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoHeight:I

    const/16 v6, 0xe8

    .line 54
    new-array v7, v6, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 55
    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->setTextureCords([FIFFFF)V

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v8, 0x8

    const/4 v10, 0x0

    .line 56
    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->setTextureCords([FIFFFF)V

    const/16 v6, 0x24

    .line 58
    new-array v8, v6, [F

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    .line 59
    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->setVertexCords([FIFFFF)V

    move-object v6, v8

    .line 61
    invoke-static {v4, v5, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    move v5, v2

    :goto_0
    const/16 v14, 0xde1

    if-ge v5, v4, :cond_a

    .line 63
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v8, v8, v5

    invoke-static {v14, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v8, 0x2600

    const/16 v9, 0x2601

    const/4 v10, 0x2

    if-ge v5, v10, :cond_0

    move v11, v9

    goto :goto_1

    :cond_0
    move v11, v8

    :goto_1
    const/16 v12, 0x2801

    .line 64
    invoke-static {v14, v12, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    if-ge v5, v10, :cond_1

    move v8, v9

    :cond_1
    const/16 v9, 0x2800

    .line 65
    invoke-static {v14, v9, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v8, 0x2802

    const v9, 0x812f

    .line 66
    invoke-static {v14, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v8, 0x2803

    .line 67
    invoke-static {v14, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 v8, 0x3

    const/high16 v9, 0x44c00000    # 1536.0f

    const/4 v10, 0x4

    if-ne v5, v10, :cond_5

    int-to-float v11, v1

    const v12, 0x3e4ccccd    # 0.2f

    mul-float/2addr v11, v12

    .line 70
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 v12, v1, 0x1c

    int-to-float v12, v12

    div-float/2addr v12, v9

    .line 71
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v24

    sub-int v9, v11, v24

    sub-int v9, v9, v24

    .line 74
    new-array v8, v8, [I

    .line 75
    sget v12, Lorg/telegram/messenger/R$raw;->plane_logo_plain:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v12

    const-string v4, "logo_plane"

    const/high16 p2, 0x40000000    # 2.0f

    const/4 v13, 0x0

    invoke-static {v12, v4, v8, v13}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide v16

    .line 76
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v11, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    mul-int/lit8 v4, v9, 0x8

    mul-int/lit8 v8, v9, 0x4

    .line 78
    sget-object v12, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v8, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 79
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move v12, v2

    const/high16 v25, -0x40800000    # -1.0f

    :goto_2
    const/16 v15, 0x8

    if-ge v12, v15, :cond_4

    move v15, v2

    :goto_3
    if-ge v15, v10, :cond_3

    mul-int/lit8 v18, v15, 0x8

    add-int v3, v18, v12

    const/16 v10, 0x1b

    if-lt v3, v10, :cond_2

    move v2, v9

    move/from16 v20, v11

    move v14, v12

    move-object v10, v13

    move-object/from16 v3, v19

    const/16 v26, 0x4

    move-object v13, v8

    goto :goto_4

    :cond_2
    int-to-float v10, v12

    const/high16 v20, 0x41000000    # 8.0f

    div-float v10, v10, v20

    int-to-float v2, v15

    const/high16 v21, 0x40800000    # 4.0f

    div-float v2, v2, v21

    add-int/lit8 v14, v12, 0x1

    int-to-float v14, v14

    div-float v14, v14, v20

    add-int/lit8 v13, v15, 0x1

    int-to-float v13, v13

    div-float v13, v13, v21

    mul-int/lit8 v20, v3, 0x8

    add-int/lit8 v20, v20, 0x10

    move/from16 v26, v10

    move v10, v2

    move v2, v9

    move/from16 v9, v26

    move/from16 v26, v13

    move-object v13, v8

    move/from16 v8, v20

    move/from16 v20, v11

    move v11, v14

    move v14, v12

    move/from16 v12, v26

    const/16 v26, 0x4

    .line 93
    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->setTextureCords([FIFFFF)V

    mul-int/lit8 v18, v3, 0x2

    .line 94
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v21, v20

    invoke-static/range {v16 .. v23}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    move-object/from16 v3, v19

    mul-int v9, v2, v14

    sub-int v9, v9, v24

    int-to-float v8, v9

    mul-int v9, v2, v15

    sub-int v9, v9, v24

    int-to-float v9, v9

    const/4 v10, 0x0

    .line 95
    invoke-virtual {v13, v3, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move v9, v2

    move-object/from16 v19, v3

    move-object v8, v13

    move v12, v14

    move/from16 v11, v20

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v14, 0xde1

    move-object v13, v10

    move/from16 v10, v26

    goto :goto_3

    :cond_3
    move v2, v9

    move/from16 v26, v10

    move/from16 v20, v11

    move v14, v12

    move-object v10, v13

    move-object/from16 v3, v19

    move-object v13, v8

    add-int/lit8 v12, v14, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v14, 0xde1

    move-object v13, v10

    move/from16 v10, v26

    goto/16 :goto_2

    :cond_4
    move v2, v9

    move-object/from16 v3, v19

    int-to-float v2, v2

    .line 99
    iget v8, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    int-to-float v8, v8

    div-float/2addr v2, v8

    mul-float v2, v2, p2

    add-float v11, v2, v25

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v9, 0x18

    const/high16 v10, -0x40800000    # -1.0f

    move v12, v11

    move-object v8, v6

    .line 100
    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->setVertexCords([FIFFFF)V

    const/16 v2, 0xde1

    const/4 v8, 0x0

    .line 102
    invoke-static {v2, v8, v4, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 104
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    invoke-static/range {v16 .. v17}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    move-object v8, v6

    goto :goto_6

    :cond_5
    const/high16 p2, 0x40000000    # 2.0f

    const/high16 v25, -0x40800000    # -1.0f

    if-ne v5, v8, :cond_6

    int-to-float v2, v1

    const/high16 v3, 0x43ba0000    # 372.0f

    mul-float/2addr v2, v3

    div-float/2addr v2, v9

    .line 108
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v2

    .line 109
    iget v4, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v3, v3, p2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v10, v4, v3

    add-float v11, v3, v25

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v9, 0xc

    move-object v8, v6

    .line 110
    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->setVertexCords([FIFFFF)V

    .line 112
    sget v3, Lorg/telegram/messenger/R$raw;->round_blur_overlay_text:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromRaw(I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    .line 114
    invoke-static {v3, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v6, 0xde1

    const/4 v9, 0x0

    .line 117
    invoke-static {v6, v9, v4, v9}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 119
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 121
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_6

    :cond_6
    move-object v8, v6

    const/16 v2, 0x30

    if-nez v5, :cond_7

    .line 128
    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    move v12, v3

    goto :goto_5

    :cond_7
    move v12, v2

    :goto_5
    if-nez v5, :cond_8

    .line 129
    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoHeight:I

    :cond_8
    move v13, v2

    const/16 v16, 0x1401

    const/16 v17, 0x0

    const/16 v9, 0xde1

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/4 v14, 0x0

    const/16 v15, 0x1908

    .line 124
    invoke-static/range {v9 .. v17}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object v6, v8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_a
    move v9, v2

    move-object v8, v6

    move v2, v14

    .line 137
    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 138
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glFrameBuffers:[I

    const/4 v4, 0x1

    invoke-static {v4, v1, v9}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const/16 v1, 0x90

    .line 140
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeVertexBuffer:Ljava/nio/FloatBuffer;

    .line 141
    invoke-virtual {v1, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v1, 0x3a0

    .line 143
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeTextureBuffer:Ljava/nio/FloatBuffer;

    .line 144
    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static createProgram(II)I
    .locals 2

    .line 359
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 360
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 361
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 362
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    .line 364
    new-array p0, p0, [I

    const p1, 0x8b82

    const/4 v1, 0x0

    .line 365
    invoke-static {v0, p1, p0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 366
    aget p0, p0, v1

    if-nez p0, :cond_0

    .line 367
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return v1

    :cond_0
    return v0
.end method

.method private static createShader(II)I
    .locals 3

    .line 338
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 343
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 344
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    .line 346
    new-array p1, p1, [I

    const v1, 0x8b81

    .line 347
    invoke-static {p0, v1, p1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 348
    aget p1, p1, v0

    if-nez p1, :cond_1

    .line 349
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlUtils: compile shader error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 351
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v0

    :cond_1
    return p0
.end method

.method private static setTextureCords([FIFFFF)V
    .locals 1

    .line 393
    aput p2, p0, p1

    add-int/lit8 v0, p1, 0x1

    .line 394
    aput p5, p0, v0

    add-int/lit8 v0, p1, 0x2

    .line 396
    aput p4, p0, v0

    add-int/lit8 v0, p1, 0x3

    .line 397
    aput p5, p0, v0

    add-int/lit8 p5, p1, 0x4

    .line 399
    aput p2, p0, p5

    add-int/lit8 p2, p1, 0x5

    .line 400
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x6

    .line 402
    aput p4, p0, p2

    add-int/lit8 p1, p1, 0x7

    .line 403
    aput p3, p0, p1

    return-void
.end method

.method private static setVertexCords([FIFFFF)V
    .locals 2

    .line 375
    aput p2, p0, p1

    add-int/lit8 v0, p1, 0x1

    .line 376
    aput p5, p0, v0

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 377
    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    .line 379
    aput p4, p0, v0

    add-int/lit8 v0, p1, 0x4

    .line 380
    aput p5, p0, v0

    add-int/lit8 p5, p1, 0x5

    .line 381
    aput v1, p0, p5

    add-int/lit8 p5, p1, 0x6

    .line 383
    aput p2, p0, p5

    add-int/lit8 p2, p1, 0x7

    .line 384
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x8

    .line 385
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x9

    .line 387
    aput p4, p0, p2

    add-int/lit8 p2, p1, 0xa

    .line 388
    aput p3, p0, p2

    add-int/lit8 p1, p1, 0xb

    .line 389
    aput v1, p0, p1

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 5

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glFrameBuffers:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v0, v0, v1

    const v3, 0x8ce0

    const/16 v4, 0xde1

    invoke-static {v2, v3, v4, v0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 150
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoHeight:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderTexture:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->destroy()V

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderBlur:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->destroy()V

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderMixed:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->destroy()V

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderWatermark:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->destroy()V

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, 0x1

    .line 288
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glFrameBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void
.end method

.method public render()V
    .locals 23

    move-object/from16 v0, p0

    const/16 v1, 0xbe2

    .line 154
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 157
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderTexture:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    .line 159
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const v5, 0x8d40

    const v6, 0x8ce0

    const/16 v7, 0xde1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v3, v8}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/16 v3, 0x30

    .line 160
    invoke-static {v8, v8, v3, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 162
    iget v9, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->program:I

    invoke-static {v9}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 163
    iget v10, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    const/4 v11, 0x3

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v14, 0xc

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 164
    iget v9, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v9}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 165
    iget v10, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    const/4 v11, 0x2

    const/16 v14, 0x8

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 166
    iget v9, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v9}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v9, 0x84c0

    .line 168
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 169
    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v10, v10, v8

    invoke-static {v7, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 171
    iget v10, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->uniformTextureHandle:I

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v10, 0x5

    const/4 v11, 0x4

    .line 173
    invoke-static {v10, v8, v11}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 175
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 176
    iget v12, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v12}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 177
    iget v2, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 178
    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    move v2, v8

    :goto_0
    const/4 v12, 0x2

    if-ge v2, v12, :cond_4

    .line 182
    iget-object v13, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderBlur:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;

    .line 184
    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    if-nez v2, :cond_0

    move v15, v12

    goto :goto_1

    :cond_0
    move v15, v4

    :goto_1
    aget v14, v14, v15

    invoke-static {v5, v6, v7, v14, v8}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 185
    invoke-static {v8, v8, v3, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 187
    iget v14, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->program:I

    invoke-static {v14}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 188
    iget v15, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v20

    const/16 v16, 0x3

    const/16 v17, 0x1406

    const/16 v18, 0x0

    const/16 v19, 0xc

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 189
    iget v14, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v14}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 190
    iget v15, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v20

    const/16 v16, 0x2

    const/16 v19, 0x8

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 191
    iget v14, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v14}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 193
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 194
    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    if-nez v2, :cond_1

    move v12, v4

    :cond_1
    aget v12, v14, v12

    invoke-static {v7, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 196
    iget v12, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->uniformTextureHandle:I

    invoke-static {v12, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 197
    iget v12, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;->uniformOffsetHandle:I

    const/4 v14, 0x0

    const v15, 0x3caaaaab

    move/from16 v16, v1

    if-nez v2, :cond_2

    move v1, v15

    goto :goto_2

    :cond_2
    move v1, v14

    :goto_2
    if-ne v2, v4, :cond_3

    move v14, v15

    :cond_3
    invoke-static {v12, v1, v14}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 199
    invoke-static {v10, v8, v11}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 201
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 202
    iget v1, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 203
    iget v1, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 204
    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_4
    move/from16 v16, v1

    .line 208
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderMixed:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;

    .line 210
    invoke-static {v5, v8}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 212
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v2, v2, v4

    invoke-static {v5, v6, v7, v2, v8}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 213
    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoHeight:I

    invoke-static {v8, v8, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 215
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->program:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 216
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v22

    const/16 v18, 0x3

    const/16 v19, 0x1406

    const/16 v20, 0x0

    const/16 v21, 0xc

    move/from16 v17, v2

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 217
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 218
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v22

    const/16 v18, 0x2

    const/16 v21, 0x8

    move/from16 v17, v2

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 219
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v2, 0x84c1

    .line 221
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 222
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v3, v3, v4

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 223
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 224
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v3, v3, v8

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 226
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->uniformTextureHandle:I

    invoke-static {v3, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 227
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;->uniformBlurredTextureHandle:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 228
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;->uniformHalfResolutionHandle:I

    iget v5, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v13, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoHeight:I

    int-to-float v13, v13

    div-float/2addr v13, v6

    invoke-static {v3, v5, v13}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 230
    invoke-static {v10, v8, v11}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 232
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 233
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 234
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 235
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 236
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 237
    iget v1, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 238
    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 242
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderWatermark:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    .line 244
    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 245
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->program:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 246
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    move v2, v8

    :goto_3
    if-ge v2, v12, :cond_6

    const/16 v3, 0x8

    if-nez v2, :cond_5

    .line 250
    iget v5, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v22

    const/16 v18, 0x3

    const/16 v19, 0x1406

    const/16 v20, 0x0

    const/16 v21, 0xc

    move/from16 v17, v5

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 251
    iget v5, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 252
    iget v5, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v22

    const/16 v18, 0x2

    const/16 v21, 0x8

    move/from16 v17, v5

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 253
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 255
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    const/4 v5, 0x3

    aget v3, v3, v5

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_4

    .line 257
    :cond_5
    iget v5, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->logoFrame:I

    rem-int/lit8 v6, v5, 0x1b

    add-int/2addr v5, v4

    .line 258
    iput v5, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->logoFrame:I

    .line 260
    iget v5, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v13, 0x18

    invoke-virtual {v9, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v22

    const/16 v18, 0x3

    const/16 v19, 0x1406

    const/16 v20, 0x0

    const/16 v21, 0xc

    move/from16 v17, v5

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 261
    iget v5, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 262
    iget v5, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x10

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v22

    const/16 v18, 0x2

    const/16 v21, 0x8

    move/from16 v17, v5

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 263
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 265
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v3, v3, v11

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 268
    :goto_4
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->uniformTextureHandle:I

    invoke-static {v3, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 269
    invoke-static {v10, v8, v11}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 271
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 272
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 273
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 276
    :cond_6
    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 277
    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method
