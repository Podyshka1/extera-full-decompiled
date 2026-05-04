.class Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->setButtonPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell$1;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell$1;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->-$$Nest$fgetparentView(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell$1;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->-$$Nest$fgetparentView(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell$1;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->-$$Nest$fgetparentView(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method
