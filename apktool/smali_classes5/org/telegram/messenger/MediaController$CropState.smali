.class public Lorg/telegram/messenger/MediaController$CropState;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropState"
.end annotation


# static fields
.field public static final constructor:I = 0x44a3abcd


# instance fields
.field public cropPh:F

.field public cropPw:F

.field public cropPx:F

.field public cropPy:F

.field public cropRotate:F

.field public cropScale:F

.field public freeform:Z

.field public height:I

.field public initied:Z

.field public lockedAspectRatio:F

.field public matrix:Landroid/graphics/Matrix;

.field public mirrored:Z

.field public orientation:I

.field public scale:F

.field public stateScale:F

.field public transformHeight:I

.field public transformRotation:I

.field public transformWidth:I

.field public useMatrix:Landroid/graphics/Matrix;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 330
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 335
    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    .line 337
    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    .line 338
    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 330
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController$CropState;->clone()Lorg/telegram/messenger/MediaController$CropState;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/telegram/messenger/MediaController$CropState;
    .locals 2

    .line 359
    new-instance v0, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    .line 361
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    .line 362
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    .line 363
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    .line 364
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    .line 365
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    .line 366
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    .line 367
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    .line 368
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    .line 369
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    .line 370
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    .line 372
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->stateScale:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->stateScale:F

    .line 373
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->scale:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->scale:F

    .line 374
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$CropState;->matrix:Landroid/graphics/Matrix;

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$CropState;->matrix:Landroid/graphics/Matrix;

    .line 375
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->width:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->width:I

    .line 376
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->height:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->height:I

    .line 377
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$CropState;->freeform:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaController$CropState;->freeform:Z

    .line 378
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->lockedAspectRatio:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->lockedAspectRatio:F

    .line 379
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->orientation:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->orientation:I

    .line 381
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$CropState;->initied:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaController$CropState;->initied:Z

    .line 382
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 387
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$CropState;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->stateScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->scale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->width:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->height:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$CropState;->freeform:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->lockedAspectRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 5

    .line 395
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    .line 396
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    .line 397
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    .line 398
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    .line 399
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    .line 400
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    .line 401
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    .line 402
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    .line 403
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    .line 404
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    .line 405
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->stateScale:F

    .line 406
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->scale:F

    const/16 v0, 0x9

    .line 407
    new-array v1, v0, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 409
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    :cond_0
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/MediaController$CropState;->matrix:Landroid/graphics/Matrix;

    .line 412
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 413
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/MediaController$CropState;->width:I

    .line 414
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/MediaController$CropState;->height:I

    .line 415
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController$CropState;->freeform:Z

    .line 416
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/MediaController$CropState;->lockedAspectRatio:F

    .line 417
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v3

    const v4, 0xaa23a61

    if-ne v3, v4, :cond_2

    :goto_1
    if-ge v2, v0, :cond_1

    .line 420
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 422
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    .line 423
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 425
    :cond_2
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$CropState;->initied:Z

    .line 426
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController$CropState;->orientation:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 5

    const v0, 0x44a3abcd

    .line 431
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 432
    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 433
    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 434
    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 435
    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 436
    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 437
    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 438
    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 439
    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 440
    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 441
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 442
    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->stateScale:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 443
    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->scale:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    const/16 v0, 0x9

    .line 444
    new-array v1, v0, [F

    .line 445
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$CropState;->matrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 446
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v4, 0x0

    .line 448
    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v2, v3

    :goto_2
    if-ge v2, v0, :cond_2

    .line 451
    aget v4, v1, v2

    invoke-interface {p1, v4}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 453
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/MediaController$CropState;->width:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 454
    iget v2, p0, Lorg/telegram/messenger/MediaController$CropState;->height:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 455
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController$CropState;->freeform:Z

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 456
    iget v2, p0, Lorg/telegram/messenger/MediaController$CropState;->lockedAspectRatio:F

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    .line 457
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_3

    const v0, 0x56730bcc

    .line 458
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    goto :goto_4

    :cond_3
    const v2, 0xaa23a61

    .line 460
    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 461
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    :goto_3
    if-ge v3, v0, :cond_4

    .line 463
    aget v2, v1, v3

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 466
    :cond_4
    :goto_4
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$CropState;->initied:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 467
    iget v0, p0, Lorg/telegram/messenger/MediaController$CropState;->orientation:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
