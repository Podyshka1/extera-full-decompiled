.class Lorg/telegram/ui/PhotoViewer$18$1;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$18;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$18;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$18;)V
    .locals 0

    .line 5329
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$18$1;->this$1:Lorg/telegram/ui/PhotoViewer$18;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEditingSticker()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
