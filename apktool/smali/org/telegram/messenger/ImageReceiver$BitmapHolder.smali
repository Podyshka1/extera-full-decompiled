.class public Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapHolder"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public drawable:Landroid/graphics/drawable/Drawable;

.field private key:Ljava/lang/String;

.field public orientation:I

.field private recycleOnRelease:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->recycleOnRelease:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 117
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    .line 118
    iput p3, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->orientation:I

    if-eqz p2, :cond_0

    .line 120
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->drawable:Landroid/graphics/drawable/Drawable;

    .line 126
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    .line 127
    iput p3, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->orientation:I

    if-eqz p2, :cond_0

    .line 129
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 5

    .line 155
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 156
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->recycleOnRelease:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    :cond_0
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 160
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->drawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 163
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result v0

    .line 164
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 169
    instance-of v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v2, :cond_3

    .line 170
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 171
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    goto :goto_0

    .line 172
    :cond_3
    instance-of v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_4

    .line 173
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 174
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    goto :goto_0

    .line 175
    :cond_4
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_5

    .line 176
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    :cond_5
    :goto_0
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    .line 183
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 184
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
