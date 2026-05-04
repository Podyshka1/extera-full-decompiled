.class Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;
.super Lorg/telegram/messenger/ImageReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->createImageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;


# direct methods
.method public static synthetic $r8$lambda$cRdmjdGzxQ0g_fL3Puv2GrEbsNE(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->-$$Nest$mupdateAttachState(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-direct {p0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 556
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->invalidate()V

    .line 557
    invoke-super {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    return-void
.end method

.method protected setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z
    .locals 1

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->invalidate()V

    .line 563
    invoke-super/range {p0 .. p5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    move-result p1

    move-object p2, p0

    .line 564
    iget-object p3, p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-boolean p3, p3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->preloading:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 565
    iget-object p3, p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 p4, 0x0

    iput-boolean p4, p3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->preloading:Z

    .line 566
    new-instance p4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1$$ExternalSyntheticLambda0;

    invoke-direct {p4, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return p1
.end method
