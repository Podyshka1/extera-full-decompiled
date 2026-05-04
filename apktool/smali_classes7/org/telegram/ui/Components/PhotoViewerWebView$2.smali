.class Lorg/telegram/ui/Components/PhotoViewerWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerWebView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerWebView;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$2;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    const/16 v0, 0x32

    .line 296
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
