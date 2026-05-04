.class Lorg/telegram/ui/GroupCreateFinalActivity$7;
.super Lorg/telegram/ui/Components/RadialProgressView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateFinalActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateFinalActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$7;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    .line 574
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 575
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$7;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateFinalActivity;->-$$Nest$fgetavatarOverlay(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
