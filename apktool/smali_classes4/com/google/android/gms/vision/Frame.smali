.class public Lcom/google/android/gms/vision/Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/Frame$zza;,
        Lcom/google/android/gms/vision/Frame$Metadata;,
        Lcom/google/android/gms/vision/Frame$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/vision/Frame$Metadata;

.field private zzb:Ljava/nio/ByteBuffer;

.field private zzd:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/google/android/gms/vision/Frame$Metadata;

    invoke-direct {v0}, Lcom/google/android/gms/vision/Frame$Metadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/Frame;->zza:Lcom/google/android/gms/vision/Frame$Metadata;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/vision/Frame;->zzb:Ljava/nio/ByteBuffer;

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/vision/Frame;->zzd:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/vision/zzb;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/vision/Frame;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/vision/Frame;->zzd:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/Frame;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/gms/vision/Frame;->zzb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/Frame;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/vision/Frame;->zzb:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/vision/Frame;)Landroid/graphics/Bitmap;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/android/gms/vision/Frame;->zzd:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/vision/Frame;)Lcom/google/android/gms/vision/Frame$zza;
    .locals 0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->zzd:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGrayscaleImageData()Ljava/nio/ByteBuffer;
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->zzd:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->zzd:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v0, v4, v8

    .line 9
    new-array v2, v0, [I

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/vision/Frame;->zzd:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 11
    new-array v1, v0, [B

    :goto_0
    if-ge v3, v0, :cond_1

    .line 13
    aget v4, v2, v3

    .line 14
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e991687    # 0.299f

    mul-float/2addr v4, v5

    aget v5, v2, v3

    .line 15
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f1645a2    # 0.587f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, v2, v3

    .line 16
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3de978d5    # 0.114f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->zzb:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame;->zza:Lcom/google/android/gms/vision/Frame$Metadata;

    return-object v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
