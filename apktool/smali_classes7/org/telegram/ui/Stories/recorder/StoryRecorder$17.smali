.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$17;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setReply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 4486
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$17;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/16 v0, 0x80

    .line 4489
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
