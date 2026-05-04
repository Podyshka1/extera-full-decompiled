.class Lorg/telegram/ui/Cells/ChatMessageCell$7;
.super Lorg/telegram/ui/Components/TranscribeButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;->drawContent(Landroid/graphics/Canvas;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/SeekBarWaveform;)V
    .locals 0

    .line 13879
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$7;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/TranscribeButton;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/SeekBarWaveform;)V

    return-void
.end method


# virtual methods
.method public drawGradientBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 5

    .line 13883
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$7;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z

    move-result v0

    const-string v1, "paintChatActionBackground"

    if-eqz v0, :cond_0

    .line 13884
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$7;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    .line 13886
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$7;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const-string v2, "paintChatTimeBackground"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    .line 13888
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v3, v2

    mul-float/2addr v3, p3

    float-to-int v3, v3

    .line 13889
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13891
    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$7;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->applyServiceShaderMatrix()V

    .line 13892
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 13893
    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$7;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$7;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasGradientService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13894
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 13895
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v4, v1

    mul-float/2addr v4, p3

    float-to-int p3, v4

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13896
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 13897
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13899
    :cond_1
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected onOpen()V
    .locals 2

    .line 13904
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$7;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fputwasTranscriptionOpen(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    return-void
.end method
