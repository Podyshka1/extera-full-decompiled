.class Lorg/telegram/ui/Cells/ChatMessageCell$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/VideoForwardDrawable$VideoForwardDrawableDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChatMessageCell$5;->onRewindStart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Cells/ChatMessageCell$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell$5;)V
    .locals 0

    .line 11282
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5$1;->this$1:Lorg/telegram/ui/Cells/ChatMessageCell$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 11290
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$5$1;->this$1:Lorg/telegram/ui/Cells/ChatMessageCell$5;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell$5;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method public onAnimationEnd()V
    .locals 0

    return-void
.end method
