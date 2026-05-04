.class Lorg/telegram/messenger/ImageLoader$1;
.super Lorg/telegram/messenger/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/messenger/LruCache<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;I)V
    .locals 0

    .line 2060
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$1;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 2068
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$1;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetignoreRemoval(Lorg/telegram/messenger/ImageLoader;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$1;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetignoreRemoval(Lorg/telegram/messenger/ImageLoader;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2071
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$1;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetbitmapUseCounts(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 2072
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    .line 2073
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2074
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    .line 2075
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2076
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2077
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2060
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageLoader$1;->entryRemoved(ZLjava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 0

    .line 2063
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$1;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$msizeOfBitmapDrawable(Lorg/telegram/messenger/ImageLoader;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 0

    .line 2060
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader$1;->sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result p1

    return p1
.end method
