.class Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Lorg/telegram/messenger/Utilities$Callback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;Landroid/content/Context;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$2;->this$0:Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
