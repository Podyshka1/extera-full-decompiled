.class Lorg/telegram/ui/Stories/recorder/PaintView$26;
.super Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/PaintView;->createMessage(Ljava/util/ArrayList;ZZ)Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/PaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLjava/util/ArrayList;Lorg/telegram/ui/Components/BlurringShader$BlurManager;ZLorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V
    .locals 0

    .line 4683
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$26;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLjava/util/ArrayList;Lorg/telegram/ui/Components/BlurringShader$BlurManager;ZLorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V

    return-void
.end method


# virtual methods
.method public drawForBitmap()Z
    .locals 1

    .line 4686
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$26;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawForThemeToggle:Z

    return v0
.end method
