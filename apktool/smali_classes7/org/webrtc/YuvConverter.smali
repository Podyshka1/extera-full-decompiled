.class public Lorg/webrtc/YuvConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/YuvConverter$ShaderCallbacks;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n"


# instance fields
.field private final drawer:Lorg/webrtc/GlGenericDrawer;

.field private final i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

.field private final shaderCallbacks:Lorg/webrtc/YuvConverter$ShaderCallbacks;

.field private final threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

.field private final videoFrameDrawer:Lorg/webrtc/VideoFrameDrawer;


# direct methods
.method public static synthetic $r8$lambda$9fmNeaph03WHym_PhWvLEa_Kzro(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 237
    invoke-static {p0}, Lorg/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 118
    new-instance v0, Lorg/webrtc/VideoFrameDrawer;

    invoke-direct {v0}, Lorg/webrtc/VideoFrameDrawer;-><init>()V

    invoke-direct {p0, v0}, Lorg/webrtc/YuvConverter;-><init>(Lorg/webrtc/VideoFrameDrawer;)V

    return-void
.end method

.method public constructor <init>(Lorg/webrtc/VideoFrameDrawer;)V
    .locals 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/webrtc/YuvConverter;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 108
    new-instance v1, Lorg/webrtc/GlTextureFrameBuffer;

    const/16 v2, 0x1908

    invoke-direct {v1, v2}, Lorg/webrtc/GlTextureFrameBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/webrtc/YuvConverter;->i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

    .line 110
    new-instance v1, Lorg/webrtc/YuvConverter$ShaderCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/webrtc/YuvConverter$ShaderCallbacks;-><init>(Lorg/webrtc/YuvConverter-IA;)V

    iput-object v1, p0, Lorg/webrtc/YuvConverter;->shaderCallbacks:Lorg/webrtc/YuvConverter$ShaderCallbacks;

    .line 111
    new-instance v2, Lorg/webrtc/GlGenericDrawer;

    const-string v3, "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n"

    invoke-direct {v2, v3, v1}, Lorg/webrtc/GlGenericDrawer;-><init>(Ljava/lang/String;Lorg/webrtc/GlGenericDrawer$ShaderCallbacks;)V

    iput-object v2, p0, Lorg/webrtc/YuvConverter;->drawer:Lorg/webrtc/GlGenericDrawer;

    .line 122
    iput-object p1, p0, Lorg/webrtc/YuvConverter;->videoFrameDrawer:Lorg/webrtc/VideoFrameDrawer;

    .line 123
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    return-void
.end method


# virtual methods
.method public convert(Lorg/webrtc/VideoFrame$TextureBuffer;)Lorg/webrtc/VideoFrame$I420Buffer;
    .locals 18

    move-object/from16 v1, p0

    .line 128
    iget-object v0, v1, Lorg/webrtc/YuvConverter;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 130
    iget-object v0, v1, Lorg/webrtc/YuvConverter;->videoFrameDrawer:Lorg/webrtc/VideoFrameDrawer;

    .line 131
    invoke-interface/range {p1 .. p1}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v3

    move-object/from16 v4, p1

    .line 130
    invoke-virtual {v0, v4, v2, v3}, Lorg/webrtc/VideoFrameDrawer;->prepareBufferForViewportSize(Lorg/webrtc/VideoFrame$Buffer;II)Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/webrtc/VideoFrame$TextureBuffer;

    .line 161
    invoke-interface {v3}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v5

    .line 162
    invoke-interface {v3}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v6

    add-int/lit8 v0, v5, 0x7

    .line 163
    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v14, v0, 0x8

    add-int/lit8 v0, v6, 0x1

    .line 164
    div-int/lit8 v15, v0, 0x2

    add-int v0, v6, v15

    mul-int v2, v14, v0

    .line 167
    invoke-static {v2}, Lorg/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 170
    div-int/lit8 v11, v14, 0x4

    .line 173
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f000000    # 0.5f

    .line 174
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    .line 175
    invoke-virtual {v4, v2, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/high16 v2, -0x41000000    # -0.5f

    .line 176
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/4 v2, 0x0

    .line 179
    :try_start_0
    iget-object v7, v1, Lorg/webrtc/YuvConverter;->i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v7, v11, v0}, Lorg/webrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 182
    iget-object v0, v1, Lorg/webrtc/YuvConverter;->i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lorg/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v0

    const v7, 0x8d40

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 183
    const-string v0, "glBindFramebuffer"

    invoke-static {v0}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 186
    iget-object v0, v1, Lorg/webrtc/YuvConverter;->shaderCallbacks:Lorg/webrtc/YuvConverter$ShaderCallbacks;

    invoke-virtual {v0}, Lorg/webrtc/YuvConverter$ShaderCallbacks;->setPlaneY()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move v8, v2

    .line 187
    :try_start_1
    iget-object v2, v1, Lorg/webrtc/YuvConverter;->drawer:Lorg/webrtc/GlGenericDrawer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    move v0, v7

    move v7, v5

    move v12, v8

    move v8, v6

    move/from16 v17, v12

    move v12, v6

    move/from16 p1, v14

    move/from16 v14, v17

    :try_start_2
    invoke-static/range {v2 .. v13}, Lorg/webrtc/VideoFrameDrawer;->drawTexture(Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIIIIIZ)V

    move/from16 v17, v11

    .line 192
    iget-object v2, v1, Lorg/webrtc/YuvConverter;->shaderCallbacks:Lorg/webrtc/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lorg/webrtc/YuvConverter$ShaderCallbacks;->setPlaneU()V

    .line 193
    iget-object v2, v1, Lorg/webrtc/YuvConverter;->drawer:Lorg/webrtc/GlGenericDrawer;

    div-int/lit8 v11, v17, 0x2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v13, 0x0

    const/4 v9, 0x0

    move v7, v5

    move v8, v6

    move v10, v6

    move v12, v15

    :try_start_3
    invoke-static/range {v2 .. v13}, Lorg/webrtc/VideoFrameDrawer;->drawTexture(Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIIIIIZ)V

    .line 198
    iget-object v2, v1, Lorg/webrtc/YuvConverter;->shaderCallbacks:Lorg/webrtc/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lorg/webrtc/YuvConverter$ShaderCallbacks;->setPlaneV()V

    .line 199
    iget-object v2, v1, Lorg/webrtc/YuvConverter;->drawer:Lorg/webrtc/GlGenericDrawer;

    div-int/lit8 v9, v17, 0x2

    div-int/lit8 v11, v17, 0x2

    const/4 v13, 0x0

    move v7, v5

    move v8, v6

    move v10, v6

    invoke-static/range {v2 .. v13}, Lorg/webrtc/VideoFrameDrawer;->drawTexture(Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIIIIIZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v2, v12

    .line 203
    :try_start_4
    iget-object v4, v1, Lorg/webrtc/YuvConverter;->i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v4}, Lorg/webrtc/GlTextureFrameBuffer;->getWidth()I

    move-result v9

    iget-object v4, v1, Lorg/webrtc/YuvConverter;->i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v4}, Lorg/webrtc/GlTextureFrameBuffer;->getHeight()I

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v13, v16

    :try_start_5
    invoke-static/range {v7 .. v13}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 206
    const-string v4, "YuvConverter.convert"

    invoke-static {v4}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 209
    invoke-static {v0, v14}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    move-object/from16 v13, v16

    goto :goto_1

    :catch_2
    move-exception v0

    move v2, v12

    goto :goto_0

    :catch_3
    move-exception v0

    move v2, v15

    goto :goto_0

    :catch_4
    move-exception v0

    move/from16 p1, v14

    move v2, v15

    move-object/from16 v13, v16

    move v14, v8

    goto :goto_1

    :catch_5
    move-exception v0

    move/from16 p1, v14

    move-object/from16 v13, v16

    move v14, v2

    move v2, v15

    .line 211
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    mul-int v0, p1, v6

    .line 218
    div-int/lit8 v4, p1, 0x2

    add-int v7, v0, v4

    .line 220
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move v14, v4

    move v4, v5

    move v5, v6

    .line 222
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 224
    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v15, v2, -0x1

    mul-int v2, p1, v15

    add-int/2addr v2, v14

    add-int/2addr v0, v2

    .line 227
    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 228
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 230
    invoke-virtual {v13, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v7, v2

    .line 231
    invoke-virtual {v13, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 232
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 234
    invoke-interface {v3}, Lorg/webrtc/VideoFrame$Buffer;->release()V

    .line 236
    new-instance v12, Lorg/webrtc/YuvConverter$$ExternalSyntheticLambda0;

    invoke-direct {v12, v13}, Lorg/webrtc/YuvConverter$$ExternalSyntheticLambda0;-><init>(Ljava/nio/ByteBuffer;)V

    move/from16 v9, p1

    move/from16 v11, p1

    move/from16 v7, p1

    invoke-static/range {v4 .. v12}, Lorg/webrtc/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lorg/webrtc/JavaI420Buffer;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/webrtc/YuvConverter;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 242
    iget-object v0, p0, Lorg/webrtc/YuvConverter;->drawer:Lorg/webrtc/GlGenericDrawer;

    invoke-virtual {v0}, Lorg/webrtc/GlGenericDrawer;->release()V

    .line 243
    iget-object v0, p0, Lorg/webrtc/YuvConverter;->i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lorg/webrtc/GlTextureFrameBuffer;->release()V

    .line 244
    iget-object v0, p0, Lorg/webrtc/YuvConverter;->videoFrameDrawer:Lorg/webrtc/VideoFrameDrawer;

    invoke-virtual {v0}, Lorg/webrtc/VideoFrameDrawer;->release()V

    .line 246
    iget-object v0, p0, Lorg/webrtc/YuvConverter;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    return-void
.end method
