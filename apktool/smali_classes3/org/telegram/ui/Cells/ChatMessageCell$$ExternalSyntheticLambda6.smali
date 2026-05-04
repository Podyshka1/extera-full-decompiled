.class public final synthetic Lorg/telegram/ui/Cells/ChatMessageCell$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidateOutbounds()V

    return-void
.end method
