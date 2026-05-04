.class Lorg/telegram/ui/Cells/ChatMessageCell$3;
.super Lorg/telegram/ui/Components/SeekBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;)V
    .locals 0

    .line 1821
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$3;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onTimestampUpdate(Lorg/telegram/ui/Components/URLSpanNoUnderline;)V
    .locals 1

    .line 1824
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$3;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedSpan(Landroid/text/style/CharacterStyle;)Z

    return-void
.end method
