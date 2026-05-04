.class Lorg/telegram/ui/Components/MessagePreviewView$Page$2;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView$Page;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;Lorg/telegram/ui/Components/MessagePreviewView;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$2;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iput-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$2;->val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$2;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v1, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 295
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getNewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$2;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 287
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getNewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
