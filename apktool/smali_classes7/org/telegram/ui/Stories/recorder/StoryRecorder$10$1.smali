.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->captionLimitToast()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;)V
    .locals 0

    .line 2419
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$1;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 2427
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$1;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mopenPremium(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x0

    .line 2422
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
