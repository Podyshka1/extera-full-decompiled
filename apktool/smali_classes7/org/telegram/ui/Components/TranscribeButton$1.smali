.class Lorg/telegram/ui/Components/TranscribeButton$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TranscribeButton;->transcribePressed(Lorg/telegram/messenger/MessageObject;ZLorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton$1;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 756
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
