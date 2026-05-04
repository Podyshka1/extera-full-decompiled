.class Lorg/telegram/ui/Cells/TextCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/TextCell;->setValueSticker(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/TextCell;

.field final synthetic val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/TextCell;Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 781
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextCell$1;->this$0:Lorg/telegram/ui/Cells/TextCell;

    iput-object p2, p0, Lorg/telegram/ui/Cells/TextCell$1;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 784
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell$1;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 789
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell$1;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method
