.class Lorg/telegram/ui/web/WebMetadataCache$2;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/WebMetadataCache;->retrieveFaviconAndSitename(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$checkDone:Lorg/telegram/messenger/Utilities$Callback;

.field final synthetic val$favicon:[Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>([Landroid/graphics/Bitmap;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lorg/telegram/ui/web/WebMetadataCache$2;->val$favicon:[Landroid/graphics/Bitmap;

    iput-object p2, p0, Lorg/telegram/ui/web/WebMetadataCache$2;->val$checkDone:Lorg/telegram/messenger/Utilities$Callback;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/WebMetadataCache$2;->val$favicon:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/web/WebMetadataCache$2;->val$favicon:[Landroid/graphics/Bitmap;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge p1, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 412
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/web/WebMetadataCache$2;->val$favicon:[Landroid/graphics/Bitmap;

    aput-object p2, p1, v0

    .line 413
    iget-object p1, p0, Lorg/telegram/ui/web/WebMetadataCache$2;->val$checkDone:Lorg/telegram/messenger/Utilities$Callback;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method
