.class Lorg/telegram/messenger/ImageLoader$3;
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

    .line 2104
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$3;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 0

    .line 2107
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$3;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$msizeOfBitmapDrawable(Lorg/telegram/messenger/ImageLoader;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 0

    .line 2104
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader$3;->sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result p1

    return p1
.end method
