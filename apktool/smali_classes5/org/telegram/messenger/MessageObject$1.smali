.class Lorg/telegram/messenger/MessageObject$1;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessageObject;->getVoiceTranscription()Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 6934
    iput-object p1, p0, Lorg/telegram/messenger/MessageObject$1;->this$0:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 6937
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6938
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_timePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
